#!/usr/bin/python
# coding: utf-8 -*-


import requests
import ssl
import argparse
import urllib3


if __name__ == '__main__':
    urllib3.disable_warnings()
    parser = argparse.ArgumentParser(description="Get token from CV server and save to a file")
    parser.add_argument('-s', '--server', required=True,
                        help="CloudVision server to connect to in <host>:<port> format")
    parser.add_argument('-u', '--user', required=True,
                        help="Username to connect to CV")
    parser.add_argument('-p', '--password', required=True,
                        help="Password to use to connect to CV")
    parser.add_argument('-o', '--output', default='cv_token.txt',
                        help='File to save token from CV')
    parser.add_argument('-c', '--crt', default='cvp.crt',
                        help='File to save CV SSL certificate')
    cli = parser.parse_args()

    r = requests.post('https://{}/cvpservice/login/authenticate.do'.format(cli.server),
                      auth=(cli.user, cli.password), verify=False)

    r.json()['sessionId']

    print("- Save user's token in {}".format(cli.output))
    with open(cli.output, "w") as f:
        f.write(r.json()['sessionId'])

    print("- Save server certificate in {}".format(cli.crt))
    with open(cli.crt, "w") as f:
        f.write(ssl.get_server_certificate((cli.server, 443)))
