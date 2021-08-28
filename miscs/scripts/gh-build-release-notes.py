#!/usr/bin/python
# coding: utf-8 -*-
#
#
# Copyright 2020 Arista Networks AS-EMEA
#
# Licensed under the Apache License, Version 2.0 (the 'License');
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http: //www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an 'AS IS' BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

import argparse
import logging
import pprint
import requests
import sys


def parse_cli():
    # Argaparser to load information using CLI
    parser = argparse.ArgumentParser(
        description="Cloudvision Authentication stress script")
    parser.add_argument('-r', '--repository',
                        help='GH Repository like org/repo', type=str,
                        default='aristanetworks/ansible-avd')
    parser.add_argument('-m', '--milestone',
                        help='Milestone', type=str)
    parser.add_argument('-v', '--verbosity',
                        help='Verbose level (debug / info / warning / error / critical)',
                        type=str, default='info')
    options = parser.parse_args()

    return options


def gh_get_milestone_content(repository, milestone):
    url = "https://api.github.com/search/issues?q=milestone:{}+type:pr+repo:{}".format(milestone, repository)
    logging.info("Github API url is: %s", str(url))
    gh_result = requests.get(url)
    if gh_result.status_code == 200:
        return gh_result.json()
    return None


def is_labelled(pr, searched_label):
    for label in pr['labels']:
        if label['name'] == searched_label:
            return True
    return False


def parse_pr(milestone_prs, label):
    list_pr = list()
    for pr in milestone_prs:
        if is_labelled(pr, searched_label=label):
            logging.debug('Found one PR: %s', pr['title'])
            pr_summary = "PR: {} (#{})".format(pr['title'], str(pr['number']))
            list_pr.append(pr_summary)
    return list_pr


if __name__ == '__main__':
    pp = pprint.PrettyPrinter(indent=4)
    cli = parse_cli()

    # Logging configuration
    LEVELS = {'debug': logging.DEBUG,
              'info': logging.INFO,
              'warning': logging.WARNING,
              'error': logging.ERROR,
              'critical': logging.CRITICAL}
    LOGLEVEL = LEVELS.get(cli.verbosity, logging.NOTSET)
    logging.basicConfig(
        format='%(asctime)s - %(levelname)-8s - func: %(funcName)-12s - %(message)s',
        level=LOGLEVEL,
        datefmt='%Y-%m-%d %H:%M:%S')

    logging.info("Collecting information for milestone %s in repo %s", str(cli.milestone), str(cli.repository))

    milestone_content = gh_get_milestone_content(repository=cli.repository, milestone=cli.milestone)
    # logging.debug("%s", str(pp.pprint(milestone_content)))
    print("\n# Release Notes for {}".format(cli.milestone))
    print("\n## Fixed issues")
    for issue in parse_pr(milestone_prs=milestone_content['items'], label='type: bug'):
        print("- " + issue)
    print("\n## Enhancements")
    for issue in parse_pr(milestone_prs=milestone_content['items'], label='type: enhancement'):
        print("- " + issue)
    for issue in parse_pr(milestone_prs=milestone_content['items'], label='type: simple enhancement'):
        print("- " + issue)
    print("\n## Documentation updates")
    for issue in parse_pr(milestone_prs=milestone_content['items'], label='type: documentation'):
        print("- " + issue)
    sys.exit(0)
