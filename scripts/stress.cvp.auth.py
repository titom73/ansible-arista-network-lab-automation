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


import re
import argparse
import logging
import pprint
import json
import requests
from cvprac.cvp_client import CvpClient
from cvprac.cvp_client_errors import CvpLoginError
from requests.packages.urllib3.exceptions import InsecureRequestWarning


def connect_test(hostname, username, password, protocol='https', port=443):
    client = CvpClient(log_level='CRITICAL')
    try:
        client.connect(nodes=[hostname], username=username,
                       password=password, connect_timeout=10, protocol=protocol, port=port)
        logging.info('  * connected to %s', hostname)
    except CvpLoginError as e:
        # If error, then, printout message and quit program
        # If server cannot be reached, then no need to go further
        logging.error('  ! can\'t connect to %s', hostname)
        error_message = re.search('(Request.+?) -', str(e).replace('\n', ' '))
        logging.error('  ! error message is: %s', str(
            error_message.group(1)))
    else:
        logging.info('  * disconnect from %s', hostname)
        client.post('/login/logout.do', None)


if __name__ == '__main__':
    requests.packages.urllib3.disable_warnings(InsecureRequestWarning)

    # Argaparser to load information using CLI
    PARSER = argparse.ArgumentParser(description="Cloudvision Authentication stress script")
    PARSER.add_argument('-u', '--username',
                        help='Username for CVP', type=str)
    PARSER.add_argument('-p', '--password',
                        help='Password for CVP', type=str)
    PARSER.add_argument('--host',
                        help='Address of CVP server',
                        type=str)
    PARSER.add_argument('-c', '--count',
                        help='Number of tries',
                        type=int, default=5)
    PARSER.add_argument('-d', '--debug_level',
                        help='Verbose level (debug / info / warning / error / critical)',
                        type=str, default='info')
    OPTIONS = PARSER.parse_args()

    # Logging configuration
    LEVELS = {'debug': logging.DEBUG,
              'info': logging.INFO,
              'warning': logging.WARNING,
              'error': logging.ERROR,
              'critical': logging.CRITICAL}
    LOGLEVEL = LEVELS.get(OPTIONS.debug_level, logging.NOTSET)
    logging.basicConfig(
        format='%(asctime)s - %(levelname)-8s - func: %(funcName)-12s - %(message)s',
        level=LOGLEVEL,
        datefmt='%Y-%m-%d %H:%M:%S')

    for attempt in range(0,OPTIONS.count):
        logging.info('Authentication attempt #%s', str(attempt+1))
        connect_test(hostname=OPTIONS.host, username=OPTIONS.username, password=OPTIONS.password)
