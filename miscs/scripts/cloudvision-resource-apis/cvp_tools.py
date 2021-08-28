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

import six
import datetime
from google.protobuf.timestamp_pb2 import Timestamp
from cloudvision.Connector.grpc_client import GRPCClient, create_query
from jsonpath_rw import parse


class CvResourceClient():
    """
    CvResourceClient to query resource data from Cloudvision.

    Simple Py3 class to support methods to query data from Cloudvsion and
    provides results in a JSON structure.
    """
    def __init__(self, cvp_host, cvp_port='8443', token_file=None, ca=None):
        """
        __init__ Class constructor

        Instantiate CvResourceClient object with authentication information.

        Parameters
        ----------
        cvp_host : str
            CV IP address or hostname
        cvp_port : str, optional
            CV port to connect, by default '8443'
        token_file : str, optional
            Path to TOKEN to use for CV authentication, by default None
        ca : str, optional
            Path to CA or self-signed certificate to validate CV SSL, by default None
        """
        self.host = cvp_host
        self.port = str(cvp_port)
        self.apiserver = self.host + ":" + self.port
        self.ca = ca
        self.token = token_file
        # TODO: Build list of dataset and expose a getter

    def _build_query(self, query_user):
        """
        _build_query Enforce Query format and transform user inputs.

        Ensure Query is a list to be consumed by GRPC client. If user provides
        Query using format from CV like /path/to/resource, function tranform it
        to expected list.

        Parameters
        ----------
        query_user : str or list
            Resource path to validate

        Returns
        -------
        list
            formatted resource path in list
        """
        query_path = list()
        if isinstance(query_user, six.string_types):
            if query_user.startswith('/'):
                query_user = query_user[1:]
            query_path = query_user.split('/')
        else:
            query_path = query_user
        return query_path

    def _build_timers(self, days=0, hours=0, minutes=0):
        """
        _build_timers Compute time window to get stream informatio

        Parameters
        ----------
        days : int, optional
            Days from now, by default 0
        hours : int, optional
            Hours from now, by default 0
        minutes : int, optional
            Minutes from now, by default 0

        Returns
        -------
        time
            Time window to ask stream.
        """
        startDtime = datetime.datetime.now() - datetime.timedelta(days=days,
                                                                  hours=hours,
                                                                  minutes=minutes)
        start = Timestamp()
        start.FromDatetime(startDtime)  # type: ignore
        return start

    def _query_cv(self, query, dataset="analytics", start=None):
        """
        _query_cv Execute query on CV to get data.

        Parameters
        ----------
        query : list
            CV path to access resource
        dataset : str, optional
            Dataset to look for path, by default "analytics"
        start : time, optional
            Time period to get stream, by default None

        Returns
        -------
        dict
            JSON structure coming from CV.
        """
        query_path = self._build_query(query)
        query_cv = [
            create_query([(query_path, [])], dataset)
        ]
        if start is None:
            with GRPCClient(self.apiserver, token=self.token, ca=self.ca) as client:
                query_result = client.get(query_cv)
                for batch in query_result:
                    return batch
        else:
            with GRPCClient(self.apiserver, token=self.token, ca=self.ca) as client:
                query_result = client.get(query_cv, start=start)
                for batch in query_result:
                    return batch
        return None

    def _extract_json(self, full_json, json_path):
        """
        _extract_json Apply JSON path to get subset of a JSON

        Function to filter and get a subset of CV response based on JSONPATH
        and jsonpath-rw lib.

        Parameters
        ----------
        full_json : dict
            JSON to filter
        json_path : str
            JSONPATH to apply

        Returns
        -------
        dict
            Filtered JSON data.
        """
        jsonpath_expr = parse(json_path)
        json_clean = list()
        [json_clean.append(match.value)
         for match in jsonpath_expr.find(full_json)]
        return json_clean

    def query_state(self, query, dataset='analytics', json_path=None):
        query_path = self._build_query(query)
        json_data = self._query_cv(
            query=query_path, dataset=dataset)
        if json_path is not None:
            return self._extract_json(full_json=json_data, json_path=json_path)
        else:
            return json_data

    def query_events(self, query, dataset='analytics', days=0, hours=0, minutes=0, json_path=None):
        start = self._build_timers(days=days, hours=hours, minutes=minutes)
        query_path = self._build_query(query)
        json_data = self._query_cv(
            query=query_path, dataset=dataset, start=start)
        if json_path is not None:
            return self._extract_json(full_json=json_data, json_path=json_path)
        else:
            return json_data
