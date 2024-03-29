
# Validate State Report

**Table of Contents:**

- [Validate State Report](validate-state-report)
  - [Test Results Summary](#test-results-summary)
  - [Failed Test Results Summary](#failed-test-results-summary)
  - [All Test Results](#all-test-results)

## Test Results Summary

### Summary Totals

| Total Tests | Total Tests Passed | Total Tests Failed |
| ----------- | ------------------ | ------------------ |
| 499 | 445 | 54 |

### Summary Totals Devices Under Tests

| DUT | Total Tests | Tests Passed | Tests Failed | Categories Failed |
| --- | ----------- | ------------ | ------------ | ----------------- |
| DC1-BL1A |  48 | 44 | 4 | LLDP Topology |
| DC1-BL1B |  48 | 44 | 4 | LLDP Topology |
| DC1-L2LEAF1A |  8 | 6 | 2 | LLDP Topology |
| DC1-L2LEAF2A |  7 | 5 | 2 | LLDP Topology |
| DC1-LEAF1A |  51 | 46 | 5 | LLDP Topology |
| DC1-LEAF1B |  51 | 46 | 5 | LLDP Topology |
| DC1-LEAF2A |  51 | 46 | 5 | LLDP Topology |
| DC1-LEAF2B |  51 | 46 | 5 | LLDP Topology |
| DC1-LEAF3A |  41 | 38 | 3 | Interface State, LLDP Topology |
| DC1-LEAF4A |  41 | 38 | 3 | Interface State, LLDP Topology |
| DC1-SPINE1 |  51 | 43 | 8 | LLDP Topology |
| DC1-SPINE2 |  51 | 43 | 8 | LLDP Topology |

### Summary Totals Per Category

| Test Category | Total Tests | Tests Passed | Tests Failed |
| ------------- | ----------- | ------------ | ------------ |
| NTP |  12 | 12 | 0 |
| Interface State |  155 | 153 | 2 |
| LLDP Topology |  52 | 0 | 52 |
| MLAG |  6 | 6 | 0 |
| IP Reachability |  32 | 32 | 0 |
| BGP |  42 | 42 | 0 |
| Routing Table |  120 | 120 | 0 |
| Loopback0 Reachability |  80 | 80 | 0 |

## Failed Test Results Summary

| Test ID | Node | Test Category | Test Description | Test | Test Result | Failure Reason |
| ------- | ---- | ------------- | ---------------- | ---- | ----------- | -------------- |
| 82 | DC1-LEAF3A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel7 - POD03-ESI_data | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 83 | DC1-LEAF4A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel7 - POD03-ESI_data | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 168 | DC1-BL1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: DC1-BL1B_Ethernet3 | FAIL | remote: DC1-BL1B.eve.emea.lab - "Ethernet3" |
| 169 | DC1-BL1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: DC1-BL1B_Ethernet4 | FAIL | remote: DC1-BL1B.eve.emea.lab - "Ethernet4" |
| 170 | DC1-BL1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-SPINE1_Ethernet6 | FAIL | remote: DC1-SPINE1.eve.emea.lab - "Ethernet6" |
| 171 | DC1-BL1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-SPINE2_Ethernet6 | FAIL | remote: DC1-SPINE2.eve.emea.lab - "Ethernet6" |
| 172 | DC1-BL1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: DC1-BL1A_Ethernet3 | FAIL | remote: DC1-BL1A.eve.emea.lab - "Ethernet3" |
| 173 | DC1-BL1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: DC1-BL1A_Ethernet4 | FAIL | remote: DC1-BL1A.eve.emea.lab - "Ethernet4" |
| 174 | DC1-BL1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-SPINE1_Ethernet7 | FAIL | remote: DC1-SPINE1.eve.emea.lab - "Ethernet7" |
| 175 | DC1-BL1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-SPINE2_Ethernet7 | FAIL | remote: DC1-SPINE2.eve.emea.lab - "Ethernet7" |
| 176 | DC1-L2LEAF1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-LEAF1A_Ethernet5 | FAIL | remote: DC1-LEAF1A.eve.emea.lab - "Ethernet5" |
| 177 | DC1-L2LEAF1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-LEAF1B_Ethernet5 | FAIL | remote: DC1-LEAF1B.eve.emea.lab - "Ethernet5" |
| 178 | DC1-L2LEAF2A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-LEAF2A_Ethernet5 | FAIL | remote: DC1-LEAF2A.eve.emea.lab - "Ethernet5" |
| 179 | DC1-L2LEAF2A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-LEAF2B_Ethernet5 | FAIL | remote: DC1-LEAF2B.eve.emea.lab - "Ethernet5" |
| 180 | DC1-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: DC1-LEAF1B_Ethernet3 | FAIL | remote: DC1-LEAF1B.eve.emea.lab - "Ethernet3" |
| 181 | DC1-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: DC1-LEAF1B_Ethernet4 | FAIL | remote: DC1-LEAF1B.eve.emea.lab - "Ethernet4" |
| 182 | DC1-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-SPINE1_Ethernet1 | FAIL | remote: DC1-SPINE1.eve.emea.lab - "Ethernet1" |
| 183 | DC1-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-SPINE2_Ethernet1 | FAIL | remote: DC1-SPINE2.eve.emea.lab - "Ethernet1" |
| 184 | DC1-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet5 - remote: DC1-L2LEAF1A_Ethernet1 | FAIL | remote: DC1-L2LEAF1A.eve.emea.lab - "Ethernet1" |
| 185 | DC1-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: DC1-LEAF1A_Ethernet3 | FAIL | remote: DC1-LEAF1A.eve.emea.lab - "Ethernet3" |
| 186 | DC1-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: DC1-LEAF1A_Ethernet4 | FAIL | remote: DC1-LEAF1A.eve.emea.lab - "Ethernet4" |
| 187 | DC1-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-SPINE1_Ethernet2 | FAIL | remote: DC1-SPINE1.eve.emea.lab - "Ethernet2" |
| 188 | DC1-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-SPINE2_Ethernet2 | FAIL | remote: DC1-SPINE2.eve.emea.lab - "Ethernet2" |
| 189 | DC1-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet5 - remote: DC1-L2LEAF1A_Ethernet2 | FAIL | remote: DC1-L2LEAF1A.eve.emea.lab - "Ethernet2" |
| 190 | DC1-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: DC1-LEAF2B_Ethernet3 | FAIL | remote: DC1-LEAF2B.eve.emea.lab - "Ethernet3" |
| 191 | DC1-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: DC1-LEAF2B_Ethernet4 | FAIL | remote: DC1-LEAF2B.eve.emea.lab - "Ethernet4" |
| 192 | DC1-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-SPINE1_Ethernet3 | FAIL | remote: DC1-SPINE1.eve.emea.lab - "Ethernet3" |
| 193 | DC1-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-SPINE2_Ethernet3 | FAIL | remote: DC1-SPINE2.eve.emea.lab - "Ethernet3" |
| 194 | DC1-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet5 - remote: DC1-L2LEAF2A_Ethernet1 | FAIL | remote: DC1-L2LEAF2A.eve.emea.lab - "Ethernet1" |
| 195 | DC1-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: DC1-LEAF2A_Ethernet3 | FAIL | remote: DC1-LEAF2A.eve.emea.lab - "Ethernet3" |
| 196 | DC1-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: DC1-LEAF2A_Ethernet4 | FAIL | remote: DC1-LEAF2A.eve.emea.lab - "Ethernet4" |
| 197 | DC1-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-SPINE1_Ethernet4 | FAIL | remote: DC1-SPINE1.eve.emea.lab - "Ethernet4" |
| 198 | DC1-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-SPINE2_Ethernet4 | FAIL | remote: DC1-SPINE2.eve.emea.lab - "Ethernet4" |
| 199 | DC1-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet5 - remote: DC1-L2LEAF2A_Ethernet2 | FAIL | remote: DC1-L2LEAF2A.eve.emea.lab - "Ethernet2" |
| 200 | DC1-LEAF3A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-SPINE1_Ethernet5 | FAIL | remote: DC1-SPINE1.eve.emea.lab - "Ethernet5" |
| 201 | DC1-LEAF3A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-SPINE2_Ethernet5 | FAIL | remote: DC1-SPINE2.eve.emea.lab - "Ethernet5" |
| 202 | DC1-LEAF4A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-SPINE1_Ethernet8 | FAIL | remote: DC1-SPINE1.eve.emea.lab - "Ethernet8" |
| 203 | DC1-LEAF4A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-SPINE2_Ethernet8 | FAIL | remote: DC1-SPINE2.eve.emea.lab - "Ethernet8" |
| 204 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet6 - remote: DC1-BL1A_Ethernet1 | FAIL | remote: DC1-BL1A.eve.emea.lab - "Ethernet1" |
| 205 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet7 - remote: DC1-BL1B_Ethernet1 | FAIL | remote: DC1-BL1B.eve.emea.lab - "Ethernet1" |
| 206 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-LEAF1A_Ethernet1 | FAIL | remote: DC1-LEAF1A.eve.emea.lab - "Ethernet1" |
| 207 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-LEAF1B_Ethernet1 | FAIL | remote: DC1-LEAF1B.eve.emea.lab - "Ethernet1" |
| 208 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: DC1-LEAF2A_Ethernet1 | FAIL | remote: DC1-LEAF2A.eve.emea.lab - "Ethernet1" |
| 209 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: DC1-LEAF2B_Ethernet1 | FAIL | remote: DC1-LEAF2B.eve.emea.lab - "Ethernet1" |
| 210 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet5 - remote: DC1-LEAF3A_Ethernet1 | FAIL | remote: DC1-LEAF3A.eve.emea.lab - "Ethernet1" |
| 211 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet8 - remote: DC1-LEAF4A_Ethernet1 | FAIL | remote: DC1-LEAF4A.eve.emea.lab - "Ethernet1" |
| 212 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet6 - remote: DC1-BL1A_Ethernet2 | FAIL | remote: DC1-BL1A.eve.emea.lab - "Ethernet2" |
| 213 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet7 - remote: DC1-BL1B_Ethernet2 | FAIL | remote: DC1-BL1B.eve.emea.lab - "Ethernet2" |
| 214 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-LEAF1A_Ethernet2 | FAIL | remote: DC1-LEAF1A.eve.emea.lab - "Ethernet2" |
| 215 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-LEAF1B_Ethernet2 | FAIL | remote: DC1-LEAF1B.eve.emea.lab - "Ethernet2" |
| 216 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: DC1-LEAF2A_Ethernet2 | FAIL | remote: DC1-LEAF2A.eve.emea.lab - "Ethernet2" |
| 217 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: DC1-LEAF2B_Ethernet2 | FAIL | remote: DC1-LEAF2B.eve.emea.lab - "Ethernet2" |
| 218 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet5 - remote: DC1-LEAF3A_Ethernet2 | FAIL | remote: DC1-LEAF3A.eve.emea.lab - "Ethernet2" |
| 219 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet8 - remote: DC1-LEAF4A_Ethernet2 | FAIL | remote: DC1-LEAF4A.eve.emea.lab - "Ethernet2" |

## All Test Results

| Test ID | Node | Test Category | Test Description | Test | Test Result | Failure Reason |
| ------- | ---- | ------------- | ---------------- | ---- | ----------- | -------------- |
| 1 | DC1-BL1A | NTP | Synchronised with NTP server | NTP | PASS |  |
| 2 | DC1-BL1B | NTP | Synchronised with NTP server | NTP | PASS |  |
| 3 | DC1-L2LEAF1A | NTP | Synchronised with NTP server | NTP | PASS |  |
| 4 | DC1-L2LEAF2A | NTP | Synchronised with NTP server | NTP | PASS |  |
| 5 | DC1-LEAF1A | NTP | Synchronised with NTP server | NTP | PASS |  |
| 6 | DC1-LEAF1B | NTP | Synchronised with NTP server | NTP | PASS |  |
| 7 | DC1-LEAF2A | NTP | Synchronised with NTP server | NTP | PASS |  |
| 8 | DC1-LEAF2B | NTP | Synchronised with NTP server | NTP | PASS |  |
| 9 | DC1-LEAF3A | NTP | Synchronised with NTP server | NTP | PASS |  |
| 10 | DC1-LEAF4A | NTP | Synchronised with NTP server | NTP | PASS |  |
| 11 | DC1-SPINE1 | NTP | Synchronised with NTP server | NTP | PASS |  |
| 12 | DC1-SPINE2 | NTP | Synchronised with NTP server | NTP | PASS |  |
| 13 | DC1-BL1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - MLAG_PEER_DC1-BL1B_Ethernet3 | PASS |  |
| 14 | DC1-BL1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - MLAG_PEER_DC1-BL1B_Ethernet4 | PASS |  |
| 15 | DC1-BL1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet6 | PASS |  |
| 16 | DC1-BL1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet6 | PASS |  |
| 17 | DC1-BL1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - MLAG_PEER_DC1-BL1A_Ethernet3 | PASS |  |
| 18 | DC1-BL1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - MLAG_PEER_DC1-BL1A_Ethernet4 | PASS |  |
| 19 | DC1-BL1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet7 | PASS |  |
| 20 | DC1-BL1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet7 | PASS |  |
| 21 | DC1-L2LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - DC1-LEAF1A_Ethernet5 | PASS |  |
| 22 | DC1-L2LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - DC1-LEAF1B_Ethernet5 | PASS |  |
| 23 | DC1-L2LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - POD01-DOCKER_Eth1 | PASS |  |
| 24 | DC1-L2LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - POD01-SRV_Eth1 | PASS |  |
| 25 | DC1-L2LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - DC1-LEAF2A_Ethernet5 | PASS |  |
| 26 | DC1-L2LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - DC1-LEAF2B_Ethernet5 | PASS |  |
| 27 | DC1-L2LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - POD02-DOCKER_Eth1 | PASS |  |
| 28 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - MLAG_PEER_DC1-LEAF1B_Ethernet3 | PASS |  |
| 29 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - MLAG_PEER_DC1-LEAF1B_Ethernet4 | PASS |  |
| 30 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet1 | PASS |  |
| 31 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet1 | PASS |  |
| 32 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - DC1-L2LEAF1A_Ethernet1 | PASS |  |
| 33 | DC1-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - MLAG_PEER_DC1-LEAF1A_Ethernet3 | PASS |  |
| 34 | DC1-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - MLAG_PEER_DC1-LEAF1A_Ethernet4 | PASS |  |
| 35 | DC1-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet2 | PASS |  |
| 36 | DC1-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet2 | PASS |  |
| 37 | DC1-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - DC1-L2LEAF1A_Ethernet2 | PASS |  |
| 38 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - MLAG_PEER_DC1-LEAF2B_Ethernet3 | PASS |  |
| 39 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - MLAG_PEER_DC1-LEAF2B_Ethernet4 | PASS |  |
| 40 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet3 | PASS |  |
| 41 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet3 | PASS |  |
| 42 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - DC1-L2LEAF2A_Ethernet1 | PASS |  |
| 43 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - MLAG_PEER_DC1-LEAF2A_Ethernet3 | PASS |  |
| 44 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - MLAG_PEER_DC1-LEAF2A_Ethernet4 | PASS |  |
| 45 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet4 | PASS |  |
| 46 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet4 | PASS |  |
| 47 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - DC1-L2LEAF2A_Ethernet2 | PASS |  |
| 48 | DC1-LEAF3A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet5 | PASS |  |
| 49 | DC1-LEAF3A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet5 | PASS |  |
| 50 | DC1-LEAF3A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet7 - POD03-ESI_Eth0 | PASS |  |
| 51 | DC1-LEAF4A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet8 | PASS |  |
| 52 | DC1-LEAF4A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet8 | PASS |  |
| 53 | DC1-LEAF4A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet7 - POD03-ESI_Eth1 | PASS |  |
| 54 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - P2P_LINK_TO_DC1-BL1A_Ethernet1 | PASS |  |
| 55 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet7 - P2P_LINK_TO_DC1-BL1B_Ethernet1 | PASS |  |
| 56 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-LEAF1A_Ethernet1 | PASS |  |
| 57 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-LEAF1B_Ethernet1 | PASS |  |
| 58 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_DC1-LEAF2A_Ethernet1 | PASS |  |
| 59 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_DC1-LEAF2B_Ethernet1 | PASS |  |
| 60 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - P2P_LINK_TO_DC1-LEAF3A_Ethernet1 | PASS |  |
| 61 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet8 - P2P_LINK_TO_DC1-LEAF4A_Ethernet1 | PASS |  |
| 62 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - P2P_LINK_TO_DC1-BL1A_Ethernet2 | PASS |  |
| 63 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet7 - P2P_LINK_TO_DC1-BL1B_Ethernet2 | PASS |  |
| 64 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-LEAF1A_Ethernet2 | PASS |  |
| 65 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-LEAF1B_Ethernet2 | PASS |  |
| 66 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_DC1-LEAF2A_Ethernet2 | PASS |  |
| 67 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_DC1-LEAF2B_Ethernet2 | PASS |  |
| 68 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - P2P_LINK_TO_DC1-LEAF3A_Ethernet2 | PASS |  |
| 69 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet8 - P2P_LINK_TO_DC1-LEAF4A_Ethernet2 | PASS |  |
| 70 | DC1-BL1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_DC1-BL1B_Po3 | PASS |  |
| 71 | DC1-BL1B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_DC1-BL1A_Po3 | PASS |  |
| 72 | DC1-L2LEAF1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel1 - DC1-LEAF1A_Po5 | PASS |  |
| 73 | DC1-L2LEAF2A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel1 - DC1-LEAF2A_Po5 | PASS |  |
| 74 | DC1-LEAF1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_DC1-LEAF1B_Po3 | PASS |  |
| 75 | DC1-LEAF1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel5 - DC1_L2LEAF1_Po1 | PASS |  |
| 76 | DC1-LEAF1B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_DC1-LEAF1A_Po3 | PASS |  |
| 77 | DC1-LEAF1B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel5 - DC1_L2LEAF1_Po1 | PASS |  |
| 78 | DC1-LEAF2A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_DC1-LEAF2B_Po3 | PASS |  |
| 79 | DC1-LEAF2A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel5 - DC1_L2LEAF2_Po1 | PASS |  |
| 80 | DC1-LEAF2B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_DC1-LEAF2A_Po3 | PASS |  |
| 81 | DC1-LEAF2B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel5 - DC1_L2LEAF2_Po1 | PASS |  |
| 82 | DC1-LEAF3A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel7 - POD03-ESI_data | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 83 | DC1-LEAF4A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel7 - POD03-ESI_data | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 84 | DC1-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 85 | DC1-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 86 | DC1-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | PASS |  |
| 87 | DC1-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - Tenant_A_OP_Zone_2 | PASS |  |
| 88 | DC1-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan114 - Tenant_A_OP_Zone_3 | PASS |  |
| 89 | DC1-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan115 - Tenant_A_OP_Zone_3 | PASS |  |
| 90 | DC1-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | PASS |  |
| 91 | DC1-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 92 | DC1-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 93 | DC1-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | PASS |  |
| 94 | DC1-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - Tenant_A_OP_Zone_2 | PASS |  |
| 95 | DC1-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan114 - Tenant_A_OP_Zone_3 | PASS |  |
| 96 | DC1-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan115 - Tenant_A_OP_Zone_3 | PASS |  |
| 97 | DC1-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | PASS |  |
| 98 | DC1-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 99 | DC1-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 100 | DC1-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | PASS |  |
| 101 | DC1-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - Tenant_A_OP_Zone_2 | PASS |  |
| 102 | DC1-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan114 - Tenant_A_OP_Zone_3 | PASS |  |
| 103 | DC1-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan115 - Tenant_A_OP_Zone_3 | PASS |  |
| 104 | DC1-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | PASS |  |
| 105 | DC1-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 106 | DC1-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 107 | DC1-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | PASS |  |
| 108 | DC1-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - Tenant_A_OP_Zone_2 | PASS |  |
| 109 | DC1-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan114 - Tenant_A_OP_Zone_3 | PASS |  |
| 110 | DC1-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan115 - Tenant_A_OP_Zone_3 | PASS |  |
| 111 | DC1-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | PASS |  |
| 112 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 113 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 114 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | PASS |  |
| 115 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - Tenant_A_OP_Zone_2 | PASS |  |
| 116 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan114 - Tenant_A_OP_Zone_3 | PASS |  |
| 117 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan115 - Tenant_A_OP_Zone_3 | PASS |  |
| 118 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | PASS |  |
| 119 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 120 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 121 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | PASS |  |
| 122 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - Tenant_A_OP_Zone_2 | PASS |  |
| 123 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan114 - Tenant_A_OP_Zone_3 | PASS |  |
| 124 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan115 - Tenant_A_OP_Zone_3 | PASS |  |
| 125 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | PASS |  |
| 126 | DC1-LEAF3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | PASS |  |
| 127 | DC1-LEAF3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - Tenant_A_OP_Zone_2 | PASS |  |
| 128 | DC1-LEAF3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan114 - Tenant_A_OP_Zone_3 | PASS |  |
| 129 | DC1-LEAF3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan115 - Tenant_A_OP_Zone_3 | PASS |  |
| 130 | DC1-LEAF4A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | PASS |  |
| 131 | DC1-LEAF4A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - Tenant_A_OP_Zone_2 | PASS |  |
| 132 | DC1-LEAF4A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan114 - Tenant_A_OP_Zone_3 | PASS |  |
| 133 | DC1-LEAF4A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan115 - Tenant_A_OP_Zone_3 | PASS |  |
| 134 | DC1-BL1A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 135 | DC1-BL1B | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 136 | DC1-LEAF1A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 137 | DC1-LEAF1B | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 138 | DC1-LEAF2A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 139 | DC1-LEAF2B | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 140 | DC1-LEAF3A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 141 | DC1-LEAF4A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 142 | DC1-BL1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 143 | DC1-BL1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 144 | DC1-BL1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | PASS |  |
| 145 | DC1-BL1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 146 | DC1-BL1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 147 | DC1-BL1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | PASS |  |
| 148 | DC1-LEAF1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 149 | DC1-LEAF1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 150 | DC1-LEAF1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | PASS |  |
| 151 | DC1-LEAF1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 152 | DC1-LEAF1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 153 | DC1-LEAF1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | PASS |  |
| 154 | DC1-LEAF2A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 155 | DC1-LEAF2A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 156 | DC1-LEAF2A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | PASS |  |
| 157 | DC1-LEAF2B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 158 | DC1-LEAF2B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 159 | DC1-LEAF2B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | PASS |  |
| 160 | DC1-LEAF3A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 161 | DC1-LEAF3A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 162 | DC1-LEAF3A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | PASS |  |
| 163 | DC1-LEAF4A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 164 | DC1-LEAF4A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 165 | DC1-LEAF4A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | PASS |  |
| 166 | DC1-SPINE1 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 167 | DC1-SPINE2 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 168 | DC1-BL1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: DC1-BL1B_Ethernet3 | FAIL | remote: DC1-BL1B.eve.emea.lab - "Ethernet3" |
| 169 | DC1-BL1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: DC1-BL1B_Ethernet4 | FAIL | remote: DC1-BL1B.eve.emea.lab - "Ethernet4" |
| 170 | DC1-BL1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-SPINE1_Ethernet6 | FAIL | remote: DC1-SPINE1.eve.emea.lab - "Ethernet6" |
| 171 | DC1-BL1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-SPINE2_Ethernet6 | FAIL | remote: DC1-SPINE2.eve.emea.lab - "Ethernet6" |
| 172 | DC1-BL1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: DC1-BL1A_Ethernet3 | FAIL | remote: DC1-BL1A.eve.emea.lab - "Ethernet3" |
| 173 | DC1-BL1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: DC1-BL1A_Ethernet4 | FAIL | remote: DC1-BL1A.eve.emea.lab - "Ethernet4" |
| 174 | DC1-BL1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-SPINE1_Ethernet7 | FAIL | remote: DC1-SPINE1.eve.emea.lab - "Ethernet7" |
| 175 | DC1-BL1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-SPINE2_Ethernet7 | FAIL | remote: DC1-SPINE2.eve.emea.lab - "Ethernet7" |
| 176 | DC1-L2LEAF1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-LEAF1A_Ethernet5 | FAIL | remote: DC1-LEAF1A.eve.emea.lab - "Ethernet5" |
| 177 | DC1-L2LEAF1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-LEAF1B_Ethernet5 | FAIL | remote: DC1-LEAF1B.eve.emea.lab - "Ethernet5" |
| 178 | DC1-L2LEAF2A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-LEAF2A_Ethernet5 | FAIL | remote: DC1-LEAF2A.eve.emea.lab - "Ethernet5" |
| 179 | DC1-L2LEAF2A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-LEAF2B_Ethernet5 | FAIL | remote: DC1-LEAF2B.eve.emea.lab - "Ethernet5" |
| 180 | DC1-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: DC1-LEAF1B_Ethernet3 | FAIL | remote: DC1-LEAF1B.eve.emea.lab - "Ethernet3" |
| 181 | DC1-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: DC1-LEAF1B_Ethernet4 | FAIL | remote: DC1-LEAF1B.eve.emea.lab - "Ethernet4" |
| 182 | DC1-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-SPINE1_Ethernet1 | FAIL | remote: DC1-SPINE1.eve.emea.lab - "Ethernet1" |
| 183 | DC1-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-SPINE2_Ethernet1 | FAIL | remote: DC1-SPINE2.eve.emea.lab - "Ethernet1" |
| 184 | DC1-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet5 - remote: DC1-L2LEAF1A_Ethernet1 | FAIL | remote: DC1-L2LEAF1A.eve.emea.lab - "Ethernet1" |
| 185 | DC1-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: DC1-LEAF1A_Ethernet3 | FAIL | remote: DC1-LEAF1A.eve.emea.lab - "Ethernet3" |
| 186 | DC1-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: DC1-LEAF1A_Ethernet4 | FAIL | remote: DC1-LEAF1A.eve.emea.lab - "Ethernet4" |
| 187 | DC1-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-SPINE1_Ethernet2 | FAIL | remote: DC1-SPINE1.eve.emea.lab - "Ethernet2" |
| 188 | DC1-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-SPINE2_Ethernet2 | FAIL | remote: DC1-SPINE2.eve.emea.lab - "Ethernet2" |
| 189 | DC1-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet5 - remote: DC1-L2LEAF1A_Ethernet2 | FAIL | remote: DC1-L2LEAF1A.eve.emea.lab - "Ethernet2" |
| 190 | DC1-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: DC1-LEAF2B_Ethernet3 | FAIL | remote: DC1-LEAF2B.eve.emea.lab - "Ethernet3" |
| 191 | DC1-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: DC1-LEAF2B_Ethernet4 | FAIL | remote: DC1-LEAF2B.eve.emea.lab - "Ethernet4" |
| 192 | DC1-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-SPINE1_Ethernet3 | FAIL | remote: DC1-SPINE1.eve.emea.lab - "Ethernet3" |
| 193 | DC1-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-SPINE2_Ethernet3 | FAIL | remote: DC1-SPINE2.eve.emea.lab - "Ethernet3" |
| 194 | DC1-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet5 - remote: DC1-L2LEAF2A_Ethernet1 | FAIL | remote: DC1-L2LEAF2A.eve.emea.lab - "Ethernet1" |
| 195 | DC1-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: DC1-LEAF2A_Ethernet3 | FAIL | remote: DC1-LEAF2A.eve.emea.lab - "Ethernet3" |
| 196 | DC1-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: DC1-LEAF2A_Ethernet4 | FAIL | remote: DC1-LEAF2A.eve.emea.lab - "Ethernet4" |
| 197 | DC1-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-SPINE1_Ethernet4 | FAIL | remote: DC1-SPINE1.eve.emea.lab - "Ethernet4" |
| 198 | DC1-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-SPINE2_Ethernet4 | FAIL | remote: DC1-SPINE2.eve.emea.lab - "Ethernet4" |
| 199 | DC1-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet5 - remote: DC1-L2LEAF2A_Ethernet2 | FAIL | remote: DC1-L2LEAF2A.eve.emea.lab - "Ethernet2" |
| 200 | DC1-LEAF3A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-SPINE1_Ethernet5 | FAIL | remote: DC1-SPINE1.eve.emea.lab - "Ethernet5" |
| 201 | DC1-LEAF3A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-SPINE2_Ethernet5 | FAIL | remote: DC1-SPINE2.eve.emea.lab - "Ethernet5" |
| 202 | DC1-LEAF4A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-SPINE1_Ethernet8 | FAIL | remote: DC1-SPINE1.eve.emea.lab - "Ethernet8" |
| 203 | DC1-LEAF4A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-SPINE2_Ethernet8 | FAIL | remote: DC1-SPINE2.eve.emea.lab - "Ethernet8" |
| 204 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet6 - remote: DC1-BL1A_Ethernet1 | FAIL | remote: DC1-BL1A.eve.emea.lab - "Ethernet1" |
| 205 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet7 - remote: DC1-BL1B_Ethernet1 | FAIL | remote: DC1-BL1B.eve.emea.lab - "Ethernet1" |
| 206 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-LEAF1A_Ethernet1 | FAIL | remote: DC1-LEAF1A.eve.emea.lab - "Ethernet1" |
| 207 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-LEAF1B_Ethernet1 | FAIL | remote: DC1-LEAF1B.eve.emea.lab - "Ethernet1" |
| 208 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: DC1-LEAF2A_Ethernet1 | FAIL | remote: DC1-LEAF2A.eve.emea.lab - "Ethernet1" |
| 209 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: DC1-LEAF2B_Ethernet1 | FAIL | remote: DC1-LEAF2B.eve.emea.lab - "Ethernet1" |
| 210 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet5 - remote: DC1-LEAF3A_Ethernet1 | FAIL | remote: DC1-LEAF3A.eve.emea.lab - "Ethernet1" |
| 211 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet8 - remote: DC1-LEAF4A_Ethernet1 | FAIL | remote: DC1-LEAF4A.eve.emea.lab - "Ethernet1" |
| 212 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet6 - remote: DC1-BL1A_Ethernet2 | FAIL | remote: DC1-BL1A.eve.emea.lab - "Ethernet2" |
| 213 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet7 - remote: DC1-BL1B_Ethernet2 | FAIL | remote: DC1-BL1B.eve.emea.lab - "Ethernet2" |
| 214 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC1-LEAF1A_Ethernet2 | FAIL | remote: DC1-LEAF1A.eve.emea.lab - "Ethernet2" |
| 215 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC1-LEAF1B_Ethernet2 | FAIL | remote: DC1-LEAF1B.eve.emea.lab - "Ethernet2" |
| 216 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: DC1-LEAF2A_Ethernet2 | FAIL | remote: DC1-LEAF2A.eve.emea.lab - "Ethernet2" |
| 217 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: DC1-LEAF2B_Ethernet2 | FAIL | remote: DC1-LEAF2B.eve.emea.lab - "Ethernet2" |
| 218 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet5 - remote: DC1-LEAF3A_Ethernet2 | FAIL | remote: DC1-LEAF3A.eve.emea.lab - "Ethernet2" |
| 219 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet8 - remote: DC1-LEAF4A_Ethernet2 | FAIL | remote: DC1-LEAF4A.eve.emea.lab - "Ethernet2" |
| 220 | DC1-BL1A | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 221 | DC1-BL1B | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 222 | DC1-LEAF1A | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 223 | DC1-LEAF1B | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 224 | DC1-LEAF2A | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 225 | DC1-LEAF2B | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 226 | DC1-BL1A | IP Reachability | ip reachability test p2p links | Source: DC1-BL1A_Ethernet1 - Destination: DC1-SPINE1_Ethernet6 | PASS |  |
| 227 | DC1-BL1A | IP Reachability | ip reachability test p2p links | Source: DC1-BL1A_Ethernet2 - Destination: DC1-SPINE2_Ethernet6 | PASS |  |
| 228 | DC1-BL1B | IP Reachability | ip reachability test p2p links | Source: DC1-BL1B_Ethernet1 - Destination: DC1-SPINE1_Ethernet7 | PASS |  |
| 229 | DC1-BL1B | IP Reachability | ip reachability test p2p links | Source: DC1-BL1B_Ethernet2 - Destination: DC1-SPINE2_Ethernet7 | PASS |  |
| 230 | DC1-LEAF1A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF1A_Ethernet1 - Destination: DC1-SPINE1_Ethernet1 | PASS |  |
| 231 | DC1-LEAF1A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF1A_Ethernet2 - Destination: DC1-SPINE2_Ethernet1 | PASS |  |
| 232 | DC1-LEAF1B | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF1B_Ethernet1 - Destination: DC1-SPINE1_Ethernet2 | PASS |  |
| 233 | DC1-LEAF1B | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF1B_Ethernet2 - Destination: DC1-SPINE2_Ethernet2 | PASS |  |
| 234 | DC1-LEAF2A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF2A_Ethernet1 - Destination: DC1-SPINE1_Ethernet3 | PASS |  |
| 235 | DC1-LEAF2A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF2A_Ethernet2 - Destination: DC1-SPINE2_Ethernet3 | PASS |  |
| 236 | DC1-LEAF2B | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF2B_Ethernet1 - Destination: DC1-SPINE1_Ethernet4 | PASS |  |
| 237 | DC1-LEAF2B | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF2B_Ethernet2 - Destination: DC1-SPINE2_Ethernet4 | PASS |  |
| 238 | DC1-LEAF3A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF3A_Ethernet1 - Destination: DC1-SPINE1_Ethernet5 | PASS |  |
| 239 | DC1-LEAF3A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF3A_Ethernet2 - Destination: DC1-SPINE2_Ethernet5 | PASS |  |
| 240 | DC1-LEAF4A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF4A_Ethernet1 - Destination: DC1-SPINE1_Ethernet8 | PASS |  |
| 241 | DC1-LEAF4A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF4A_Ethernet2 - Destination: DC1-SPINE2_Ethernet8 | PASS |  |
| 242 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet6 - Destination: DC1-BL1A_Ethernet1 | PASS |  |
| 243 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet7 - Destination: DC1-BL1B_Ethernet1 | PASS |  |
| 244 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet1 - Destination: DC1-LEAF1A_Ethernet1 | PASS |  |
| 245 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet2 - Destination: DC1-LEAF1B_Ethernet1 | PASS |  |
| 246 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet3 - Destination: DC1-LEAF2A_Ethernet1 | PASS |  |
| 247 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet4 - Destination: DC1-LEAF2B_Ethernet1 | PASS |  |
| 248 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet5 - Destination: DC1-LEAF3A_Ethernet1 | PASS |  |
| 249 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet8 - Destination: DC1-LEAF4A_Ethernet1 | PASS |  |
| 250 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet6 - Destination: DC1-BL1A_Ethernet2 | PASS |  |
| 251 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet7 - Destination: DC1-BL1B_Ethernet2 | PASS |  |
| 252 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet1 - Destination: DC1-LEAF1A_Ethernet2 | PASS |  |
| 253 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet2 - Destination: DC1-LEAF1B_Ethernet2 | PASS |  |
| 254 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet3 - Destination: DC1-LEAF2A_Ethernet2 | PASS |  |
| 255 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet4 - Destination: DC1-LEAF2B_Ethernet2 | PASS |  |
| 256 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet5 - Destination: DC1-LEAF3A_Ethernet2 | PASS |  |
| 257 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet8 - Destination: DC1-LEAF4A_Ethernet2 | PASS |  |
| 258 | DC1-BL1A | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 259 | DC1-BL1B | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 260 | DC1-LEAF1A | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 261 | DC1-LEAF1B | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 262 | DC1-LEAF2A | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 263 | DC1-LEAF2B | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 264 | DC1-LEAF3A | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 265 | DC1-LEAF4A | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 266 | DC1-SPINE1 | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 267 | DC1-SPINE2 | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 268 | DC1-BL1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.1 | PASS |  |
| 269 | DC1-BL1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.2 | PASS |  |
| 270 | DC1-BL1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.1 | PASS |  |
| 271 | DC1-BL1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.2 | PASS |  |
| 272 | DC1-LEAF1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.1 | PASS |  |
| 273 | DC1-LEAF1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.2 | PASS |  |
| 274 | DC1-LEAF1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.1 | PASS |  |
| 275 | DC1-LEAF1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.2 | PASS |  |
| 276 | DC1-LEAF2A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.1 | PASS |  |
| 277 | DC1-LEAF2A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.2 | PASS |  |
| 278 | DC1-LEAF2B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.1 | PASS |  |
| 279 | DC1-LEAF2B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.2 | PASS |  |
| 280 | DC1-LEAF3A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.1 | PASS |  |
| 281 | DC1-LEAF3A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.2 | PASS |  |
| 282 | DC1-LEAF4A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.1 | PASS |  |
| 283 | DC1-LEAF4A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.2 | PASS |  |
| 284 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.11 | PASS |  |
| 285 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.12 | PASS |  |
| 286 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.3 | PASS |  |
| 287 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.4 | PASS |  |
| 288 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.5 | PASS |  |
| 289 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.6 | PASS |  |
| 290 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.10 | PASS |  |
| 291 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.13 | PASS |  |
| 292 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.11 | PASS |  |
| 293 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.12 | PASS |  |
| 294 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.3 | PASS |  |
| 295 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.4 | PASS |  |
| 296 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.5 | PASS |  |
| 297 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.6 | PASS |  |
| 298 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.10 | PASS |  |
| 299 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.13 | PASS |  |
| 300 | DC1-BL1A | Routing Table | Remote Lo1 address | 192.168.254.11 | PASS |  |
| 301 | DC1-BL1A | Routing Table | Remote Lo1 address | 192.168.254.3 | PASS |  |
| 302 | DC1-BL1A | Routing Table | Remote Lo1 address | 192.168.254.5 | PASS |  |
| 303 | DC1-BL1A | Routing Table | Remote Lo1 address | 192.168.254.10 | PASS |  |
| 304 | DC1-BL1A | Routing Table | Remote Lo1 address | 192.168.254.13 | PASS |  |
| 305 | DC1-BL1B | Routing Table | Remote Lo1 address | 192.168.254.11 | PASS |  |
| 306 | DC1-BL1B | Routing Table | Remote Lo1 address | 192.168.254.3 | PASS |  |
| 307 | DC1-BL1B | Routing Table | Remote Lo1 address | 192.168.254.5 | PASS |  |
| 308 | DC1-BL1B | Routing Table | Remote Lo1 address | 192.168.254.10 | PASS |  |
| 309 | DC1-BL1B | Routing Table | Remote Lo1 address | 192.168.254.13 | PASS |  |
| 310 | DC1-LEAF1A | Routing Table | Remote Lo1 address | 192.168.254.11 | PASS |  |
| 311 | DC1-LEAF1A | Routing Table | Remote Lo1 address | 192.168.254.3 | PASS |  |
| 312 | DC1-LEAF1A | Routing Table | Remote Lo1 address | 192.168.254.5 | PASS |  |
| 313 | DC1-LEAF1A | Routing Table | Remote Lo1 address | 192.168.254.10 | PASS |  |
| 314 | DC1-LEAF1A | Routing Table | Remote Lo1 address | 192.168.254.13 | PASS |  |
| 315 | DC1-LEAF1B | Routing Table | Remote Lo1 address | 192.168.254.11 | PASS |  |
| 316 | DC1-LEAF1B | Routing Table | Remote Lo1 address | 192.168.254.3 | PASS |  |
| 317 | DC1-LEAF1B | Routing Table | Remote Lo1 address | 192.168.254.5 | PASS |  |
| 318 | DC1-LEAF1B | Routing Table | Remote Lo1 address | 192.168.254.10 | PASS |  |
| 319 | DC1-LEAF1B | Routing Table | Remote Lo1 address | 192.168.254.13 | PASS |  |
| 320 | DC1-LEAF2A | Routing Table | Remote Lo1 address | 192.168.254.11 | PASS |  |
| 321 | DC1-LEAF2A | Routing Table | Remote Lo1 address | 192.168.254.3 | PASS |  |
| 322 | DC1-LEAF2A | Routing Table | Remote Lo1 address | 192.168.254.5 | PASS |  |
| 323 | DC1-LEAF2A | Routing Table | Remote Lo1 address | 192.168.254.10 | PASS |  |
| 324 | DC1-LEAF2A | Routing Table | Remote Lo1 address | 192.168.254.13 | PASS |  |
| 325 | DC1-LEAF2B | Routing Table | Remote Lo1 address | 192.168.254.11 | PASS |  |
| 326 | DC1-LEAF2B | Routing Table | Remote Lo1 address | 192.168.254.3 | PASS |  |
| 327 | DC1-LEAF2B | Routing Table | Remote Lo1 address | 192.168.254.5 | PASS |  |
| 328 | DC1-LEAF2B | Routing Table | Remote Lo1 address | 192.168.254.10 | PASS |  |
| 329 | DC1-LEAF2B | Routing Table | Remote Lo1 address | 192.168.254.13 | PASS |  |
| 330 | DC1-LEAF3A | Routing Table | Remote Lo1 address | 192.168.254.11 | PASS |  |
| 331 | DC1-LEAF3A | Routing Table | Remote Lo1 address | 192.168.254.3 | PASS |  |
| 332 | DC1-LEAF3A | Routing Table | Remote Lo1 address | 192.168.254.5 | PASS |  |
| 333 | DC1-LEAF3A | Routing Table | Remote Lo1 address | 192.168.254.10 | PASS |  |
| 334 | DC1-LEAF3A | Routing Table | Remote Lo1 address | 192.168.254.13 | PASS |  |
| 335 | DC1-LEAF4A | Routing Table | Remote Lo1 address | 192.168.254.11 | PASS |  |
| 336 | DC1-LEAF4A | Routing Table | Remote Lo1 address | 192.168.254.3 | PASS |  |
| 337 | DC1-LEAF4A | Routing Table | Remote Lo1 address | 192.168.254.5 | PASS |  |
| 338 | DC1-LEAF4A | Routing Table | Remote Lo1 address | 192.168.254.10 | PASS |  |
| 339 | DC1-LEAF4A | Routing Table | Remote Lo1 address | 192.168.254.13 | PASS |  |
| 340 | DC1-BL1A | Routing Table | Remote Lo0 address | 192.168.255.11 | PASS |  |
| 341 | DC1-BL1A | Routing Table | Remote Lo0 address | 192.168.255.12 | PASS |  |
| 342 | DC1-BL1A | Routing Table | Remote Lo0 address | 192.168.255.3 | PASS |  |
| 343 | DC1-BL1A | Routing Table | Remote Lo0 address | 192.168.255.4 | PASS |  |
| 344 | DC1-BL1A | Routing Table | Remote Lo0 address | 192.168.255.5 | PASS |  |
| 345 | DC1-BL1A | Routing Table | Remote Lo0 address | 192.168.255.6 | PASS |  |
| 346 | DC1-BL1A | Routing Table | Remote Lo0 address | 192.168.255.10 | PASS |  |
| 347 | DC1-BL1A | Routing Table | Remote Lo0 address | 192.168.255.13 | PASS |  |
| 348 | DC1-BL1B | Routing Table | Remote Lo0 address | 192.168.255.11 | PASS |  |
| 349 | DC1-BL1B | Routing Table | Remote Lo0 address | 192.168.255.12 | PASS |  |
| 350 | DC1-BL1B | Routing Table | Remote Lo0 address | 192.168.255.3 | PASS |  |
| 351 | DC1-BL1B | Routing Table | Remote Lo0 address | 192.168.255.4 | PASS |  |
| 352 | DC1-BL1B | Routing Table | Remote Lo0 address | 192.168.255.5 | PASS |  |
| 353 | DC1-BL1B | Routing Table | Remote Lo0 address | 192.168.255.6 | PASS |  |
| 354 | DC1-BL1B | Routing Table | Remote Lo0 address | 192.168.255.10 | PASS |  |
| 355 | DC1-BL1B | Routing Table | Remote Lo0 address | 192.168.255.13 | PASS |  |
| 356 | DC1-LEAF1A | Routing Table | Remote Lo0 address | 192.168.255.11 | PASS |  |
| 357 | DC1-LEAF1A | Routing Table | Remote Lo0 address | 192.168.255.12 | PASS |  |
| 358 | DC1-LEAF1A | Routing Table | Remote Lo0 address | 192.168.255.3 | PASS |  |
| 359 | DC1-LEAF1A | Routing Table | Remote Lo0 address | 192.168.255.4 | PASS |  |
| 360 | DC1-LEAF1A | Routing Table | Remote Lo0 address | 192.168.255.5 | PASS |  |
| 361 | DC1-LEAF1A | Routing Table | Remote Lo0 address | 192.168.255.6 | PASS |  |
| 362 | DC1-LEAF1A | Routing Table | Remote Lo0 address | 192.168.255.10 | PASS |  |
| 363 | DC1-LEAF1A | Routing Table | Remote Lo0 address | 192.168.255.13 | PASS |  |
| 364 | DC1-LEAF1B | Routing Table | Remote Lo0 address | 192.168.255.11 | PASS |  |
| 365 | DC1-LEAF1B | Routing Table | Remote Lo0 address | 192.168.255.12 | PASS |  |
| 366 | DC1-LEAF1B | Routing Table | Remote Lo0 address | 192.168.255.3 | PASS |  |
| 367 | DC1-LEAF1B | Routing Table | Remote Lo0 address | 192.168.255.4 | PASS |  |
| 368 | DC1-LEAF1B | Routing Table | Remote Lo0 address | 192.168.255.5 | PASS |  |
| 369 | DC1-LEAF1B | Routing Table | Remote Lo0 address | 192.168.255.6 | PASS |  |
| 370 | DC1-LEAF1B | Routing Table | Remote Lo0 address | 192.168.255.10 | PASS |  |
| 371 | DC1-LEAF1B | Routing Table | Remote Lo0 address | 192.168.255.13 | PASS |  |
| 372 | DC1-LEAF2A | Routing Table | Remote Lo0 address | 192.168.255.11 | PASS |  |
| 373 | DC1-LEAF2A | Routing Table | Remote Lo0 address | 192.168.255.12 | PASS |  |
| 374 | DC1-LEAF2A | Routing Table | Remote Lo0 address | 192.168.255.3 | PASS |  |
| 375 | DC1-LEAF2A | Routing Table | Remote Lo0 address | 192.168.255.4 | PASS |  |
| 376 | DC1-LEAF2A | Routing Table | Remote Lo0 address | 192.168.255.5 | PASS |  |
| 377 | DC1-LEAF2A | Routing Table | Remote Lo0 address | 192.168.255.6 | PASS |  |
| 378 | DC1-LEAF2A | Routing Table | Remote Lo0 address | 192.168.255.10 | PASS |  |
| 379 | DC1-LEAF2A | Routing Table | Remote Lo0 address | 192.168.255.13 | PASS |  |
| 380 | DC1-LEAF2B | Routing Table | Remote Lo0 address | 192.168.255.11 | PASS |  |
| 381 | DC1-LEAF2B | Routing Table | Remote Lo0 address | 192.168.255.12 | PASS |  |
| 382 | DC1-LEAF2B | Routing Table | Remote Lo0 address | 192.168.255.3 | PASS |  |
| 383 | DC1-LEAF2B | Routing Table | Remote Lo0 address | 192.168.255.4 | PASS |  |
| 384 | DC1-LEAF2B | Routing Table | Remote Lo0 address | 192.168.255.5 | PASS |  |
| 385 | DC1-LEAF2B | Routing Table | Remote Lo0 address | 192.168.255.6 | PASS |  |
| 386 | DC1-LEAF2B | Routing Table | Remote Lo0 address | 192.168.255.10 | PASS |  |
| 387 | DC1-LEAF2B | Routing Table | Remote Lo0 address | 192.168.255.13 | PASS |  |
| 388 | DC1-LEAF3A | Routing Table | Remote Lo0 address | 192.168.255.11 | PASS |  |
| 389 | DC1-LEAF3A | Routing Table | Remote Lo0 address | 192.168.255.12 | PASS |  |
| 390 | DC1-LEAF3A | Routing Table | Remote Lo0 address | 192.168.255.3 | PASS |  |
| 391 | DC1-LEAF3A | Routing Table | Remote Lo0 address | 192.168.255.4 | PASS |  |
| 392 | DC1-LEAF3A | Routing Table | Remote Lo0 address | 192.168.255.5 | PASS |  |
| 393 | DC1-LEAF3A | Routing Table | Remote Lo0 address | 192.168.255.6 | PASS |  |
| 394 | DC1-LEAF3A | Routing Table | Remote Lo0 address | 192.168.255.10 | PASS |  |
| 395 | DC1-LEAF3A | Routing Table | Remote Lo0 address | 192.168.255.13 | PASS |  |
| 396 | DC1-LEAF4A | Routing Table | Remote Lo0 address | 192.168.255.11 | PASS |  |
| 397 | DC1-LEAF4A | Routing Table | Remote Lo0 address | 192.168.255.12 | PASS |  |
| 398 | DC1-LEAF4A | Routing Table | Remote Lo0 address | 192.168.255.3 | PASS |  |
| 399 | DC1-LEAF4A | Routing Table | Remote Lo0 address | 192.168.255.4 | PASS |  |
| 400 | DC1-LEAF4A | Routing Table | Remote Lo0 address | 192.168.255.5 | PASS |  |
| 401 | DC1-LEAF4A | Routing Table | Remote Lo0 address | 192.168.255.6 | PASS |  |
| 402 | DC1-LEAF4A | Routing Table | Remote Lo0 address | 192.168.255.10 | PASS |  |
| 403 | DC1-LEAF4A | Routing Table | Remote Lo0 address | 192.168.255.13 | PASS |  |
| 404 | DC1-SPINE1 | Routing Table | Remote Lo0 address | 192.168.255.11 | PASS |  |
| 405 | DC1-SPINE1 | Routing Table | Remote Lo0 address | 192.168.255.12 | PASS |  |
| 406 | DC1-SPINE1 | Routing Table | Remote Lo0 address | 192.168.255.3 | PASS |  |
| 407 | DC1-SPINE1 | Routing Table | Remote Lo0 address | 192.168.255.4 | PASS |  |
| 408 | DC1-SPINE1 | Routing Table | Remote Lo0 address | 192.168.255.5 | PASS |  |
| 409 | DC1-SPINE1 | Routing Table | Remote Lo0 address | 192.168.255.6 | PASS |  |
| 410 | DC1-SPINE1 | Routing Table | Remote Lo0 address | 192.168.255.10 | PASS |  |
| 411 | DC1-SPINE1 | Routing Table | Remote Lo0 address | 192.168.255.13 | PASS |  |
| 412 | DC1-SPINE2 | Routing Table | Remote Lo0 address | 192.168.255.11 | PASS |  |
| 413 | DC1-SPINE2 | Routing Table | Remote Lo0 address | 192.168.255.12 | PASS |  |
| 414 | DC1-SPINE2 | Routing Table | Remote Lo0 address | 192.168.255.3 | PASS |  |
| 415 | DC1-SPINE2 | Routing Table | Remote Lo0 address | 192.168.255.4 | PASS |  |
| 416 | DC1-SPINE2 | Routing Table | Remote Lo0 address | 192.168.255.5 | PASS |  |
| 417 | DC1-SPINE2 | Routing Table | Remote Lo0 address | 192.168.255.6 | PASS |  |
| 418 | DC1-SPINE2 | Routing Table | Remote Lo0 address | 192.168.255.10 | PASS |  |
| 419 | DC1-SPINE2 | Routing Table | Remote Lo0 address | 192.168.255.13 | PASS |  |
| 420 | DC1-BL1A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-BL1A - 192.168.255.11 Destination: 192.168.255.11 | PASS |  |
| 421 | DC1-BL1A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-BL1A - 192.168.255.11 Destination: 192.168.255.12 | PASS |  |
| 422 | DC1-BL1A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-BL1A - 192.168.255.11 Destination: 192.168.255.3 | PASS |  |
| 423 | DC1-BL1A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-BL1A - 192.168.255.11 Destination: 192.168.255.4 | PASS |  |
| 424 | DC1-BL1A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-BL1A - 192.168.255.11 Destination: 192.168.255.5 | PASS |  |
| 425 | DC1-BL1A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-BL1A - 192.168.255.11 Destination: 192.168.255.6 | PASS |  |
| 426 | DC1-BL1A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-BL1A - 192.168.255.11 Destination: 192.168.255.10 | PASS |  |
| 427 | DC1-BL1A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-BL1A - 192.168.255.11 Destination: 192.168.255.13 | PASS |  |
| 428 | DC1-BL1B | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-BL1B - 192.168.255.12 Destination: 192.168.255.11 | PASS |  |
| 429 | DC1-BL1B | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-BL1B - 192.168.255.12 Destination: 192.168.255.12 | PASS |  |
| 430 | DC1-BL1B | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-BL1B - 192.168.255.12 Destination: 192.168.255.3 | PASS |  |
| 431 | DC1-BL1B | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-BL1B - 192.168.255.12 Destination: 192.168.255.4 | PASS |  |
| 432 | DC1-BL1B | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-BL1B - 192.168.255.12 Destination: 192.168.255.5 | PASS |  |
| 433 | DC1-BL1B | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-BL1B - 192.168.255.12 Destination: 192.168.255.6 | PASS |  |
| 434 | DC1-BL1B | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-BL1B - 192.168.255.12 Destination: 192.168.255.10 | PASS |  |
| 435 | DC1-BL1B | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-BL1B - 192.168.255.12 Destination: 192.168.255.13 | PASS |  |
| 436 | DC1-LEAF1A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF1A - 192.168.255.3 Destination: 192.168.255.11 | PASS |  |
| 437 | DC1-LEAF1A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF1A - 192.168.255.3 Destination: 192.168.255.12 | PASS |  |
| 438 | DC1-LEAF1A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF1A - 192.168.255.3 Destination: 192.168.255.3 | PASS |  |
| 439 | DC1-LEAF1A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF1A - 192.168.255.3 Destination: 192.168.255.4 | PASS |  |
| 440 | DC1-LEAF1A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF1A - 192.168.255.3 Destination: 192.168.255.5 | PASS |  |
| 441 | DC1-LEAF1A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF1A - 192.168.255.3 Destination: 192.168.255.6 | PASS |  |
| 442 | DC1-LEAF1A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF1A - 192.168.255.3 Destination: 192.168.255.10 | PASS |  |
| 443 | DC1-LEAF1A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF1A - 192.168.255.3 Destination: 192.168.255.13 | PASS |  |
| 444 | DC1-LEAF1B | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF1B - 192.168.255.4 Destination: 192.168.255.11 | PASS |  |
| 445 | DC1-LEAF1B | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF1B - 192.168.255.4 Destination: 192.168.255.12 | PASS |  |
| 446 | DC1-LEAF1B | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF1B - 192.168.255.4 Destination: 192.168.255.3 | PASS |  |
| 447 | DC1-LEAF1B | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF1B - 192.168.255.4 Destination: 192.168.255.4 | PASS |  |
| 448 | DC1-LEAF1B | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF1B - 192.168.255.4 Destination: 192.168.255.5 | PASS |  |
| 449 | DC1-LEAF1B | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF1B - 192.168.255.4 Destination: 192.168.255.6 | PASS |  |
| 450 | DC1-LEAF1B | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF1B - 192.168.255.4 Destination: 192.168.255.10 | PASS |  |
| 451 | DC1-LEAF1B | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF1B - 192.168.255.4 Destination: 192.168.255.13 | PASS |  |
| 452 | DC1-LEAF2A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF2A - 192.168.255.5 Destination: 192.168.255.11 | PASS |  |
| 453 | DC1-LEAF2A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF2A - 192.168.255.5 Destination: 192.168.255.12 | PASS |  |
| 454 | DC1-LEAF2A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF2A - 192.168.255.5 Destination: 192.168.255.3 | PASS |  |
| 455 | DC1-LEAF2A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF2A - 192.168.255.5 Destination: 192.168.255.4 | PASS |  |
| 456 | DC1-LEAF2A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF2A - 192.168.255.5 Destination: 192.168.255.5 | PASS |  |
| 457 | DC1-LEAF2A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF2A - 192.168.255.5 Destination: 192.168.255.6 | PASS |  |
| 458 | DC1-LEAF2A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF2A - 192.168.255.5 Destination: 192.168.255.10 | PASS |  |
| 459 | DC1-LEAF2A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF2A - 192.168.255.5 Destination: 192.168.255.13 | PASS |  |
| 460 | DC1-LEAF2B | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF2B - 192.168.255.6 Destination: 192.168.255.11 | PASS |  |
| 461 | DC1-LEAF2B | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF2B - 192.168.255.6 Destination: 192.168.255.12 | PASS |  |
| 462 | DC1-LEAF2B | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF2B - 192.168.255.6 Destination: 192.168.255.3 | PASS |  |
| 463 | DC1-LEAF2B | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF2B - 192.168.255.6 Destination: 192.168.255.4 | PASS |  |
| 464 | DC1-LEAF2B | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF2B - 192.168.255.6 Destination: 192.168.255.5 | PASS |  |
| 465 | DC1-LEAF2B | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF2B - 192.168.255.6 Destination: 192.168.255.6 | PASS |  |
| 466 | DC1-LEAF2B | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF2B - 192.168.255.6 Destination: 192.168.255.10 | PASS |  |
| 467 | DC1-LEAF2B | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF2B - 192.168.255.6 Destination: 192.168.255.13 | PASS |  |
| 468 | DC1-LEAF3A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF3A - 192.168.255.10 Destination: 192.168.255.11 | PASS |  |
| 469 | DC1-LEAF3A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF3A - 192.168.255.10 Destination: 192.168.255.12 | PASS |  |
| 470 | DC1-LEAF3A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF3A - 192.168.255.10 Destination: 192.168.255.3 | PASS |  |
| 471 | DC1-LEAF3A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF3A - 192.168.255.10 Destination: 192.168.255.4 | PASS |  |
| 472 | DC1-LEAF3A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF3A - 192.168.255.10 Destination: 192.168.255.5 | PASS |  |
| 473 | DC1-LEAF3A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF3A - 192.168.255.10 Destination: 192.168.255.6 | PASS |  |
| 474 | DC1-LEAF3A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF3A - 192.168.255.10 Destination: 192.168.255.10 | PASS |  |
| 475 | DC1-LEAF3A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF3A - 192.168.255.10 Destination: 192.168.255.13 | PASS |  |
| 476 | DC1-LEAF4A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF4A - 192.168.255.13 Destination: 192.168.255.11 | PASS |  |
| 477 | DC1-LEAF4A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF4A - 192.168.255.13 Destination: 192.168.255.12 | PASS |  |
| 478 | DC1-LEAF4A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF4A - 192.168.255.13 Destination: 192.168.255.3 | PASS |  |
| 479 | DC1-LEAF4A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF4A - 192.168.255.13 Destination: 192.168.255.4 | PASS |  |
| 480 | DC1-LEAF4A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF4A - 192.168.255.13 Destination: 192.168.255.5 | PASS |  |
| 481 | DC1-LEAF4A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF4A - 192.168.255.13 Destination: 192.168.255.6 | PASS |  |
| 482 | DC1-LEAF4A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF4A - 192.168.255.13 Destination: 192.168.255.10 | PASS |  |
| 483 | DC1-LEAF4A | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-LEAF4A - 192.168.255.13 Destination: 192.168.255.13 | PASS |  |
| 484 | DC1-SPINE1 | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-SPINE1 - 192.168.255.1 Destination: 192.168.255.11 | PASS |  |
| 485 | DC1-SPINE1 | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-SPINE1 - 192.168.255.1 Destination: 192.168.255.12 | PASS |  |
| 486 | DC1-SPINE1 | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-SPINE1 - 192.168.255.1 Destination: 192.168.255.3 | PASS |  |
| 487 | DC1-SPINE1 | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-SPINE1 - 192.168.255.1 Destination: 192.168.255.4 | PASS |  |
| 488 | DC1-SPINE1 | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-SPINE1 - 192.168.255.1 Destination: 192.168.255.5 | PASS |  |
| 489 | DC1-SPINE1 | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-SPINE1 - 192.168.255.1 Destination: 192.168.255.6 | PASS |  |
| 490 | DC1-SPINE1 | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-SPINE1 - 192.168.255.1 Destination: 192.168.255.10 | PASS |  |
| 491 | DC1-SPINE1 | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-SPINE1 - 192.168.255.1 Destination: 192.168.255.13 | PASS |  |
| 492 | DC1-SPINE2 | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-SPINE2 - 192.168.255.2 Destination: 192.168.255.11 | PASS |  |
| 493 | DC1-SPINE2 | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-SPINE2 - 192.168.255.2 Destination: 192.168.255.12 | PASS |  |
| 494 | DC1-SPINE2 | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-SPINE2 - 192.168.255.2 Destination: 192.168.255.3 | PASS |  |
| 495 | DC1-SPINE2 | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-SPINE2 - 192.168.255.2 Destination: 192.168.255.4 | PASS |  |
| 496 | DC1-SPINE2 | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-SPINE2 - 192.168.255.2 Destination: 192.168.255.5 | PASS |  |
| 497 | DC1-SPINE2 | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-SPINE2 - 192.168.255.2 Destination: 192.168.255.6 | PASS |  |
| 498 | DC1-SPINE2 | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-SPINE2 - 192.168.255.2 Destination: 192.168.255.10 | PASS |  |
| 499 | DC1-SPINE2 | Loopback0 Reachability | Loopback0 Reachability | Source: DC1-SPINE2 - 192.168.255.2 Destination: 192.168.255.13 | PASS |  |
