
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
| 344 | 335 | 9 |

### Summary Totals Devices Under Tests

| DUT | Total Tests | Tests Passed | Tests Failed | Categories Failed |
| --- | ----------- | ------------ | ------------ | ----------------- |
| DC1-BL1A |  31 | 29 | 2 | BGP |
| DC1-BL1B |  31 | 29 | 2 | BGP |
| DC1-L2LEAF1A |  7 | 7 | 0 | - |
| DC1-L2LEAF2A |  7 | 7 | 0 | - |
| DC1-LEAF1A |  35 | 34 | 1 | Interface State |
| DC1-LEAF1B |  35 | 34 | 1 | Interface State |
| DC1-LEAF2A |  35 | 34 | 1 | Interface State |
| DC1-LEAF2B |  35 | 34 | 1 | Interface State |
| DC1-LEAF3A |  21 | 20 | 1 | Interface State |
| DC1-LEAF4A |  21 | 21 | 0 | - |
| DC1-SPINE1 |  43 | 43 | 0 | - |
| DC1-SPINE2 |  43 | 43 | 0 | - |

### Summary Totals Per Category

| Test Category | Total Tests | Tests Passed | Tests Failed |
| ------------- | ----------- | ------------ | ------------ |
| NTP |  12 | 12 | 0 |
| Interface State |  156 | 151 | 5 |
| LLDP Topology |  52 | 52 | 0 |
| MLAG |  6 | 6 | 0 |
| IP Reachability |  28 | 28 | 0 |
| BGP |  90 | 86 | 4 |

## Failed Test Results Summary

| Test ID | Node | Test Category | Test Description | Test | Test Result | Failure Reason |
| ------- | ---- | ------------- | ---------------- | ---- | ----------- | -------------- |
| 81 | DC1-LEAF1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel6 - server01_MLAG_data | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 84 | DC1-LEAF1B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel6 - server01_MLAG_data | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 87 | DC1-LEAF2A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel6 - server02_MLAG_data | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 90 | DC1-LEAF2B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel6 - server02_MLAG_data | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 91 | DC1-LEAF3A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel7 - POD03-ESI_data | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 266 | DC1-BL1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.255.0.0 | FAIL | Session state "Active" |
| 270 | DC1-BL1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.255.0.2 | FAIL | Session state "Active" |
| 306 | DC1-BL1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.255.0.0 | FAIL | Session state "Active" |
| 310 | DC1-BL1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.255.0.2 | FAIL | Session state "Active" |

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
| 13 | DC1-BL1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet6 | PASS |  |
| 14 | DC1-BL1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet6 | PASS |  |
| 15 | DC1-BL1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - MLAG_PEER_DC1-BL1B_Ethernet3 | PASS |  |
| 16 | DC1-BL1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - MLAG_PEER_DC1-BL1B_Ethernet4 | PASS |  |
| 17 | DC1-BL1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - P2P_LINK_TO_DC2-BL01B_Ethernet5 | PASS |  |
| 18 | DC1-BL1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet7 | PASS |  |
| 19 | DC1-BL1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet7 | PASS |  |
| 20 | DC1-BL1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - MLAG_PEER_DC1-BL1A_Ethernet3 | PASS |  |
| 21 | DC1-BL1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - MLAG_PEER_DC1-BL1A_Ethernet4 | PASS |  |
| 22 | DC1-BL1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - P2P_LINK_TO_DC2-BL01A_Ethernet5 | PASS |  |
| 23 | DC1-L2LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - DC1-LEAF1A_Ethernet5 | PASS |  |
| 24 | DC1-L2LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - DC1-LEAF1B_Ethernet5 | PASS |  |
| 25 | DC1-L2LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - POD01-SRV_Eth1 | PASS |  |
| 26 | DC1-L2LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - DC1-LEAF2A_Ethernet5 | PASS |  |
| 27 | DC1-L2LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - DC1-LEAF2B_Ethernet5 | PASS |  |
| 28 | DC1-L2LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - POD02-SRV_Eth1 | PASS |  |
| 29 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet1 | PASS |  |
| 30 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet1 | PASS |  |
| 31 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - MLAG_PEER_DC1-LEAF1B_Ethernet3 | PASS |  |
| 32 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - MLAG_PEER_DC1-LEAF1B_Ethernet4 | PASS |  |
| 33 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - DC1-L2LEAF1A_Ethernet1 | PASS |  |
| 34 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - server01_MLAG_Eth0 | PASS |  |
| 35 | DC1-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet2 | PASS |  |
| 36 | DC1-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet2 | PASS |  |
| 37 | DC1-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - MLAG_PEER_DC1-LEAF1A_Ethernet3 | PASS |  |
| 38 | DC1-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - MLAG_PEER_DC1-LEAF1A_Ethernet4 | PASS |  |
| 39 | DC1-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - DC1-L2LEAF1A_Ethernet2 | PASS |  |
| 40 | DC1-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - server01_MLAG_Eth1 | PASS |  |
| 41 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet3 | PASS |  |
| 42 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet3 | PASS |  |
| 43 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - MLAG_PEER_DC1-LEAF2B_Ethernet3 | PASS |  |
| 44 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - MLAG_PEER_DC1-LEAF2B_Ethernet4 | PASS |  |
| 45 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - DC1-L2LEAF2A_Ethernet1 | PASS |  |
| 46 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - server02_MLAG_Eth0 | PASS |  |
| 47 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet4 | PASS |  |
| 48 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet4 | PASS |  |
| 49 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - MLAG_PEER_DC1-LEAF2A_Ethernet3 | PASS |  |
| 50 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - MLAG_PEER_DC1-LEAF2A_Ethernet4 | PASS |  |
| 51 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - DC1-L2LEAF2A_Ethernet2 | PASS |  |
| 52 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - server02_MLAG_Eth1 | PASS |  |
| 53 | DC1-LEAF3A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet5 | PASS |  |
| 54 | DC1-LEAF3A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet5 | PASS |  |
| 55 | DC1-LEAF3A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet7 - POD03-ESI_Eth0 | PASS |  |
| 56 | DC1-LEAF4A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet8 | PASS |  |
| 57 | DC1-LEAF4A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet8 | PASS |  |
| 58 | DC1-LEAF4A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet7 - POD03-ESI_Eth1 | PASS |  |
| 59 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - P2P_LINK_TO_DC1-BL1A_Ethernet1 | PASS |  |
| 60 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet7 - P2P_LINK_TO_DC1-BL1B_Ethernet1 | PASS |  |
| 61 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-LEAF1A_Ethernet1 | PASS |  |
| 62 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-LEAF1B_Ethernet1 | PASS |  |
| 63 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_DC1-LEAF2A_Ethernet1 | PASS |  |
| 64 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_DC1-LEAF2B_Ethernet1 | PASS |  |
| 65 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - P2P_LINK_TO_DC1-LEAF3A_Ethernet1 | PASS |  |
| 66 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet8 - P2P_LINK_TO_DC1-LEAF4A_Ethernet1 | PASS |  |
| 67 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - P2P_LINK_TO_DC1-BL1A_Ethernet2 | PASS |  |
| 68 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet7 - P2P_LINK_TO_DC1-BL1B_Ethernet2 | PASS |  |
| 69 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-LEAF1A_Ethernet2 | PASS |  |
| 70 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-LEAF1B_Ethernet2 | PASS |  |
| 71 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_DC1-LEAF2A_Ethernet2 | PASS |  |
| 72 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_DC1-LEAF2B_Ethernet2 | PASS |  |
| 73 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - P2P_LINK_TO_DC1-LEAF3A_Ethernet2 | PASS |  |
| 74 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet8 - P2P_LINK_TO_DC1-LEAF4A_Ethernet2 | PASS |  |
| 75 | DC1-BL1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_DC1-BL1B_Po3 | PASS |  |
| 76 | DC1-BL1B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_DC1-BL1A_Po3 | PASS |  |
| 77 | DC1-L2LEAF1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel1 - DC1-LEAF1A_Po5 | PASS |  |
| 78 | DC1-L2LEAF2A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel1 - DC1-LEAF2A_Po5 | PASS |  |
| 79 | DC1-LEAF1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel5 - DC1_L2LEAF1_Po1 | PASS |  |
| 80 | DC1-LEAF1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_DC1-LEAF1B_Po3 | PASS |  |
| 81 | DC1-LEAF1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel6 - server01_MLAG_data | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 82 | DC1-LEAF1B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel5 - DC1_L2LEAF1_Po1 | PASS |  |
| 83 | DC1-LEAF1B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_DC1-LEAF1A_Po3 | PASS |  |
| 84 | DC1-LEAF1B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel6 - server01_MLAG_data | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 85 | DC1-LEAF2A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel5 - DC1_L2LEAF2_Po1 | PASS |  |
| 86 | DC1-LEAF2A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_DC1-LEAF2B_Po3 | PASS |  |
| 87 | DC1-LEAF2A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel6 - server02_MLAG_data | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 88 | DC1-LEAF2B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel5 - DC1_L2LEAF2_Po1 | PASS |  |
| 89 | DC1-LEAF2B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_DC1-LEAF2A_Po3 | PASS |  |
| 90 | DC1-LEAF2B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel6 - server02_MLAG_data | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 91 | DC1-LEAF3A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel7 - POD03-ESI_data | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 92 | DC1-LEAF4A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel7 - POD03-ESI_data | PASS |  |
| 93 | DC1-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | PASS |  |
| 94 | DC1-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - Tenant_A_OP_Zone_2 | PASS |  |
| 95 | DC1-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan114 - Tenant_A_OP_Zone_3 | PASS |  |
| 96 | DC1-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | PASS |  |
| 97 | DC1-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 98 | DC1-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 99 | DC1-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | PASS |  |
| 100 | DC1-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - Tenant_A_OP_Zone_2 | PASS |  |
| 101 | DC1-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan114 - Tenant_A_OP_Zone_3 | PASS |  |
| 102 | DC1-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | PASS |  |
| 103 | DC1-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 104 | DC1-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 105 | DC1-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 106 | DC1-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 107 | DC1-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | PASS |  |
| 108 | DC1-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - Tenant_A_OP_Zone_2 | PASS |  |
| 109 | DC1-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan114 - Tenant_A_OP_Zone_3 | PASS |  |
| 110 | DC1-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | PASS |  |
| 111 | DC1-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 112 | DC1-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 113 | DC1-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | PASS |  |
| 114 | DC1-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - Tenant_A_OP_Zone_2 | PASS |  |
| 115 | DC1-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan114 - Tenant_A_OP_Zone_3 | PASS |  |
| 116 | DC1-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | PASS |  |
| 117 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 118 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 119 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | PASS |  |
| 120 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - Tenant_A_OP_Zone_2 | PASS |  |
| 121 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan114 - Tenant_A_OP_Zone_3 | PASS |  |
| 122 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | PASS |  |
| 123 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 124 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 125 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | PASS |  |
| 126 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - Tenant_A_OP_Zone_2 | PASS |  |
| 127 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan114 - Tenant_A_OP_Zone_3 | PASS |  |
| 128 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | PASS |  |
| 129 | DC1-LEAF3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | PASS |  |
| 130 | DC1-LEAF3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - Tenant_A_OP_Zone_2 | PASS |  |
| 131 | DC1-LEAF3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan114 - Tenant_A_OP_Zone_3 | PASS |  |
| 132 | DC1-LEAF4A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | PASS |  |
| 133 | DC1-LEAF4A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - Tenant_A_OP_Zone_2 | PASS |  |
| 134 | DC1-LEAF4A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan114 - Tenant_A_OP_Zone_3 | PASS |  |
| 135 | DC1-BL1A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 136 | DC1-BL1B | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 137 | DC1-LEAF1A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 138 | DC1-LEAF1B | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 139 | DC1-LEAF2A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 140 | DC1-LEAF2B | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 141 | DC1-LEAF3A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 142 | DC1-LEAF4A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 143 | DC1-BL1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 144 | DC1-BL1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 145 | DC1-BL1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | PASS |  |
| 146 | DC1-BL1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 147 | DC1-BL1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 148 | DC1-BL1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | PASS |  |
| 149 | DC1-LEAF1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 150 | DC1-LEAF1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 151 | DC1-LEAF1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | PASS |  |
| 152 | DC1-LEAF1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 153 | DC1-LEAF1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 154 | DC1-LEAF1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | PASS |  |
| 155 | DC1-LEAF2A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 156 | DC1-LEAF2A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 157 | DC1-LEAF2A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | PASS |  |
| 158 | DC1-LEAF2B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 159 | DC1-LEAF2B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 160 | DC1-LEAF2B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | PASS |  |
| 161 | DC1-LEAF3A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 162 | DC1-LEAF3A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 163 | DC1-LEAF3A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | PASS |  |
| 164 | DC1-LEAF4A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 165 | DC1-LEAF4A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 166 | DC1-LEAF4A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | PASS |  |
| 167 | DC1-SPINE1 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 168 | DC1-SPINE2 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 169 | DC1-BL1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet6 | PASS |  |
| 170 | DC1-BL1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet6 | PASS |  |
| 171 | DC1-BL1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet3 - MLAG_PEER_DC1-BL1B_Ethernet3 | PASS |  |
| 172 | DC1-BL1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet4 - MLAG_PEER_DC1-BL1B_Ethernet4 | PASS |  |
| 173 | DC1-BL1B | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet7 | PASS |  |
| 174 | DC1-BL1B | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet7 | PASS |  |
| 175 | DC1-BL1B | LLDP Topology | lldp topology - validate peer and interface | Ethernet3 - MLAG_PEER_DC1-BL1A_Ethernet3 | PASS |  |
| 176 | DC1-BL1B | LLDP Topology | lldp topology - validate peer and interface | Ethernet4 - MLAG_PEER_DC1-BL1A_Ethernet4 | PASS |  |
| 177 | DC1-L2LEAF1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - DC1-LEAF1A_Ethernet5 | PASS |  |
| 178 | DC1-L2LEAF1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - DC1-LEAF1B_Ethernet5 | PASS |  |
| 179 | DC1-L2LEAF2A | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - DC1-LEAF2A_Ethernet5 | PASS |  |
| 180 | DC1-L2LEAF2A | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - DC1-LEAF2B_Ethernet5 | PASS |  |
| 181 | DC1-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet1 | PASS |  |
| 182 | DC1-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet1 | PASS |  |
| 183 | DC1-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet3 - MLAG_PEER_DC1-LEAF1B_Ethernet3 | PASS |  |
| 184 | DC1-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet4 - MLAG_PEER_DC1-LEAF1B_Ethernet4 | PASS |  |
| 185 | DC1-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet5 - DC1-L2LEAF1A_Ethernet1 | PASS |  |
| 186 | DC1-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet2 | PASS |  |
| 187 | DC1-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet2 | PASS |  |
| 188 | DC1-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | Ethernet3 - MLAG_PEER_DC1-LEAF1A_Ethernet3 | PASS |  |
| 189 | DC1-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | Ethernet4 - MLAG_PEER_DC1-LEAF1A_Ethernet4 | PASS |  |
| 190 | DC1-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | Ethernet5 - DC1-L2LEAF1A_Ethernet2 | PASS |  |
| 191 | DC1-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet3 | PASS |  |
| 192 | DC1-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet3 | PASS |  |
| 193 | DC1-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | Ethernet3 - MLAG_PEER_DC1-LEAF2B_Ethernet3 | PASS |  |
| 194 | DC1-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | Ethernet4 - MLAG_PEER_DC1-LEAF2B_Ethernet4 | PASS |  |
| 195 | DC1-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | Ethernet5 - DC1-L2LEAF2A_Ethernet1 | PASS |  |
| 196 | DC1-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet4 | PASS |  |
| 197 | DC1-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet4 | PASS |  |
| 198 | DC1-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | Ethernet3 - MLAG_PEER_DC1-LEAF2A_Ethernet3 | PASS |  |
| 199 | DC1-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | Ethernet4 - MLAG_PEER_DC1-LEAF2A_Ethernet4 | PASS |  |
| 200 | DC1-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | Ethernet5 - DC1-L2LEAF2A_Ethernet2 | PASS |  |
| 201 | DC1-LEAF3A | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet5 | PASS |  |
| 202 | DC1-LEAF3A | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet5 | PASS |  |
| 203 | DC1-LEAF4A | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet8 | PASS |  |
| 204 | DC1-LEAF4A | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet8 | PASS |  |
| 205 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | Ethernet6 - P2P_LINK_TO_DC1-BL1A_Ethernet1 | PASS |  |
| 206 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | Ethernet7 - P2P_LINK_TO_DC1-BL1B_Ethernet1 | PASS |  |
| 207 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - P2P_LINK_TO_DC1-LEAF1A_Ethernet1 | PASS |  |
| 208 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - P2P_LINK_TO_DC1-LEAF1B_Ethernet1 | PASS |  |
| 209 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | Ethernet3 - P2P_LINK_TO_DC1-LEAF2A_Ethernet1 | PASS |  |
| 210 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | Ethernet4 - P2P_LINK_TO_DC1-LEAF2B_Ethernet1 | PASS |  |
| 211 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | Ethernet5 - P2P_LINK_TO_DC1-LEAF3A_Ethernet1 | PASS |  |
| 212 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | Ethernet8 - P2P_LINK_TO_DC1-LEAF4A_Ethernet1 | PASS |  |
| 213 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | Ethernet6 - P2P_LINK_TO_DC1-BL1A_Ethernet2 | PASS |  |
| 214 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | Ethernet7 - P2P_LINK_TO_DC1-BL1B_Ethernet2 | PASS |  |
| 215 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - P2P_LINK_TO_DC1-LEAF1A_Ethernet2 | PASS |  |
| 216 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - P2P_LINK_TO_DC1-LEAF1B_Ethernet2 | PASS |  |
| 217 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | Ethernet3 - P2P_LINK_TO_DC1-LEAF2A_Ethernet2 | PASS |  |
| 218 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | Ethernet4 - P2P_LINK_TO_DC1-LEAF2B_Ethernet2 | PASS |  |
| 219 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | Ethernet5 - P2P_LINK_TO_DC1-LEAF3A_Ethernet2 | PASS |  |
| 220 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | Ethernet8 - P2P_LINK_TO_DC1-LEAF4A_Ethernet2 | PASS |  |
| 221 | DC1-BL1A | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 222 | DC1-BL1B | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 223 | DC1-LEAF1A | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 224 | DC1-LEAF1B | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 225 | DC1-LEAF2A | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 226 | DC1-LEAF2B | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 227 | DC1-LEAF1A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF1A_Ethernet1 | Destination: DC1-SPINE1_Ethernet1 | PASS |  |
| 228 | DC1-LEAF1A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF1A_Ethernet2 | Destination: DC1-SPINE2_Ethernet1 | PASS |  |
| 229 | DC1-LEAF1B | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF1B_Ethernet1 | Destination: DC1-SPINE1_Ethernet2 | PASS |  |
| 230 | DC1-LEAF1B | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF1B_Ethernet2 | Destination: DC1-SPINE2_Ethernet2 | PASS |  |
| 231 | DC1-LEAF2A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF2A_Ethernet1 | Destination: DC1-SPINE1_Ethernet3 | PASS |  |
| 232 | DC1-LEAF2A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF2A_Ethernet2 | Destination: DC1-SPINE2_Ethernet3 | PASS |  |
| 233 | DC1-LEAF2B | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF2B_Ethernet1 | Destination: DC1-SPINE1_Ethernet4 | PASS |  |
| 234 | DC1-LEAF2B | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF2B_Ethernet2 | Destination: DC1-SPINE2_Ethernet4 | PASS |  |
| 235 | DC1-LEAF3A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF3A_Ethernet1 | Destination: DC1-SPINE1_Ethernet5 | PASS |  |
| 236 | DC1-LEAF3A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF3A_Ethernet2 | Destination: DC1-SPINE2_Ethernet5 | PASS |  |
| 237 | DC1-LEAF4A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF4A_Ethernet1 | Destination: DC1-SPINE1_Ethernet8 | PASS |  |
| 238 | DC1-LEAF4A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF4A_Ethernet2 | Destination: DC1-SPINE2_Ethernet8 | PASS |  |
| 239 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet6 | Destination: DC1-BL1A_Ethernet1 | PASS |  |
| 240 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet7 | Destination: DC1-BL1B_Ethernet1 | PASS |  |
| 241 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet1 | Destination: DC1-LEAF1A_Ethernet1 | PASS |  |
| 242 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet2 | Destination: DC1-LEAF1B_Ethernet1 | PASS |  |
| 243 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet3 | Destination: DC1-LEAF2A_Ethernet1 | PASS |  |
| 244 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet4 | Destination: DC1-LEAF2B_Ethernet1 | PASS |  |
| 245 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet5 | Destination: DC1-LEAF3A_Ethernet1 | PASS |  |
| 246 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet8 | Destination: DC1-LEAF4A_Ethernet1 | PASS |  |
| 247 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet6 | Destination: DC1-BL1A_Ethernet2 | PASS |  |
| 248 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet7 | Destination: DC1-BL1B_Ethernet2 | PASS |  |
| 249 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet1 | Destination: DC1-LEAF1A_Ethernet2 | PASS |  |
| 250 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet2 | Destination: DC1-LEAF1B_Ethernet2 | PASS |  |
| 251 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet3 | Destination: DC1-LEAF2A_Ethernet2 | PASS |  |
| 252 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet4 | Destination: DC1-LEAF2B_Ethernet2 | PASS |  |
| 253 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet5 | Destination: DC1-LEAF3A_Ethernet2 | PASS |  |
| 254 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet8 | Destination: DC1-LEAF4A_Ethernet2 | PASS |  |
| 255 | DC1-BL1A | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 256 | DC1-BL1B | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 257 | DC1-LEAF1A | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 258 | DC1-LEAF1B | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 259 | DC1-LEAF2A | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 260 | DC1-LEAF2B | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 261 | DC1-LEAF3A | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 262 | DC1-LEAF4A | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 263 | DC1-SPINE1 | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 264 | DC1-SPINE2 | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 265 | DC1-BL1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.17 | PASS |  |
| 266 | DC1-BL1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.255.0.0 | FAIL | Session state "Active" |
| 267 | DC1-BL1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.32 | PASS |  |
| 268 | DC1-BL1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.34 | PASS |  |
| 269 | DC1-BL1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.16 | PASS |  |
| 270 | DC1-BL1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.255.0.2 | FAIL | Session state "Active" |
| 271 | DC1-BL1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.36 | PASS |  |
| 272 | DC1-BL1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.38 | PASS |  |
| 273 | DC1-LEAF1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.0 | PASS |  |
| 274 | DC1-LEAF1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.2 | PASS |  |
| 275 | DC1-LEAF1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.1 | PASS |  |
| 276 | DC1-LEAF1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.4 | PASS |  |
| 277 | DC1-LEAF1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.6 | PASS |  |
| 278 | DC1-LEAF1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.0 | PASS |  |
| 279 | DC1-LEAF2A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.8 | PASS |  |
| 280 | DC1-LEAF2A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.10 | PASS |  |
| 281 | DC1-LEAF2A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.5 | PASS |  |
| 282 | DC1-LEAF2B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.12 | PASS |  |
| 283 | DC1-LEAF2B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.14 | PASS |  |
| 284 | DC1-LEAF2B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.4 | PASS |  |
| 285 | DC1-LEAF3A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.28 | PASS |  |
| 286 | DC1-LEAF3A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.30 | PASS |  |
| 287 | DC1-LEAF4A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.40 | PASS |  |
| 288 | DC1-LEAF4A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.42 | PASS |  |
| 289 | DC1-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.33 | PASS |  |
| 290 | DC1-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.37 | PASS |  |
| 291 | DC1-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.1 | PASS |  |
| 292 | DC1-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.5 | PASS |  |
| 293 | DC1-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.9 | PASS |  |
| 294 | DC1-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.13 | PASS |  |
| 295 | DC1-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.29 | PASS |  |
| 296 | DC1-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.41 | PASS |  |
| 297 | DC1-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.35 | PASS |  |
| 298 | DC1-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.39 | PASS |  |
| 299 | DC1-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.3 | PASS |  |
| 300 | DC1-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.7 | PASS |  |
| 301 | DC1-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.11 | PASS |  |
| 302 | DC1-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.15 | PASS |  |
| 303 | DC1-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.31 | PASS |  |
| 304 | DC1-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.43 | PASS |  |
| 305 | DC1-BL1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.255.251.17 | PASS |  |
| 306 | DC1-BL1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.255.0.0 | FAIL | Session state "Active" |
| 307 | DC1-BL1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.32 | PASS |  |
| 308 | DC1-BL1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.34 | PASS |  |
| 309 | DC1-BL1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.255.251.16 | PASS |  |
| 310 | DC1-BL1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.255.0.2 | FAIL | Session state "Active" |
| 311 | DC1-BL1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.36 | PASS |  |
| 312 | DC1-BL1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.38 | PASS |  |
| 313 | DC1-LEAF1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.0 | PASS |  |
| 314 | DC1-LEAF1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.2 | PASS |  |
| 315 | DC1-LEAF1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.255.251.1 | PASS |  |
| 316 | DC1-LEAF1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.4 | PASS |  |
| 317 | DC1-LEAF1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.6 | PASS |  |
| 318 | DC1-LEAF1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.255.251.0 | PASS |  |
| 319 | DC1-LEAF2A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.8 | PASS |  |
| 320 | DC1-LEAF2A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.10 | PASS |  |
| 321 | DC1-LEAF2A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.255.251.5 | PASS |  |
| 322 | DC1-LEAF2B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.12 | PASS |  |
| 323 | DC1-LEAF2B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.14 | PASS |  |
| 324 | DC1-LEAF2B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.255.251.4 | PASS |  |
| 325 | DC1-LEAF3A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.28 | PASS |  |
| 326 | DC1-LEAF3A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.30 | PASS |  |
| 327 | DC1-LEAF4A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.40 | PASS |  |
| 328 | DC1-LEAF4A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.42 | PASS |  |
| 329 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.33 | PASS |  |
| 330 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.37 | PASS |  |
| 331 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.1 | PASS |  |
| 332 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.5 | PASS |  |
| 333 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.9 | PASS |  |
| 334 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.13 | PASS |  |
| 335 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.29 | PASS |  |
| 336 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.41 | PASS |  |
| 337 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.35 | PASS |  |
| 338 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.39 | PASS |  |
| 339 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.3 | PASS |  |
| 340 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.7 | PASS |  |
| 341 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.11 | PASS |  |
| 342 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.15 | PASS |  |
| 343 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.31 | PASS |  |
| 344 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.43 | PASS |  |
