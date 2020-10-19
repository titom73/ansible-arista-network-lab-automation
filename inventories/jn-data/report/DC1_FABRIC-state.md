
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
| 81 | DC1-LEAF1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel6 - server01_MLAG_data | :x: | interface status: down - line protocol status: lowerLayerDown |
| 84 | DC1-LEAF1B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel6 - server01_MLAG_data | :x: | interface status: down - line protocol status: lowerLayerDown |
| 87 | DC1-LEAF2A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel6 - server02_MLAG_data | :x: | interface status: down - line protocol status: lowerLayerDown |
| 90 | DC1-LEAF2B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel6 - server02_MLAG_data | :x: | interface status: down - line protocol status: lowerLayerDown |
| 91 | DC1-LEAF3A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel7 - POD03-ESI_data | :x: | interface status: down - line protocol status: lowerLayerDown |
| 266 | DC1-BL1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.255.0.0 | :x: | Session state "Active" |
| 270 | DC1-BL1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.255.0.2 | :x: | Session state "Active" |
| 306 | DC1-BL1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.255.0.0 | :x: | Session state "Active" |
| 310 | DC1-BL1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.255.0.2 | :x: | Session state "Active" |

## All Test Results

| Test ID | Node | Test Category | Test Description | Test | Test Result | Failure Reason |
| ------- | ---- | ------------- | ---------------- | ---- | ----------- | -------------- |
| 1 | DC1-BL1A | NTP | Synchronised with NTP server | NTP | :white_check_mark: |  |
| 2 | DC1-BL1B | NTP | Synchronised with NTP server | NTP | :white_check_mark: |  |
| 3 | DC1-L2LEAF1A | NTP | Synchronised with NTP server | NTP | :white_check_mark: |  |
| 4 | DC1-L2LEAF2A | NTP | Synchronised with NTP server | NTP | :white_check_mark: |  |
| 5 | DC1-LEAF1A | NTP | Synchronised with NTP server | NTP | :white_check_mark: |  |
| 6 | DC1-LEAF1B | NTP | Synchronised with NTP server | NTP | :white_check_mark: |  |
| 7 | DC1-LEAF2A | NTP | Synchronised with NTP server | NTP | :white_check_mark: |  |
| 8 | DC1-LEAF2B | NTP | Synchronised with NTP server | NTP | :white_check_mark: |  |
| 9 | DC1-LEAF3A | NTP | Synchronised with NTP server | NTP | :white_check_mark: |  |
| 10 | DC1-LEAF4A | NTP | Synchronised with NTP server | NTP | :white_check_mark: |  |
| 11 | DC1-SPINE1 | NTP | Synchronised with NTP server | NTP | :white_check_mark: |  |
| 12 | DC1-SPINE2 | NTP | Synchronised with NTP server | NTP | :white_check_mark: |  |
| 13 | DC1-BL1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet6 | :white_check_mark: |  |
| 14 | DC1-BL1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet6 | :white_check_mark: |  |
| 15 | DC1-BL1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - MLAG_PEER_DC1-BL1B_Ethernet3 | :white_check_mark: |  |
| 16 | DC1-BL1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - MLAG_PEER_DC1-BL1B_Ethernet4 | :white_check_mark: |  |
| 17 | DC1-BL1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - P2P_LINK_TO_DC2-BL01B_Ethernet5 | :white_check_mark: |  |
| 18 | DC1-BL1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet7 | :white_check_mark: |  |
| 19 | DC1-BL1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet7 | :white_check_mark: |  |
| 20 | DC1-BL1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - MLAG_PEER_DC1-BL1A_Ethernet3 | :white_check_mark: |  |
| 21 | DC1-BL1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - MLAG_PEER_DC1-BL1A_Ethernet4 | :white_check_mark: |  |
| 22 | DC1-BL1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - P2P_LINK_TO_DC2-BL01A_Ethernet5 | :white_check_mark: |  |
| 23 | DC1-L2LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - DC1-LEAF1A_Ethernet5 | :white_check_mark: |  |
| 24 | DC1-L2LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - DC1-LEAF1B_Ethernet5 | :white_check_mark: |  |
| 25 | DC1-L2LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - POD01-SRV_Eth1 | :white_check_mark: |  |
| 26 | DC1-L2LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - DC1-LEAF2A_Ethernet5 | :white_check_mark: |  |
| 27 | DC1-L2LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - DC1-LEAF2B_Ethernet5 | :white_check_mark: |  |
| 28 | DC1-L2LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - POD02-SRV_Eth1 | :white_check_mark: |  |
| 29 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet1 | :white_check_mark: |  |
| 30 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet1 | :white_check_mark: |  |
| 31 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - MLAG_PEER_DC1-LEAF1B_Ethernet3 | :white_check_mark: |  |
| 32 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - MLAG_PEER_DC1-LEAF1B_Ethernet4 | :white_check_mark: |  |
| 33 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - DC1-L2LEAF1A_Ethernet1 | :white_check_mark: |  |
| 34 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - server01_MLAG_Eth0 | :white_check_mark: |  |
| 35 | DC1-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet2 | :white_check_mark: |  |
| 36 | DC1-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet2 | :white_check_mark: |  |
| 37 | DC1-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - MLAG_PEER_DC1-LEAF1A_Ethernet3 | :white_check_mark: |  |
| 38 | DC1-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - MLAG_PEER_DC1-LEAF1A_Ethernet4 | :white_check_mark: |  |
| 39 | DC1-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - DC1-L2LEAF1A_Ethernet2 | :white_check_mark: |  |
| 40 | DC1-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - server01_MLAG_Eth1 | :white_check_mark: |  |
| 41 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet3 | :white_check_mark: |  |
| 42 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet3 | :white_check_mark: |  |
| 43 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - MLAG_PEER_DC1-LEAF2B_Ethernet3 | :white_check_mark: |  |
| 44 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - MLAG_PEER_DC1-LEAF2B_Ethernet4 | :white_check_mark: |  |
| 45 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - DC1-L2LEAF2A_Ethernet1 | :white_check_mark: |  |
| 46 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - server02_MLAG_Eth0 | :white_check_mark: |  |
| 47 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet4 | :white_check_mark: |  |
| 48 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet4 | :white_check_mark: |  |
| 49 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - MLAG_PEER_DC1-LEAF2A_Ethernet3 | :white_check_mark: |  |
| 50 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - MLAG_PEER_DC1-LEAF2A_Ethernet4 | :white_check_mark: |  |
| 51 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - DC1-L2LEAF2A_Ethernet2 | :white_check_mark: |  |
| 52 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - server02_MLAG_Eth1 | :white_check_mark: |  |
| 53 | DC1-LEAF3A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet5 | :white_check_mark: |  |
| 54 | DC1-LEAF3A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet5 | :white_check_mark: |  |
| 55 | DC1-LEAF3A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet7 - POD03-ESI_Eth0 | :white_check_mark: |  |
| 56 | DC1-LEAF4A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet8 | :white_check_mark: |  |
| 57 | DC1-LEAF4A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet8 | :white_check_mark: |  |
| 58 | DC1-LEAF4A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet7 - POD03-ESI_Eth1 | :white_check_mark: |  |
| 59 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - P2P_LINK_TO_DC1-BL1A_Ethernet1 | :white_check_mark: |  |
| 60 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet7 - P2P_LINK_TO_DC1-BL1B_Ethernet1 | :white_check_mark: |  |
| 61 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-LEAF1A_Ethernet1 | :white_check_mark: |  |
| 62 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-LEAF1B_Ethernet1 | :white_check_mark: |  |
| 63 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_DC1-LEAF2A_Ethernet1 | :white_check_mark: |  |
| 64 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_DC1-LEAF2B_Ethernet1 | :white_check_mark: |  |
| 65 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - P2P_LINK_TO_DC1-LEAF3A_Ethernet1 | :white_check_mark: |  |
| 66 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet8 - P2P_LINK_TO_DC1-LEAF4A_Ethernet1 | :white_check_mark: |  |
| 67 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - P2P_LINK_TO_DC1-BL1A_Ethernet2 | :white_check_mark: |  |
| 68 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet7 - P2P_LINK_TO_DC1-BL1B_Ethernet2 | :white_check_mark: |  |
| 69 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-LEAF1A_Ethernet2 | :white_check_mark: |  |
| 70 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-LEAF1B_Ethernet2 | :white_check_mark: |  |
| 71 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_DC1-LEAF2A_Ethernet2 | :white_check_mark: |  |
| 72 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_DC1-LEAF2B_Ethernet2 | :white_check_mark: |  |
| 73 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - P2P_LINK_TO_DC1-LEAF3A_Ethernet2 | :white_check_mark: |  |
| 74 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet8 - P2P_LINK_TO_DC1-LEAF4A_Ethernet2 | :white_check_mark: |  |
| 75 | DC1-BL1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_DC1-BL1B_Po3 | :white_check_mark: |  |
| 76 | DC1-BL1B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_DC1-BL1A_Po3 | :white_check_mark: |  |
| 77 | DC1-L2LEAF1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel1 - DC1-LEAF1A_Po5 | :white_check_mark: |  |
| 78 | DC1-L2LEAF2A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel1 - DC1-LEAF2A_Po5 | :white_check_mark: |  |
| 79 | DC1-LEAF1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel5 - DC1_L2LEAF1_Po1 | :white_check_mark: |  |
| 80 | DC1-LEAF1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_DC1-LEAF1B_Po3 | :white_check_mark: |  |
| 81 | DC1-LEAF1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel6 - server01_MLAG_data | :x: | interface status: down - line protocol status: lowerLayerDown |
| 82 | DC1-LEAF1B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel5 - DC1_L2LEAF1_Po1 | :white_check_mark: |  |
| 83 | DC1-LEAF1B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_DC1-LEAF1A_Po3 | :white_check_mark: |  |
| 84 | DC1-LEAF1B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel6 - server01_MLAG_data | :x: | interface status: down - line protocol status: lowerLayerDown |
| 85 | DC1-LEAF2A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel5 - DC1_L2LEAF2_Po1 | :white_check_mark: |  |
| 86 | DC1-LEAF2A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_DC1-LEAF2B_Po3 | :white_check_mark: |  |
| 87 | DC1-LEAF2A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel6 - server02_MLAG_data | :x: | interface status: down - line protocol status: lowerLayerDown |
| 88 | DC1-LEAF2B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel5 - DC1_L2LEAF2_Po1 | :white_check_mark: |  |
| 89 | DC1-LEAF2B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_DC1-LEAF2A_Po3 | :white_check_mark: |  |
| 90 | DC1-LEAF2B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel6 - server02_MLAG_data | :x: | interface status: down - line protocol status: lowerLayerDown |
| 91 | DC1-LEAF3A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel7 - POD03-ESI_data | :x: | interface status: down - line protocol status: lowerLayerDown |
| 92 | DC1-LEAF4A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel7 - POD03-ESI_data | :white_check_mark: |  |
| 93 | DC1-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | :white_check_mark: |  |
| 94 | DC1-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - Tenant_A_OP_Zone_2 | :white_check_mark: |  |
| 95 | DC1-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan114 - Tenant_A_OP_Zone_3 | :white_check_mark: |  |
| 96 | DC1-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | :white_check_mark: |  |
| 97 | DC1-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | :white_check_mark: |  |
| 98 | DC1-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | :white_check_mark: |  |
| 99 | DC1-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | :white_check_mark: |  |
| 100 | DC1-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - Tenant_A_OP_Zone_2 | :white_check_mark: |  |
| 101 | DC1-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan114 - Tenant_A_OP_Zone_3 | :white_check_mark: |  |
| 102 | DC1-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | :white_check_mark: |  |
| 103 | DC1-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | :white_check_mark: |  |
| 104 | DC1-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | :white_check_mark: |  |
| 105 | DC1-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | :white_check_mark: |  |
| 106 | DC1-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | :white_check_mark: |  |
| 107 | DC1-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | :white_check_mark: |  |
| 108 | DC1-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - Tenant_A_OP_Zone_2 | :white_check_mark: |  |
| 109 | DC1-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan114 - Tenant_A_OP_Zone_3 | :white_check_mark: |  |
| 110 | DC1-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | :white_check_mark: |  |
| 111 | DC1-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | :white_check_mark: |  |
| 112 | DC1-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | :white_check_mark: |  |
| 113 | DC1-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | :white_check_mark: |  |
| 114 | DC1-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - Tenant_A_OP_Zone_2 | :white_check_mark: |  |
| 115 | DC1-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan114 - Tenant_A_OP_Zone_3 | :white_check_mark: |  |
| 116 | DC1-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | :white_check_mark: |  |
| 117 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | :white_check_mark: |  |
| 118 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | :white_check_mark: |  |
| 119 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | :white_check_mark: |  |
| 120 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - Tenant_A_OP_Zone_2 | :white_check_mark: |  |
| 121 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan114 - Tenant_A_OP_Zone_3 | :white_check_mark: |  |
| 122 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | :white_check_mark: |  |
| 123 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | :white_check_mark: |  |
| 124 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | :white_check_mark: |  |
| 125 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | :white_check_mark: |  |
| 126 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - Tenant_A_OP_Zone_2 | :white_check_mark: |  |
| 127 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan114 - Tenant_A_OP_Zone_3 | :white_check_mark: |  |
| 128 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | :white_check_mark: |  |
| 129 | DC1-LEAF3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | :white_check_mark: |  |
| 130 | DC1-LEAF3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - Tenant_A_OP_Zone_2 | :white_check_mark: |  |
| 131 | DC1-LEAF3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan114 - Tenant_A_OP_Zone_3 | :white_check_mark: |  |
| 132 | DC1-LEAF4A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | :white_check_mark: |  |
| 133 | DC1-LEAF4A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - Tenant_A_OP_Zone_2 | :white_check_mark: |  |
| 134 | DC1-LEAF4A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan114 - Tenant_A_OP_Zone_3 | :white_check_mark: |  |
| 135 | DC1-BL1A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | :white_check_mark: |  |
| 136 | DC1-BL1B | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | :white_check_mark: |  |
| 137 | DC1-LEAF1A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | :white_check_mark: |  |
| 138 | DC1-LEAF1B | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | :white_check_mark: |  |
| 139 | DC1-LEAF2A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | :white_check_mark: |  |
| 140 | DC1-LEAF2B | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | :white_check_mark: |  |
| 141 | DC1-LEAF3A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | :white_check_mark: |  |
| 142 | DC1-LEAF4A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | :white_check_mark: |  |
| 143 | DC1-BL1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | :white_check_mark: |  |
| 144 | DC1-BL1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | :white_check_mark: |  |
| 145 | DC1-BL1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | :white_check_mark: |  |
| 146 | DC1-BL1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | :white_check_mark: |  |
| 147 | DC1-BL1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | :white_check_mark: |  |
| 148 | DC1-BL1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | :white_check_mark: |  |
| 149 | DC1-LEAF1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | :white_check_mark: |  |
| 150 | DC1-LEAF1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | :white_check_mark: |  |
| 151 | DC1-LEAF1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | :white_check_mark: |  |
| 152 | DC1-LEAF1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | :white_check_mark: |  |
| 153 | DC1-LEAF1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | :white_check_mark: |  |
| 154 | DC1-LEAF1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | :white_check_mark: |  |
| 155 | DC1-LEAF2A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | :white_check_mark: |  |
| 156 | DC1-LEAF2A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | :white_check_mark: |  |
| 157 | DC1-LEAF2A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | :white_check_mark: |  |
| 158 | DC1-LEAF2B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | :white_check_mark: |  |
| 159 | DC1-LEAF2B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | :white_check_mark: |  |
| 160 | DC1-LEAF2B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | :white_check_mark: |  |
| 161 | DC1-LEAF3A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | :white_check_mark: |  |
| 162 | DC1-LEAF3A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | :white_check_mark: |  |
| 163 | DC1-LEAF3A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | :white_check_mark: |  |
| 164 | DC1-LEAF4A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | :white_check_mark: |  |
| 165 | DC1-LEAF4A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | :white_check_mark: |  |
| 166 | DC1-LEAF4A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | :white_check_mark: |  |
| 167 | DC1-SPINE1 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | :white_check_mark: |  |
| 168 | DC1-SPINE2 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | :white_check_mark: |  |
| 169 | DC1-BL1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet6 | :white_check_mark: |  |
| 170 | DC1-BL1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet6 | :white_check_mark: |  |
| 171 | DC1-BL1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet3 - MLAG_PEER_DC1-BL1B_Ethernet3 | :white_check_mark: |  |
| 172 | DC1-BL1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet4 - MLAG_PEER_DC1-BL1B_Ethernet4 | :white_check_mark: |  |
| 173 | DC1-BL1B | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet7 | :white_check_mark: |  |
| 174 | DC1-BL1B | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet7 | :white_check_mark: |  |
| 175 | DC1-BL1B | LLDP Topology | lldp topology - validate peer and interface | Ethernet3 - MLAG_PEER_DC1-BL1A_Ethernet3 | :white_check_mark: |  |
| 176 | DC1-BL1B | LLDP Topology | lldp topology - validate peer and interface | Ethernet4 - MLAG_PEER_DC1-BL1A_Ethernet4 | :white_check_mark: |  |
| 177 | DC1-L2LEAF1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - DC1-LEAF1A_Ethernet5 | :white_check_mark: |  |
| 178 | DC1-L2LEAF1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - DC1-LEAF1B_Ethernet5 | :white_check_mark: |  |
| 179 | DC1-L2LEAF2A | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - DC1-LEAF2A_Ethernet5 | :white_check_mark: |  |
| 180 | DC1-L2LEAF2A | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - DC1-LEAF2B_Ethernet5 | :white_check_mark: |  |
| 181 | DC1-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet1 | :white_check_mark: |  |
| 182 | DC1-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet1 | :white_check_mark: |  |
| 183 | DC1-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet3 - MLAG_PEER_DC1-LEAF1B_Ethernet3 | :white_check_mark: |  |
| 184 | DC1-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet4 - MLAG_PEER_DC1-LEAF1B_Ethernet4 | :white_check_mark: |  |
| 185 | DC1-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet5 - DC1-L2LEAF1A_Ethernet1 | :white_check_mark: |  |
| 186 | DC1-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet2 | :white_check_mark: |  |
| 187 | DC1-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet2 | :white_check_mark: |  |
| 188 | DC1-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | Ethernet3 - MLAG_PEER_DC1-LEAF1A_Ethernet3 | :white_check_mark: |  |
| 189 | DC1-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | Ethernet4 - MLAG_PEER_DC1-LEAF1A_Ethernet4 | :white_check_mark: |  |
| 190 | DC1-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | Ethernet5 - DC1-L2LEAF1A_Ethernet2 | :white_check_mark: |  |
| 191 | DC1-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet3 | :white_check_mark: |  |
| 192 | DC1-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet3 | :white_check_mark: |  |
| 193 | DC1-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | Ethernet3 - MLAG_PEER_DC1-LEAF2B_Ethernet3 | :white_check_mark: |  |
| 194 | DC1-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | Ethernet4 - MLAG_PEER_DC1-LEAF2B_Ethernet4 | :white_check_mark: |  |
| 195 | DC1-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | Ethernet5 - DC1-L2LEAF2A_Ethernet1 | :white_check_mark: |  |
| 196 | DC1-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet4 | :white_check_mark: |  |
| 197 | DC1-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet4 | :white_check_mark: |  |
| 198 | DC1-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | Ethernet3 - MLAG_PEER_DC1-LEAF2A_Ethernet3 | :white_check_mark: |  |
| 199 | DC1-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | Ethernet4 - MLAG_PEER_DC1-LEAF2A_Ethernet4 | :white_check_mark: |  |
| 200 | DC1-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | Ethernet5 - DC1-L2LEAF2A_Ethernet2 | :white_check_mark: |  |
| 201 | DC1-LEAF3A | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet5 | :white_check_mark: |  |
| 202 | DC1-LEAF3A | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet5 | :white_check_mark: |  |
| 203 | DC1-LEAF4A | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet8 | :white_check_mark: |  |
| 204 | DC1-LEAF4A | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet8 | :white_check_mark: |  |
| 205 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | Ethernet6 - P2P_LINK_TO_DC1-BL1A_Ethernet1 | :white_check_mark: |  |
| 206 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | Ethernet7 - P2P_LINK_TO_DC1-BL1B_Ethernet1 | :white_check_mark: |  |
| 207 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - P2P_LINK_TO_DC1-LEAF1A_Ethernet1 | :white_check_mark: |  |
| 208 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - P2P_LINK_TO_DC1-LEAF1B_Ethernet1 | :white_check_mark: |  |
| 209 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | Ethernet3 - P2P_LINK_TO_DC1-LEAF2A_Ethernet1 | :white_check_mark: |  |
| 210 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | Ethernet4 - P2P_LINK_TO_DC1-LEAF2B_Ethernet1 | :white_check_mark: |  |
| 211 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | Ethernet5 - P2P_LINK_TO_DC1-LEAF3A_Ethernet1 | :white_check_mark: |  |
| 212 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | Ethernet8 - P2P_LINK_TO_DC1-LEAF4A_Ethernet1 | :white_check_mark: |  |
| 213 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | Ethernet6 - P2P_LINK_TO_DC1-BL1A_Ethernet2 | :white_check_mark: |  |
| 214 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | Ethernet7 - P2P_LINK_TO_DC1-BL1B_Ethernet2 | :white_check_mark: |  |
| 215 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - P2P_LINK_TO_DC1-LEAF1A_Ethernet2 | :white_check_mark: |  |
| 216 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - P2P_LINK_TO_DC1-LEAF1B_Ethernet2 | :white_check_mark: |  |
| 217 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | Ethernet3 - P2P_LINK_TO_DC1-LEAF2A_Ethernet2 | :white_check_mark: |  |
| 218 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | Ethernet4 - P2P_LINK_TO_DC1-LEAF2B_Ethernet2 | :white_check_mark: |  |
| 219 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | Ethernet5 - P2P_LINK_TO_DC1-LEAF3A_Ethernet2 | :white_check_mark: |  |
| 220 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | Ethernet8 - P2P_LINK_TO_DC1-LEAF4A_Ethernet2 | :white_check_mark: |  |
| 221 | DC1-BL1A | MLAG | MLAG State active & Status connected | MLAG | :white_check_mark: |  |
| 222 | DC1-BL1B | MLAG | MLAG State active & Status connected | MLAG | :white_check_mark: |  |
| 223 | DC1-LEAF1A | MLAG | MLAG State active & Status connected | MLAG | :white_check_mark: |  |
| 224 | DC1-LEAF1B | MLAG | MLAG State active & Status connected | MLAG | :white_check_mark: |  |
| 225 | DC1-LEAF2A | MLAG | MLAG State active & Status connected | MLAG | :white_check_mark: |  |
| 226 | DC1-LEAF2B | MLAG | MLAG State active & Status connected | MLAG | :white_check_mark: |  |
| 227 | DC1-LEAF1A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF1A_Ethernet1 | Destination: DC1-SPINE1_Ethernet1 | :white_check_mark: |  |
| 228 | DC1-LEAF1A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF1A_Ethernet2 | Destination: DC1-SPINE2_Ethernet1 | :white_check_mark: |  |
| 229 | DC1-LEAF1B | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF1B_Ethernet1 | Destination: DC1-SPINE1_Ethernet2 | :white_check_mark: |  |
| 230 | DC1-LEAF1B | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF1B_Ethernet2 | Destination: DC1-SPINE2_Ethernet2 | :white_check_mark: |  |
| 231 | DC1-LEAF2A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF2A_Ethernet1 | Destination: DC1-SPINE1_Ethernet3 | :white_check_mark: |  |
| 232 | DC1-LEAF2A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF2A_Ethernet2 | Destination: DC1-SPINE2_Ethernet3 | :white_check_mark: |  |
| 233 | DC1-LEAF2B | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF2B_Ethernet1 | Destination: DC1-SPINE1_Ethernet4 | :white_check_mark: |  |
| 234 | DC1-LEAF2B | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF2B_Ethernet2 | Destination: DC1-SPINE2_Ethernet4 | :white_check_mark: |  |
| 235 | DC1-LEAF3A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF3A_Ethernet1 | Destination: DC1-SPINE1_Ethernet5 | :white_check_mark: |  |
| 236 | DC1-LEAF3A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF3A_Ethernet2 | Destination: DC1-SPINE2_Ethernet5 | :white_check_mark: |  |
| 237 | DC1-LEAF4A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF4A_Ethernet1 | Destination: DC1-SPINE1_Ethernet8 | :white_check_mark: |  |
| 238 | DC1-LEAF4A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF4A_Ethernet2 | Destination: DC1-SPINE2_Ethernet8 | :white_check_mark: |  |
| 239 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet6 | Destination: DC1-BL1A_Ethernet1 | :white_check_mark: |  |
| 240 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet7 | Destination: DC1-BL1B_Ethernet1 | :white_check_mark: |  |
| 241 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet1 | Destination: DC1-LEAF1A_Ethernet1 | :white_check_mark: |  |
| 242 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet2 | Destination: DC1-LEAF1B_Ethernet1 | :white_check_mark: |  |
| 243 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet3 | Destination: DC1-LEAF2A_Ethernet1 | :white_check_mark: |  |
| 244 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet4 | Destination: DC1-LEAF2B_Ethernet1 | :white_check_mark: |  |
| 245 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet5 | Destination: DC1-LEAF3A_Ethernet1 | :white_check_mark: |  |
| 246 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet8 | Destination: DC1-LEAF4A_Ethernet1 | :white_check_mark: |  |
| 247 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet6 | Destination: DC1-BL1A_Ethernet2 | :white_check_mark: |  |
| 248 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet7 | Destination: DC1-BL1B_Ethernet2 | :white_check_mark: |  |
| 249 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet1 | Destination: DC1-LEAF1A_Ethernet2 | :white_check_mark: |  |
| 250 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet2 | Destination: DC1-LEAF1B_Ethernet2 | :white_check_mark: |  |
| 251 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet3 | Destination: DC1-LEAF2A_Ethernet2 | :white_check_mark: |  |
| 252 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet4 | Destination: DC1-LEAF2B_Ethernet2 | :white_check_mark: |  |
| 253 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet5 | Destination: DC1-LEAF3A_Ethernet2 | :white_check_mark: |  |
| 254 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet8 | Destination: DC1-LEAF4A_Ethernet2 | :white_check_mark: |  |
| 255 | DC1-BL1A | BGP | ArBGP is configured and operating | ArBGP | :white_check_mark: |  |
| 256 | DC1-BL1B | BGP | ArBGP is configured and operating | ArBGP | :white_check_mark: |  |
| 257 | DC1-LEAF1A | BGP | ArBGP is configured and operating | ArBGP | :white_check_mark: |  |
| 258 | DC1-LEAF1B | BGP | ArBGP is configured and operating | ArBGP | :white_check_mark: |  |
| 259 | DC1-LEAF2A | BGP | ArBGP is configured and operating | ArBGP | :white_check_mark: |  |
| 260 | DC1-LEAF2B | BGP | ArBGP is configured and operating | ArBGP | :white_check_mark: |  |
| 261 | DC1-LEAF3A | BGP | ArBGP is configured and operating | ArBGP | :white_check_mark: |  |
| 262 | DC1-LEAF4A | BGP | ArBGP is configured and operating | ArBGP | :white_check_mark: |  |
| 263 | DC1-SPINE1 | BGP | ArBGP is configured and operating | ArBGP | :white_check_mark: |  |
| 264 | DC1-SPINE2 | BGP | ArBGP is configured and operating | ArBGP | :white_check_mark: |  |
| 265 | DC1-BL1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.17 | :white_check_mark: |  |
| 266 | DC1-BL1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.255.0.0 | :x: | Session state "Active" |
| 267 | DC1-BL1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.32 | :white_check_mark: |  |
| 268 | DC1-BL1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.34 | :white_check_mark: |  |
| 269 | DC1-BL1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.16 | :white_check_mark: |  |
| 270 | DC1-BL1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.255.0.2 | :x: | Session state "Active" |
| 271 | DC1-BL1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.36 | :white_check_mark: |  |
| 272 | DC1-BL1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.38 | :white_check_mark: |  |
| 273 | DC1-LEAF1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.0 | :white_check_mark: |  |
| 274 | DC1-LEAF1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.2 | :white_check_mark: |  |
| 275 | DC1-LEAF1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.1 | :white_check_mark: |  |
| 276 | DC1-LEAF1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.4 | :white_check_mark: |  |
| 277 | DC1-LEAF1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.6 | :white_check_mark: |  |
| 278 | DC1-LEAF1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.0 | :white_check_mark: |  |
| 279 | DC1-LEAF2A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.8 | :white_check_mark: |  |
| 280 | DC1-LEAF2A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.10 | :white_check_mark: |  |
| 281 | DC1-LEAF2A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.5 | :white_check_mark: |  |
| 282 | DC1-LEAF2B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.12 | :white_check_mark: |  |
| 283 | DC1-LEAF2B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.14 | :white_check_mark: |  |
| 284 | DC1-LEAF2B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.4 | :white_check_mark: |  |
| 285 | DC1-LEAF3A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.28 | :white_check_mark: |  |
| 286 | DC1-LEAF3A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.30 | :white_check_mark: |  |
| 287 | DC1-LEAF4A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.40 | :white_check_mark: |  |
| 288 | DC1-LEAF4A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.42 | :white_check_mark: |  |
| 289 | DC1-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.33 | :white_check_mark: |  |
| 290 | DC1-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.37 | :white_check_mark: |  |
| 291 | DC1-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.1 | :white_check_mark: |  |
| 292 | DC1-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.5 | :white_check_mark: |  |
| 293 | DC1-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.9 | :white_check_mark: |  |
| 294 | DC1-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.13 | :white_check_mark: |  |
| 295 | DC1-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.29 | :white_check_mark: |  |
| 296 | DC1-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.41 | :white_check_mark: |  |
| 297 | DC1-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.35 | :white_check_mark: |  |
| 298 | DC1-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.39 | :white_check_mark: |  |
| 299 | DC1-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.3 | :white_check_mark: |  |
| 300 | DC1-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.7 | :white_check_mark: |  |
| 301 | DC1-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.11 | :white_check_mark: |  |
| 302 | DC1-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.15 | :white_check_mark: |  |
| 303 | DC1-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.31 | :white_check_mark: |  |
| 304 | DC1-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.43 | :white_check_mark: |  |
| 305 | DC1-BL1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.255.251.17 | :white_check_mark: |  |
| 306 | DC1-BL1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.255.0.0 | :x: | Session state "Active" |
| 307 | DC1-BL1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.32 | :white_check_mark: |  |
| 308 | DC1-BL1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.34 | :white_check_mark: |  |
| 309 | DC1-BL1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.255.251.16 | :white_check_mark: |  |
| 310 | DC1-BL1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.255.0.2 | :x: | Session state "Active" |
| 311 | DC1-BL1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.36 | :white_check_mark: |  |
| 312 | DC1-BL1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.38 | :white_check_mark: |  |
| 313 | DC1-LEAF1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.0 | :white_check_mark: |  |
| 314 | DC1-LEAF1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.2 | :white_check_mark: |  |
| 315 | DC1-LEAF1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.255.251.1 | :white_check_mark: |  |
| 316 | DC1-LEAF1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.4 | :white_check_mark: |  |
| 317 | DC1-LEAF1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.6 | :white_check_mark: |  |
| 318 | DC1-LEAF1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.255.251.0 | :white_check_mark: |  |
| 319 | DC1-LEAF2A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.8 | :white_check_mark: |  |
| 320 | DC1-LEAF2A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.10 | :white_check_mark: |  |
| 321 | DC1-LEAF2A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.255.251.5 | :white_check_mark: |  |
| 322 | DC1-LEAF2B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.12 | :white_check_mark: |  |
| 323 | DC1-LEAF2B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.14 | :white_check_mark: |  |
| 324 | DC1-LEAF2B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.255.251.4 | :white_check_mark: |  |
| 325 | DC1-LEAF3A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.28 | :white_check_mark: |  |
| 326 | DC1-LEAF3A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.30 | :white_check_mark: |  |
| 327 | DC1-LEAF4A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.40 | :white_check_mark: |  |
| 328 | DC1-LEAF4A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.42 | :white_check_mark: |  |
| 329 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.33 | :white_check_mark: |  |
| 330 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.37 | :white_check_mark: |  |
| 331 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.1 | :white_check_mark: |  |
| 332 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.5 | :white_check_mark: |  |
| 333 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.9 | :white_check_mark: |  |
| 334 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.13 | :white_check_mark: |  |
| 335 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.29 | :white_check_mark: |  |
| 336 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.41 | :white_check_mark: |  |
| 337 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.35 | :white_check_mark: |  |
| 338 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.39 | :white_check_mark: |  |
| 339 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.3 | :white_check_mark: |  |
| 340 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.7 | :white_check_mark: |  |
| 341 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.11 | :white_check_mark: |  |
| 342 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.15 | :white_check_mark: |  |
| 343 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.31 | :white_check_mark: |  |
| 344 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.43 | :white_check_mark: |  |
