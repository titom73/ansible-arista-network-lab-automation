#!/usr/bin/python
# coding: utf-8 -*-
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

import sys
import os
from utils import pretty_print
from cvp_tools import CvResourceClient


# Path to user token saved with get-token.py script
USER_TOKEN = os.path.expanduser('cv_token.txt')
# CVP Selfsigned cert saved with get-token.py
CVP_CA = os.path.expanduser('cvp.crt')
# CV Server IP
CV_SERVER = '10.73.1.239'
# Device ID to monitor BGP session states. Get information from https://<CV_SERVER>/cv/settings/aeris-browser
DEVICE_ID = 'C640289DBCEDC187B1C0FF7217D05D5D'


if __name__ == '__main__':

    cvp = CvResourceClient(cvp_host=CV_SERVER,
                           cvp_port=8443,
                           token_file=USER_TOKEN,
                           ca=CVP_CA)

    # print("--------------------------------------------")
    # # Get device information from analytics dataset with path: /DatasetInfo/devices
    # # Display full result from CV without any filtering
    # cv_data = cvp.query_state(
    #     query='DatasetInfo/Devices', dataset="analytics")
    # pretty_print(cv_data)

    # print("--------------------------------------------")
    # # Get device information from analytics dataset with path: /DatasetInfo/devices
    # # Use a JSON path to filter only information we need
    # cv_data = cvp.query_state(
    #     query='DatasetInfo/Devices', dataset="analytics", json_path='notifications[*].*')
    # pretty_print(cv_data)

    # print("--------------------------------------------")
    # # Get device information from <DEVICE ID> dataset with path: /Smash/routing/bgp/bgpPeerInfoStatus/default/bgpPeerStatusEntry
    # # Data are filtered to only list Status information using JSONPATH
    # cv_query_bgp = ['Smash', 'routing', 'bgp', 'bgpPeerInfoStatus', 'default', 'bgpPeerStatusEntry']
    # cv_data = cvp.query_state(
    #     query=cv_query_bgp,
    #     dataset=DEVICE_ID,
    #     json_path='notifications[*].updates[*].*')
    # pretty_print(cv_data)

    # print("--------------------------------------------")
    # cvp_query_events = "events/activeEvents"
    # cv_data = cvp.query_events(
    #     query=cvp_query_events, minutes=5)
    # pretty_print(cv_data)

    # print("--------------------------------------------")
    # Get Active event for the last 5 minutes
    cvp_query_events = "events/activeEvents"
    cv_data = cvp.query_events(
        query=cvp_query_events, minutes=880, json_path='notifications[*].updates[*].*')
    pretty_print(cv_data)

    # print("--------------------------------------------")
    # # Get device information from analytics dataset with path: /Devices/<DEVICE ID>/versioned-data/interfaces/data/Ethernet1/rates
    # cv_query_counters = [
    #     "Devices",
    #     DEVICE_ID,
    #     "versioned-data",
    #     "interfaces",
    #     "data",
    #     'Ethernet1',
    #     "rates",
    # ]
    # cv_data = cvp.query_state(query=cv_query_counters)
    # pretty_print(cv_data)

    sys.exit(0)
