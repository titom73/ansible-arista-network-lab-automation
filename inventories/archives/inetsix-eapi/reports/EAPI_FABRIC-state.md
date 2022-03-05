
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
| 510 | 502 | 8 |

### Summary Totals Devices Under Tests

| DUT | Total Tests | Tests Passed | Tests Failed | Categories Failed |
| --- | ----------- | ------------ | ------------ | ----------------- |
| EAPI-AGG01 |  7 | 7 | 0 | - |
| EAPI-AGG02 |  7 | 7 | 0 | - |
| EAPI-BL01A |  45 | 44 | 1 | Interface State |
| EAPI-BL01B |  45 | 44 | 1 | Interface State |
| EAPI-LEAF1A |  52 | 51 | 1 | Interface State |
| EAPI-LEAF1B |  52 | 51 | 1 | Interface State |
| EAPI-LEAF2A |  52 | 51 | 1 | Interface State |
| EAPI-LEAF2B |  52 | 51 | 1 | Interface State |
| EAPI-LEAF3A |  40 | 39 | 1 | Interface State |
| EAPI-LEAF4A |  40 | 39 | 1 | Interface State |
| EAPI-SPINE1 |  59 | 59 | 0 | - |
| EAPI-SPINE2 |  59 | 59 | 0 | - |

### Summary Totals Per Category

| Test Category | Total Tests | Tests Passed | Tests Failed |
| ------------- | ----------- | ------------ | ------------ |
| NTP |  12 | 12 | 0 |
| Interface State |  128 | 120 | 8 |
| LLDP Topology |  52 | 52 | 0 |
| MLAG |  6 | 6 | 0 |
| IP Reachability |  32 | 32 | 0 |
| BGP |  80 | 80 | 0 |
| Routing Table |  120 | 120 | 0 |
| Loopback0 Reachability |  80 | 80 | 0 |

## Failed Test Results Summary

| Test ID | Node | Test Category | Test Description | Test | Test Result | Failure Reason |
| ------- | ---- | ------------- | ---------------- | ---- | ----------- | -------------- |
| 81 | EAPI-LEAF3A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel5 - SRV-POD03_PortChanne1 | :x: | interface status: down - line protocol status: lowerLayerDown |
| 82 | EAPI-LEAF4A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel5 - SRV-POD03_PortChanne1 | :x: | interface status: down - line protocol status: lowerLayerDown |
| 91 | EAPI-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan112 - PR01-TRUST | :x: | interface status: adminDown - line protocol status: down |
| 97 | EAPI-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan112 - PR01-TRUST | :x: | interface status: adminDown - line protocol status: down |
| 103 | EAPI-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan112 - PR01-TRUST | :x: | interface status: adminDown - line protocol status: down |
| 109 | EAPI-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan112 - PR01-TRUST | :x: | interface status: adminDown - line protocol status: down |
| 115 | EAPI-BL01A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | :x: | interface status: down - line protocol status: down |
| 116 | EAPI-BL01B | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | :x: | interface status: down - line protocol status: down |

## All Test Results

| Test ID | Node | Test Category | Test Description | Test | Test Result | Failure Reason |
| ------- | ---- | ------------- | ---------------- | ---- | ----------- | -------------- |
| 1 | EAPI-AGG01 | NTP | Synchronised with NTP server | NTP | :white_check_mark: |  |
| 2 | EAPI-AGG02 | NTP | Synchronised with NTP server | NTP | :white_check_mark: |  |
| 3 | EAPI-BL01A | NTP | Synchronised with NTP server | NTP | :white_check_mark: |  |
| 4 | EAPI-BL01B | NTP | Synchronised with NTP server | NTP | :white_check_mark: |  |
| 5 | EAPI-LEAF1A | NTP | Synchronised with NTP server | NTP | :white_check_mark: |  |
| 6 | EAPI-LEAF1B | NTP | Synchronised with NTP server | NTP | :white_check_mark: |  |
| 7 | EAPI-LEAF2A | NTP | Synchronised with NTP server | NTP | :white_check_mark: |  |
| 8 | EAPI-LEAF2B | NTP | Synchronised with NTP server | NTP | :white_check_mark: |  |
| 9 | EAPI-LEAF3A | NTP | Synchronised with NTP server | NTP | :white_check_mark: |  |
| 10 | EAPI-LEAF4A | NTP | Synchronised with NTP server | NTP | :white_check_mark: |  |
| 11 | EAPI-SPINE1 | NTP | Synchronised with NTP server | NTP | :white_check_mark: |  |
| 12 | EAPI-SPINE2 | NTP | Synchronised with NTP server | NTP | :white_check_mark: |  |
| 13 | EAPI-AGG01 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - EAPI-LEAF1A_Ethernet5 | :white_check_mark: |  |
| 14 | EAPI-AGG01 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - EAPI-LEAF1B_Ethernet5 | :white_check_mark: |  |
| 15 | EAPI-AGG01 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - SRV-POD01_Eth1 | :white_check_mark: |  |
| 16 | EAPI-AGG02 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - EAPI-LEAF2A_Ethernet5 | :white_check_mark: |  |
| 17 | EAPI-AGG02 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - EAPI-LEAF2B_Ethernet5 | :white_check_mark: |  |
| 18 | EAPI-AGG02 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - SRV-POD02_Eth1 | :white_check_mark: |  |
| 19 | EAPI-BL01A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_EAPI-SPINE1_Ethernet5 | :white_check_mark: |  |
| 20 | EAPI-BL01A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_EAPI-SPINE2_Ethernet5 | :white_check_mark: |  |
| 21 | EAPI-BL01A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - MLAG_PEER_EAPI-BL01B_Ethernet3 | :white_check_mark: |  |
| 22 | EAPI-BL01A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - MLAG_PEER_EAPI-BL01B_Ethernet4 | :white_check_mark: |  |
| 23 | EAPI-BL01B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_EAPI-SPINE1_Ethernet6 | :white_check_mark: |  |
| 24 | EAPI-BL01B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_EAPI-SPINE2_Ethernet6 | :white_check_mark: |  |
| 25 | EAPI-BL01B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - MLAG_PEER_EAPI-BL01A_Ethernet3 | :white_check_mark: |  |
| 26 | EAPI-BL01B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - MLAG_PEER_EAPI-BL01A_Ethernet4 | :white_check_mark: |  |
| 27 | EAPI-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_EAPI-SPINE1_Ethernet1 | :white_check_mark: |  |
| 28 | EAPI-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_EAPI-SPINE2_Ethernet1 | :white_check_mark: |  |
| 29 | EAPI-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - MLAG_PEER_EAPI-LEAF1B_Ethernet3 | :white_check_mark: |  |
| 30 | EAPI-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - MLAG_PEER_EAPI-LEAF1B_Ethernet4 | :white_check_mark: |  |
| 31 | EAPI-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - EAPI-AGG01_Ethernet1 | :white_check_mark: |  |
| 32 | EAPI-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_EAPI-SPINE1_Ethernet2 | :white_check_mark: |  |
| 33 | EAPI-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_EAPI-SPINE2_Ethernet2 | :white_check_mark: |  |
| 34 | EAPI-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - MLAG_PEER_EAPI-LEAF1A_Ethernet3 | :white_check_mark: |  |
| 35 | EAPI-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - MLAG_PEER_EAPI-LEAF1A_Ethernet4 | :white_check_mark: |  |
| 36 | EAPI-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - EAPI-AGG01_Ethernet2 | :white_check_mark: |  |
| 37 | EAPI-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_EAPI-SPINE1_Ethernet3 | :white_check_mark: |  |
| 38 | EAPI-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_EAPI-SPINE2_Ethernet3 | :white_check_mark: |  |
| 39 | EAPI-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - MLAG_PEER_EAPI-LEAF2B_Ethernet3 | :white_check_mark: |  |
| 40 | EAPI-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - MLAG_PEER_EAPI-LEAF2B_Ethernet4 | :white_check_mark: |  |
| 41 | EAPI-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - EAPI-AGG02_Ethernet1 | :white_check_mark: |  |
| 42 | EAPI-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_EAPI-SPINE1_Ethernet4 | :white_check_mark: |  |
| 43 | EAPI-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_EAPI-SPINE2_Ethernet4 | :white_check_mark: |  |
| 44 | EAPI-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - MLAG_PEER_EAPI-LEAF2A_Ethernet3 | :white_check_mark: |  |
| 45 | EAPI-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - MLAG_PEER_EAPI-LEAF2A_Ethernet4 | :white_check_mark: |  |
| 46 | EAPI-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - EAPI-AGG02_Ethernet2 | :white_check_mark: |  |
| 47 | EAPI-LEAF3A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_EAPI-SPINE1_Ethernet7 | :white_check_mark: |  |
| 48 | EAPI-LEAF3A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_EAPI-SPINE2_Ethernet7 | :white_check_mark: |  |
| 49 | EAPI-LEAF3A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - SRV-POD03_Eth1 | :white_check_mark: |  |
| 50 | EAPI-LEAF4A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_EAPI-SPINE1_Ethernet8 | :white_check_mark: |  |
| 51 | EAPI-LEAF4A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_EAPI-SPINE2_Ethernet8 | :white_check_mark: |  |
| 52 | EAPI-LEAF4A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - SRV-POD03_Eth2 | :white_check_mark: |  |
| 53 | EAPI-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - P2P_LINK_TO_EAPI-BL01A_Ethernet1 | :white_check_mark: |  |
| 54 | EAPI-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - P2P_LINK_TO_EAPI-BL01B_Ethernet1 | :white_check_mark: |  |
| 55 | EAPI-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_EAPI-LEAF1A_Ethernet1 | :white_check_mark: |  |
| 56 | EAPI-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_EAPI-LEAF1B_Ethernet1 | :white_check_mark: |  |
| 57 | EAPI-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_EAPI-LEAF2A_Ethernet1 | :white_check_mark: |  |
| 58 | EAPI-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_EAPI-LEAF2B_Ethernet1 | :white_check_mark: |  |
| 59 | EAPI-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet7 - P2P_LINK_TO_EAPI-LEAF3A_Ethernet1 | :white_check_mark: |  |
| 60 | EAPI-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet8 - P2P_LINK_TO_EAPI-LEAF4A_Ethernet1 | :white_check_mark: |  |
| 61 | EAPI-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - P2P_LINK_TO_EAPI-BL01A_Ethernet2 | :white_check_mark: |  |
| 62 | EAPI-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - P2P_LINK_TO_EAPI-BL01B_Ethernet2 | :white_check_mark: |  |
| 63 | EAPI-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_EAPI-LEAF1A_Ethernet2 | :white_check_mark: |  |
| 64 | EAPI-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_EAPI-LEAF1B_Ethernet2 | :white_check_mark: |  |
| 65 | EAPI-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_EAPI-LEAF2A_Ethernet2 | :white_check_mark: |  |
| 66 | EAPI-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_EAPI-LEAF2B_Ethernet2 | :white_check_mark: |  |
| 67 | EAPI-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet7 - P2P_LINK_TO_EAPI-LEAF3A_Ethernet2 | :white_check_mark: |  |
| 68 | EAPI-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet8 - P2P_LINK_TO_EAPI-LEAF4A_Ethernet2 | :white_check_mark: |  |
| 69 | EAPI-AGG01 | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel1 - EAPI-LEAF1A_Po5 | :white_check_mark: |  |
| 70 | EAPI-AGG02 | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel1 - EAPI-LEAF2A_Po5 | :white_check_mark: |  |
| 71 | EAPI-BL01A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_EAPI-BL01B_Po3 | :white_check_mark: |  |
| 72 | EAPI-BL01B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_EAPI-BL01A_Po3 | :white_check_mark: |  |
| 73 | EAPI-LEAF1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel5 - EAPI_L2LEAF1_Po1 | :white_check_mark: |  |
| 74 | EAPI-LEAF1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_EAPI-LEAF1B_Po3 | :white_check_mark: |  |
| 75 | EAPI-LEAF1B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel5 - EAPI_L2LEAF1_Po1 | :white_check_mark: |  |
| 76 | EAPI-LEAF1B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_EAPI-LEAF1A_Po3 | :white_check_mark: |  |
| 77 | EAPI-LEAF2A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel5 - EAPI_L2LEAF2_Po1 | :white_check_mark: |  |
| 78 | EAPI-LEAF2A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_EAPI-LEAF2B_Po3 | :white_check_mark: |  |
| 79 | EAPI-LEAF2B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel5 - EAPI_L2LEAF2_Po1 | :white_check_mark: |  |
| 80 | EAPI-LEAF2B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_EAPI-LEAF2A_Po3 | :white_check_mark: |  |
| 81 | EAPI-LEAF3A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel5 - SRV-POD03_PortChanne1 | :x: | interface status: down - line protocol status: lowerLayerDown |
| 82 | EAPI-LEAF4A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel5 - SRV-POD03_PortChanne1 | :x: | interface status: down - line protocol status: lowerLayerDown |
| 83 | EAPI-BL01A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | :white_check_mark: |  |
| 84 | EAPI-BL01A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | :white_check_mark: |  |
| 85 | EAPI-BL01B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | :white_check_mark: |  |
| 86 | EAPI-BL01B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | :white_check_mark: |  |
| 87 | EAPI-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | :white_check_mark: |  |
| 88 | EAPI-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | :white_check_mark: |  |
| 89 | EAPI-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - PR01-DEMO | :white_check_mark: |  |
| 90 | EAPI-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - PR01-TRUST | :white_check_mark: |  |
| 91 | EAPI-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan112 - PR01-TRUST | :x: | interface status: adminDown - line protocol status: down |
| 92 | EAPI-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3010 - MLAG_PEER_L3_iBGP: vrf TENANT_A_PROJECT01 | :white_check_mark: |  |
| 93 | EAPI-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | :white_check_mark: |  |
| 94 | EAPI-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | :white_check_mark: |  |
| 95 | EAPI-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - PR01-DEMO | :white_check_mark: |  |
| 96 | EAPI-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - PR01-TRUST | :white_check_mark: |  |
| 97 | EAPI-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan112 - PR01-TRUST | :x: | interface status: adminDown - line protocol status: down |
| 98 | EAPI-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3010 - MLAG_PEER_L3_iBGP: vrf TENANT_A_PROJECT01 | :white_check_mark: |  |
| 99 | EAPI-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | :white_check_mark: |  |
| 100 | EAPI-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | :white_check_mark: |  |
| 101 | EAPI-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - PR01-DEMO | :white_check_mark: |  |
| 102 | EAPI-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - PR01-TRUST | :white_check_mark: |  |
| 103 | EAPI-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan112 - PR01-TRUST | :x: | interface status: adminDown - line protocol status: down |
| 104 | EAPI-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3010 - MLAG_PEER_L3_iBGP: vrf TENANT_A_PROJECT01 | :white_check_mark: |  |
| 105 | EAPI-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | :white_check_mark: |  |
| 106 | EAPI-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | :white_check_mark: |  |
| 107 | EAPI-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - PR01-DEMO | :white_check_mark: |  |
| 108 | EAPI-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - PR01-TRUST | :white_check_mark: |  |
| 109 | EAPI-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan112 - PR01-TRUST | :x: | interface status: adminDown - line protocol status: down |
| 110 | EAPI-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3010 - MLAG_PEER_L3_iBGP: vrf TENANT_A_PROJECT01 | :white_check_mark: |  |
| 111 | EAPI-LEAF3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - PR01-DEMO | :white_check_mark: |  |
| 112 | EAPI-LEAF3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan113 - PR01-DMZ | :white_check_mark: |  |
| 113 | EAPI-LEAF4A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - PR01-DEMO | :white_check_mark: |  |
| 114 | EAPI-LEAF4A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan113 - PR01-DMZ | :white_check_mark: |  |
| 115 | EAPI-BL01A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | :x: | interface status: down - line protocol status: down |
| 116 | EAPI-BL01B | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | :x: | interface status: down - line protocol status: down |
| 117 | EAPI-LEAF1A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | :white_check_mark: |  |
| 118 | EAPI-LEAF1B | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | :white_check_mark: |  |
| 119 | EAPI-LEAF2A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | :white_check_mark: |  |
| 120 | EAPI-LEAF2B | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | :white_check_mark: |  |
| 121 | EAPI-LEAF3A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | :white_check_mark: |  |
| 122 | EAPI-LEAF4A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | :white_check_mark: |  |
| 123 | EAPI-BL01A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | :white_check_mark: |  |
| 124 | EAPI-BL01A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | :white_check_mark: |  |
| 125 | EAPI-BL01B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | :white_check_mark: |  |
| 126 | EAPI-BL01B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | :white_check_mark: |  |
| 127 | EAPI-LEAF1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | :white_check_mark: |  |
| 128 | EAPI-LEAF1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | :white_check_mark: |  |
| 129 | EAPI-LEAF1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | :white_check_mark: |  |
| 130 | EAPI-LEAF1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | :white_check_mark: |  |
| 131 | EAPI-LEAF2A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | :white_check_mark: |  |
| 132 | EAPI-LEAF2A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | :white_check_mark: |  |
| 133 | EAPI-LEAF2B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | :white_check_mark: |  |
| 134 | EAPI-LEAF2B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | :white_check_mark: |  |
| 135 | EAPI-LEAF3A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | :white_check_mark: |  |
| 136 | EAPI-LEAF3A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | :white_check_mark: |  |
| 137 | EAPI-LEAF4A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | :white_check_mark: |  |
| 138 | EAPI-LEAF4A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | :white_check_mark: |  |
| 139 | EAPI-SPINE1 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | :white_check_mark: |  |
| 140 | EAPI-SPINE2 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | :white_check_mark: |  |
| 141 | EAPI-AGG01 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: EAPI-LEAF1A_Ethernet5 | :white_check_mark: |  |
| 142 | EAPI-AGG01 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: EAPI-LEAF1B_Ethernet5 | :white_check_mark: |  |
| 143 | EAPI-AGG02 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: EAPI-LEAF2A_Ethernet5 | :white_check_mark: |  |
| 144 | EAPI-AGG02 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: EAPI-LEAF2B_Ethernet5 | :white_check_mark: |  |
| 145 | EAPI-BL01A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: EAPI-SPINE1_Ethernet5 | :white_check_mark: |  |
| 146 | EAPI-BL01A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: EAPI-SPINE2_Ethernet5 | :white_check_mark: |  |
| 147 | EAPI-BL01A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: EAPI-BL01B_Ethernet3 | :white_check_mark: |  |
| 148 | EAPI-BL01A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: EAPI-BL01B_Ethernet4 | :white_check_mark: |  |
| 149 | EAPI-BL01B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: EAPI-SPINE1_Ethernet6 | :white_check_mark: |  |
| 150 | EAPI-BL01B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: EAPI-SPINE2_Ethernet6 | :white_check_mark: |  |
| 151 | EAPI-BL01B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: EAPI-BL01A_Ethernet3 | :white_check_mark: |  |
| 152 | EAPI-BL01B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: EAPI-BL01A_Ethernet4 | :white_check_mark: |  |
| 153 | EAPI-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: EAPI-SPINE1_Ethernet1 | :white_check_mark: |  |
| 154 | EAPI-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: EAPI-SPINE2_Ethernet1 | :white_check_mark: |  |
| 155 | EAPI-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: EAPI-LEAF1B_Ethernet3 | :white_check_mark: |  |
| 156 | EAPI-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: EAPI-LEAF1B_Ethernet4 | :white_check_mark: |  |
| 157 | EAPI-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet5 - remote: EAPI-AGG01_Ethernet1 | :white_check_mark: |  |
| 158 | EAPI-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: EAPI-SPINE1_Ethernet2 | :white_check_mark: |  |
| 159 | EAPI-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: EAPI-SPINE2_Ethernet2 | :white_check_mark: |  |
| 160 | EAPI-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: EAPI-LEAF1A_Ethernet3 | :white_check_mark: |  |
| 161 | EAPI-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: EAPI-LEAF1A_Ethernet4 | :white_check_mark: |  |
| 162 | EAPI-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet5 - remote: EAPI-AGG01_Ethernet2 | :white_check_mark: |  |
| 163 | EAPI-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: EAPI-SPINE1_Ethernet3 | :white_check_mark: |  |
| 164 | EAPI-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: EAPI-SPINE2_Ethernet3 | :white_check_mark: |  |
| 165 | EAPI-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: EAPI-LEAF2B_Ethernet3 | :white_check_mark: |  |
| 166 | EAPI-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: EAPI-LEAF2B_Ethernet4 | :white_check_mark: |  |
| 167 | EAPI-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet5 - remote: EAPI-AGG02_Ethernet1 | :white_check_mark: |  |
| 168 | EAPI-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: EAPI-SPINE1_Ethernet4 | :white_check_mark: |  |
| 169 | EAPI-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: EAPI-SPINE2_Ethernet4 | :white_check_mark: |  |
| 170 | EAPI-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: EAPI-LEAF2A_Ethernet3 | :white_check_mark: |  |
| 171 | EAPI-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: EAPI-LEAF2A_Ethernet4 | :white_check_mark: |  |
| 172 | EAPI-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet5 - remote: EAPI-AGG02_Ethernet2 | :white_check_mark: |  |
| 173 | EAPI-LEAF3A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: EAPI-SPINE1_Ethernet7 | :white_check_mark: |  |
| 174 | EAPI-LEAF3A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: EAPI-SPINE2_Ethernet7 | :white_check_mark: |  |
| 175 | EAPI-LEAF4A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: EAPI-SPINE1_Ethernet8 | :white_check_mark: |  |
| 176 | EAPI-LEAF4A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: EAPI-SPINE2_Ethernet8 | :white_check_mark: |  |
| 177 | EAPI-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet5 - remote: EAPI-BL01A_Ethernet1 | :white_check_mark: |  |
| 178 | EAPI-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet6 - remote: EAPI-BL01B_Ethernet1 | :white_check_mark: |  |
| 179 | EAPI-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: EAPI-LEAF1A_Ethernet1 | :white_check_mark: |  |
| 180 | EAPI-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: EAPI-LEAF1B_Ethernet1 | :white_check_mark: |  |
| 181 | EAPI-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: EAPI-LEAF2A_Ethernet1 | :white_check_mark: |  |
| 182 | EAPI-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: EAPI-LEAF2B_Ethernet1 | :white_check_mark: |  |
| 183 | EAPI-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet7 - remote: EAPI-LEAF3A_Ethernet1 | :white_check_mark: |  |
| 184 | EAPI-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet8 - remote: EAPI-LEAF4A_Ethernet1 | :white_check_mark: |  |
| 185 | EAPI-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet5 - remote: EAPI-BL01A_Ethernet2 | :white_check_mark: |  |
| 186 | EAPI-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet6 - remote: EAPI-BL01B_Ethernet2 | :white_check_mark: |  |
| 187 | EAPI-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: EAPI-LEAF1A_Ethernet2 | :white_check_mark: |  |
| 188 | EAPI-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: EAPI-LEAF1B_Ethernet2 | :white_check_mark: |  |
| 189 | EAPI-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: EAPI-LEAF2A_Ethernet2 | :white_check_mark: |  |
| 190 | EAPI-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: EAPI-LEAF2B_Ethernet2 | :white_check_mark: |  |
| 191 | EAPI-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet7 - remote: EAPI-LEAF3A_Ethernet2 | :white_check_mark: |  |
| 192 | EAPI-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet8 - remote: EAPI-LEAF4A_Ethernet2 | :white_check_mark: |  |
| 193 | EAPI-BL01A | MLAG | MLAG State active & Status connected | MLAG | :white_check_mark: |  |
| 194 | EAPI-BL01B | MLAG | MLAG State active & Status connected | MLAG | :white_check_mark: |  |
| 195 | EAPI-LEAF1A | MLAG | MLAG State active & Status connected | MLAG | :white_check_mark: |  |
| 196 | EAPI-LEAF1B | MLAG | MLAG State active & Status connected | MLAG | :white_check_mark: |  |
| 197 | EAPI-LEAF2A | MLAG | MLAG State active & Status connected | MLAG | :white_check_mark: |  |
| 198 | EAPI-LEAF2B | MLAG | MLAG State active & Status connected | MLAG | :white_check_mark: |  |
| 199 | EAPI-BL01A | IP Reachability | ip reachability test p2p links | Source: EAPI-BL01A_Ethernet1 - Destination: EAPI-SPINE1_Ethernet5 | :white_check_mark: |  |
| 200 | EAPI-BL01A | IP Reachability | ip reachability test p2p links | Source: EAPI-BL01A_Ethernet2 - Destination: EAPI-SPINE2_Ethernet5 | :white_check_mark: |  |
| 201 | EAPI-BL01B | IP Reachability | ip reachability test p2p links | Source: EAPI-BL01B_Ethernet1 - Destination: EAPI-SPINE1_Ethernet6 | :white_check_mark: |  |
| 202 | EAPI-BL01B | IP Reachability | ip reachability test p2p links | Source: EAPI-BL01B_Ethernet2 - Destination: EAPI-SPINE2_Ethernet6 | :white_check_mark: |  |
| 203 | EAPI-LEAF1A | IP Reachability | ip reachability test p2p links | Source: EAPI-LEAF1A_Ethernet1 - Destination: EAPI-SPINE1_Ethernet1 | :white_check_mark: |  |
| 204 | EAPI-LEAF1A | IP Reachability | ip reachability test p2p links | Source: EAPI-LEAF1A_Ethernet2 - Destination: EAPI-SPINE2_Ethernet1 | :white_check_mark: |  |
| 205 | EAPI-LEAF1B | IP Reachability | ip reachability test p2p links | Source: EAPI-LEAF1B_Ethernet1 - Destination: EAPI-SPINE1_Ethernet2 | :white_check_mark: |  |
| 206 | EAPI-LEAF1B | IP Reachability | ip reachability test p2p links | Source: EAPI-LEAF1B_Ethernet2 - Destination: EAPI-SPINE2_Ethernet2 | :white_check_mark: |  |
| 207 | EAPI-LEAF2A | IP Reachability | ip reachability test p2p links | Source: EAPI-LEAF2A_Ethernet1 - Destination: EAPI-SPINE1_Ethernet3 | :white_check_mark: |  |
| 208 | EAPI-LEAF2A | IP Reachability | ip reachability test p2p links | Source: EAPI-LEAF2A_Ethernet2 - Destination: EAPI-SPINE2_Ethernet3 | :white_check_mark: |  |
| 209 | EAPI-LEAF2B | IP Reachability | ip reachability test p2p links | Source: EAPI-LEAF2B_Ethernet1 - Destination: EAPI-SPINE1_Ethernet4 | :white_check_mark: |  |
| 210 | EAPI-LEAF2B | IP Reachability | ip reachability test p2p links | Source: EAPI-LEAF2B_Ethernet2 - Destination: EAPI-SPINE2_Ethernet4 | :white_check_mark: |  |
| 211 | EAPI-LEAF3A | IP Reachability | ip reachability test p2p links | Source: EAPI-LEAF3A_Ethernet1 - Destination: EAPI-SPINE1_Ethernet7 | :white_check_mark: |  |
| 212 | EAPI-LEAF3A | IP Reachability | ip reachability test p2p links | Source: EAPI-LEAF3A_Ethernet2 - Destination: EAPI-SPINE2_Ethernet7 | :white_check_mark: |  |
| 213 | EAPI-LEAF4A | IP Reachability | ip reachability test p2p links | Source: EAPI-LEAF4A_Ethernet1 - Destination: EAPI-SPINE1_Ethernet8 | :white_check_mark: |  |
| 214 | EAPI-LEAF4A | IP Reachability | ip reachability test p2p links | Source: EAPI-LEAF4A_Ethernet2 - Destination: EAPI-SPINE2_Ethernet8 | :white_check_mark: |  |
| 215 | EAPI-SPINE1 | IP Reachability | ip reachability test p2p links | Source: EAPI-SPINE1_Ethernet5 - Destination: EAPI-BL01A_Ethernet1 | :white_check_mark: |  |
| 216 | EAPI-SPINE1 | IP Reachability | ip reachability test p2p links | Source: EAPI-SPINE1_Ethernet6 - Destination: EAPI-BL01B_Ethernet1 | :white_check_mark: |  |
| 217 | EAPI-SPINE1 | IP Reachability | ip reachability test p2p links | Source: EAPI-SPINE1_Ethernet1 - Destination: EAPI-LEAF1A_Ethernet1 | :white_check_mark: |  |
| 218 | EAPI-SPINE1 | IP Reachability | ip reachability test p2p links | Source: EAPI-SPINE1_Ethernet2 - Destination: EAPI-LEAF1B_Ethernet1 | :white_check_mark: |  |
| 219 | EAPI-SPINE1 | IP Reachability | ip reachability test p2p links | Source: EAPI-SPINE1_Ethernet3 - Destination: EAPI-LEAF2A_Ethernet1 | :white_check_mark: |  |
| 220 | EAPI-SPINE1 | IP Reachability | ip reachability test p2p links | Source: EAPI-SPINE1_Ethernet4 - Destination: EAPI-LEAF2B_Ethernet1 | :white_check_mark: |  |
| 221 | EAPI-SPINE1 | IP Reachability | ip reachability test p2p links | Source: EAPI-SPINE1_Ethernet7 - Destination: EAPI-LEAF3A_Ethernet1 | :white_check_mark: |  |
| 222 | EAPI-SPINE1 | IP Reachability | ip reachability test p2p links | Source: EAPI-SPINE1_Ethernet8 - Destination: EAPI-LEAF4A_Ethernet1 | :white_check_mark: |  |
| 223 | EAPI-SPINE2 | IP Reachability | ip reachability test p2p links | Source: EAPI-SPINE2_Ethernet5 - Destination: EAPI-BL01A_Ethernet2 | :white_check_mark: |  |
| 224 | EAPI-SPINE2 | IP Reachability | ip reachability test p2p links | Source: EAPI-SPINE2_Ethernet6 - Destination: EAPI-BL01B_Ethernet2 | :white_check_mark: |  |
| 225 | EAPI-SPINE2 | IP Reachability | ip reachability test p2p links | Source: EAPI-SPINE2_Ethernet1 - Destination: EAPI-LEAF1A_Ethernet2 | :white_check_mark: |  |
| 226 | EAPI-SPINE2 | IP Reachability | ip reachability test p2p links | Source: EAPI-SPINE2_Ethernet2 - Destination: EAPI-LEAF1B_Ethernet2 | :white_check_mark: |  |
| 227 | EAPI-SPINE2 | IP Reachability | ip reachability test p2p links | Source: EAPI-SPINE2_Ethernet3 - Destination: EAPI-LEAF2A_Ethernet2 | :white_check_mark: |  |
| 228 | EAPI-SPINE2 | IP Reachability | ip reachability test p2p links | Source: EAPI-SPINE2_Ethernet4 - Destination: EAPI-LEAF2B_Ethernet2 | :white_check_mark: |  |
| 229 | EAPI-SPINE2 | IP Reachability | ip reachability test p2p links | Source: EAPI-SPINE2_Ethernet7 - Destination: EAPI-LEAF3A_Ethernet2 | :white_check_mark: |  |
| 230 | EAPI-SPINE2 | IP Reachability | ip reachability test p2p links | Source: EAPI-SPINE2_Ethernet8 - Destination: EAPI-LEAF4A_Ethernet2 | :white_check_mark: |  |
| 231 | EAPI-BL01A | BGP | ArBGP is configured and operating | ArBGP | :white_check_mark: |  |
| 232 | EAPI-BL01B | BGP | ArBGP is configured and operating | ArBGP | :white_check_mark: |  |
| 233 | EAPI-LEAF1A | BGP | ArBGP is configured and operating | ArBGP | :white_check_mark: |  |
| 234 | EAPI-LEAF1B | BGP | ArBGP is configured and operating | ArBGP | :white_check_mark: |  |
| 235 | EAPI-LEAF2A | BGP | ArBGP is configured and operating | ArBGP | :white_check_mark: |  |
| 236 | EAPI-LEAF2B | BGP | ArBGP is configured and operating | ArBGP | :white_check_mark: |  |
| 237 | EAPI-LEAF3A | BGP | ArBGP is configured and operating | ArBGP | :white_check_mark: |  |
| 238 | EAPI-LEAF4A | BGP | ArBGP is configured and operating | ArBGP | :white_check_mark: |  |
| 239 | EAPI-SPINE1 | BGP | ArBGP is configured and operating | ArBGP | :white_check_mark: |  |
| 240 | EAPI-SPINE2 | BGP | ArBGP is configured and operating | ArBGP | :white_check_mark: |  |
| 241 | EAPI-BL01A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.24 | :white_check_mark: |  |
| 242 | EAPI-BL01A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.26 | :white_check_mark: |  |
| 243 | EAPI-BL01A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.13 | :white_check_mark: |  |
| 244 | EAPI-BL01B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.28 | :white_check_mark: |  |
| 245 | EAPI-BL01B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.30 | :white_check_mark: |  |
| 246 | EAPI-BL01B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.12 | :white_check_mark: |  |
| 247 | EAPI-LEAF1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.0 | :white_check_mark: |  |
| 248 | EAPI-LEAF1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.2 | :white_check_mark: |  |
| 249 | EAPI-LEAF1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.1 | :white_check_mark: |  |
| 250 | EAPI-LEAF1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.4 | :white_check_mark: |  |
| 251 | EAPI-LEAF1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.6 | :white_check_mark: |  |
| 252 | EAPI-LEAF1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.0 | :white_check_mark: |  |
| 253 | EAPI-LEAF2A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.8 | :white_check_mark: |  |
| 254 | EAPI-LEAF2A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.10 | :white_check_mark: |  |
| 255 | EAPI-LEAF2A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.5 | :white_check_mark: |  |
| 256 | EAPI-LEAF2B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.12 | :white_check_mark: |  |
| 257 | EAPI-LEAF2B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.14 | :white_check_mark: |  |
| 258 | EAPI-LEAF2B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.4 | :white_check_mark: |  |
| 259 | EAPI-LEAF3A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.16 | :white_check_mark: |  |
| 260 | EAPI-LEAF3A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.18 | :white_check_mark: |  |
| 261 | EAPI-LEAF4A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.20 | :white_check_mark: |  |
| 262 | EAPI-LEAF4A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.22 | :white_check_mark: |  |
| 263 | EAPI-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.25 | :white_check_mark: |  |
| 264 | EAPI-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.29 | :white_check_mark: |  |
| 265 | EAPI-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.1 | :white_check_mark: |  |
| 266 | EAPI-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.5 | :white_check_mark: |  |
| 267 | EAPI-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.9 | :white_check_mark: |  |
| 268 | EAPI-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.13 | :white_check_mark: |  |
| 269 | EAPI-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.17 | :white_check_mark: |  |
| 270 | EAPI-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.21 | :white_check_mark: |  |
| 271 | EAPI-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.27 | :white_check_mark: |  |
| 272 | EAPI-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.31 | :white_check_mark: |  |
| 273 | EAPI-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.3 | :white_check_mark: |  |
| 274 | EAPI-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.7 | :white_check_mark: |  |
| 275 | EAPI-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.11 | :white_check_mark: |  |
| 276 | EAPI-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.15 | :white_check_mark: |  |
| 277 | EAPI-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.19 | :white_check_mark: |  |
| 278 | EAPI-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.23 | :white_check_mark: |  |
| 279 | EAPI-BL01A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.1 | :white_check_mark: |  |
| 280 | EAPI-BL01A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.2 | :white_check_mark: |  |
| 281 | EAPI-BL01B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.1 | :white_check_mark: |  |
| 282 | EAPI-BL01B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.2 | :white_check_mark: |  |
| 283 | EAPI-LEAF1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.1 | :white_check_mark: |  |
| 284 | EAPI-LEAF1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.2 | :white_check_mark: |  |
| 285 | EAPI-LEAF1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.1 | :white_check_mark: |  |
| 286 | EAPI-LEAF1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.2 | :white_check_mark: |  |
| 287 | EAPI-LEAF2A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.1 | :white_check_mark: |  |
| 288 | EAPI-LEAF2A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.2 | :white_check_mark: |  |
| 289 | EAPI-LEAF2B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.1 | :white_check_mark: |  |
| 290 | EAPI-LEAF2B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.2 | :white_check_mark: |  |
| 291 | EAPI-LEAF3A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.1 | :white_check_mark: |  |
| 292 | EAPI-LEAF3A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.2 | :white_check_mark: |  |
| 293 | EAPI-LEAF4A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.1 | :white_check_mark: |  |
| 294 | EAPI-LEAF4A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.2 | :white_check_mark: |  |
| 295 | EAPI-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.9 | :white_check_mark: |  |
| 296 | EAPI-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.10 | :white_check_mark: |  |
| 297 | EAPI-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.3 | :white_check_mark: |  |
| 298 | EAPI-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.4 | :white_check_mark: |  |
| 299 | EAPI-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.5 | :white_check_mark: |  |
| 300 | EAPI-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.6 | :white_check_mark: |  |
| 301 | EAPI-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.7 | :white_check_mark: |  |
| 302 | EAPI-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.8 | :white_check_mark: |  |
| 303 | EAPI-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.9 | :white_check_mark: |  |
| 304 | EAPI-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.10 | :white_check_mark: |  |
| 305 | EAPI-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.3 | :white_check_mark: |  |
| 306 | EAPI-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.4 | :white_check_mark: |  |
| 307 | EAPI-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.5 | :white_check_mark: |  |
| 308 | EAPI-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.6 | :white_check_mark: |  |
| 309 | EAPI-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.7 | :white_check_mark: |  |
| 310 | EAPI-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 192.168.255.8 | :white_check_mark: |  |
| 311 | EAPI-BL01A | Routing Table | Remote Lo1 address | 192.168.254.9 | :white_check_mark: |  |
| 312 | EAPI-BL01A | Routing Table | Remote Lo1 address | 192.168.254.3 | :white_check_mark: |  |
| 313 | EAPI-BL01A | Routing Table | Remote Lo1 address | 192.168.254.5 | :white_check_mark: |  |
| 314 | EAPI-BL01A | Routing Table | Remote Lo1 address | 192.168.254.7 | :white_check_mark: |  |
| 315 | EAPI-BL01A | Routing Table | Remote Lo1 address | 192.168.254.8 | :white_check_mark: |  |
| 316 | EAPI-BL01B | Routing Table | Remote Lo1 address | 192.168.254.9 | :white_check_mark: |  |
| 317 | EAPI-BL01B | Routing Table | Remote Lo1 address | 192.168.254.3 | :white_check_mark: |  |
| 318 | EAPI-BL01B | Routing Table | Remote Lo1 address | 192.168.254.5 | :white_check_mark: |  |
| 319 | EAPI-BL01B | Routing Table | Remote Lo1 address | 192.168.254.7 | :white_check_mark: |  |
| 320 | EAPI-BL01B | Routing Table | Remote Lo1 address | 192.168.254.8 | :white_check_mark: |  |
| 321 | EAPI-LEAF1A | Routing Table | Remote Lo1 address | 192.168.254.9 | :white_check_mark: |  |
| 322 | EAPI-LEAF1A | Routing Table | Remote Lo1 address | 192.168.254.3 | :white_check_mark: |  |
| 323 | EAPI-LEAF1A | Routing Table | Remote Lo1 address | 192.168.254.5 | :white_check_mark: |  |
| 324 | EAPI-LEAF1A | Routing Table | Remote Lo1 address | 192.168.254.7 | :white_check_mark: |  |
| 325 | EAPI-LEAF1A | Routing Table | Remote Lo1 address | 192.168.254.8 | :white_check_mark: |  |
| 326 | EAPI-LEAF1B | Routing Table | Remote Lo1 address | 192.168.254.9 | :white_check_mark: |  |
| 327 | EAPI-LEAF1B | Routing Table | Remote Lo1 address | 192.168.254.3 | :white_check_mark: |  |
| 328 | EAPI-LEAF1B | Routing Table | Remote Lo1 address | 192.168.254.5 | :white_check_mark: |  |
| 329 | EAPI-LEAF1B | Routing Table | Remote Lo1 address | 192.168.254.7 | :white_check_mark: |  |
| 330 | EAPI-LEAF1B | Routing Table | Remote Lo1 address | 192.168.254.8 | :white_check_mark: |  |
| 331 | EAPI-LEAF2A | Routing Table | Remote Lo1 address | 192.168.254.9 | :white_check_mark: |  |
| 332 | EAPI-LEAF2A | Routing Table | Remote Lo1 address | 192.168.254.3 | :white_check_mark: |  |
| 333 | EAPI-LEAF2A | Routing Table | Remote Lo1 address | 192.168.254.5 | :white_check_mark: |  |
| 334 | EAPI-LEAF2A | Routing Table | Remote Lo1 address | 192.168.254.7 | :white_check_mark: |  |
| 335 | EAPI-LEAF2A | Routing Table | Remote Lo1 address | 192.168.254.8 | :white_check_mark: |  |
| 336 | EAPI-LEAF2B | Routing Table | Remote Lo1 address | 192.168.254.9 | :white_check_mark: |  |
| 337 | EAPI-LEAF2B | Routing Table | Remote Lo1 address | 192.168.254.3 | :white_check_mark: |  |
| 338 | EAPI-LEAF2B | Routing Table | Remote Lo1 address | 192.168.254.5 | :white_check_mark: |  |
| 339 | EAPI-LEAF2B | Routing Table | Remote Lo1 address | 192.168.254.7 | :white_check_mark: |  |
| 340 | EAPI-LEAF2B | Routing Table | Remote Lo1 address | 192.168.254.8 | :white_check_mark: |  |
| 341 | EAPI-LEAF3A | Routing Table | Remote Lo1 address | 192.168.254.9 | :white_check_mark: |  |
| 342 | EAPI-LEAF3A | Routing Table | Remote Lo1 address | 192.168.254.3 | :white_check_mark: |  |
| 343 | EAPI-LEAF3A | Routing Table | Remote Lo1 address | 192.168.254.5 | :white_check_mark: |  |
| 344 | EAPI-LEAF3A | Routing Table | Remote Lo1 address | 192.168.254.7 | :white_check_mark: |  |
| 345 | EAPI-LEAF3A | Routing Table | Remote Lo1 address | 192.168.254.8 | :white_check_mark: |  |
| 346 | EAPI-LEAF4A | Routing Table | Remote Lo1 address | 192.168.254.9 | :white_check_mark: |  |
| 347 | EAPI-LEAF4A | Routing Table | Remote Lo1 address | 192.168.254.3 | :white_check_mark: |  |
| 348 | EAPI-LEAF4A | Routing Table | Remote Lo1 address | 192.168.254.5 | :white_check_mark: |  |
| 349 | EAPI-LEAF4A | Routing Table | Remote Lo1 address | 192.168.254.7 | :white_check_mark: |  |
| 350 | EAPI-LEAF4A | Routing Table | Remote Lo1 address | 192.168.254.8 | :white_check_mark: |  |
| 351 | EAPI-BL01A | Routing Table | Remote Lo0 address | 192.168.255.9 | :white_check_mark: |  |
| 352 | EAPI-BL01A | Routing Table | Remote Lo0 address | 192.168.255.10 | :white_check_mark: |  |
| 353 | EAPI-BL01A | Routing Table | Remote Lo0 address | 192.168.255.3 | :white_check_mark: |  |
| 354 | EAPI-BL01A | Routing Table | Remote Lo0 address | 192.168.255.4 | :white_check_mark: |  |
| 355 | EAPI-BL01A | Routing Table | Remote Lo0 address | 192.168.255.5 | :white_check_mark: |  |
| 356 | EAPI-BL01A | Routing Table | Remote Lo0 address | 192.168.255.6 | :white_check_mark: |  |
| 357 | EAPI-BL01A | Routing Table | Remote Lo0 address | 192.168.255.7 | :white_check_mark: |  |
| 358 | EAPI-BL01A | Routing Table | Remote Lo0 address | 192.168.255.8 | :white_check_mark: |  |
| 359 | EAPI-BL01B | Routing Table | Remote Lo0 address | 192.168.255.9 | :white_check_mark: |  |
| 360 | EAPI-BL01B | Routing Table | Remote Lo0 address | 192.168.255.10 | :white_check_mark: |  |
| 361 | EAPI-BL01B | Routing Table | Remote Lo0 address | 192.168.255.3 | :white_check_mark: |  |
| 362 | EAPI-BL01B | Routing Table | Remote Lo0 address | 192.168.255.4 | :white_check_mark: |  |
| 363 | EAPI-BL01B | Routing Table | Remote Lo0 address | 192.168.255.5 | :white_check_mark: |  |
| 364 | EAPI-BL01B | Routing Table | Remote Lo0 address | 192.168.255.6 | :white_check_mark: |  |
| 365 | EAPI-BL01B | Routing Table | Remote Lo0 address | 192.168.255.7 | :white_check_mark: |  |
| 366 | EAPI-BL01B | Routing Table | Remote Lo0 address | 192.168.255.8 | :white_check_mark: |  |
| 367 | EAPI-LEAF1A | Routing Table | Remote Lo0 address | 192.168.255.9 | :white_check_mark: |  |
| 368 | EAPI-LEAF1A | Routing Table | Remote Lo0 address | 192.168.255.10 | :white_check_mark: |  |
| 369 | EAPI-LEAF1A | Routing Table | Remote Lo0 address | 192.168.255.3 | :white_check_mark: |  |
| 370 | EAPI-LEAF1A | Routing Table | Remote Lo0 address | 192.168.255.4 | :white_check_mark: |  |
| 371 | EAPI-LEAF1A | Routing Table | Remote Lo0 address | 192.168.255.5 | :white_check_mark: |  |
| 372 | EAPI-LEAF1A | Routing Table | Remote Lo0 address | 192.168.255.6 | :white_check_mark: |  |
| 373 | EAPI-LEAF1A | Routing Table | Remote Lo0 address | 192.168.255.7 | :white_check_mark: |  |
| 374 | EAPI-LEAF1A | Routing Table | Remote Lo0 address | 192.168.255.8 | :white_check_mark: |  |
| 375 | EAPI-LEAF1B | Routing Table | Remote Lo0 address | 192.168.255.9 | :white_check_mark: |  |
| 376 | EAPI-LEAF1B | Routing Table | Remote Lo0 address | 192.168.255.10 | :white_check_mark: |  |
| 377 | EAPI-LEAF1B | Routing Table | Remote Lo0 address | 192.168.255.3 | :white_check_mark: |  |
| 378 | EAPI-LEAF1B | Routing Table | Remote Lo0 address | 192.168.255.4 | :white_check_mark: |  |
| 379 | EAPI-LEAF1B | Routing Table | Remote Lo0 address | 192.168.255.5 | :white_check_mark: |  |
| 380 | EAPI-LEAF1B | Routing Table | Remote Lo0 address | 192.168.255.6 | :white_check_mark: |  |
| 381 | EAPI-LEAF1B | Routing Table | Remote Lo0 address | 192.168.255.7 | :white_check_mark: |  |
| 382 | EAPI-LEAF1B | Routing Table | Remote Lo0 address | 192.168.255.8 | :white_check_mark: |  |
| 383 | EAPI-LEAF2A | Routing Table | Remote Lo0 address | 192.168.255.9 | :white_check_mark: |  |
| 384 | EAPI-LEAF2A | Routing Table | Remote Lo0 address | 192.168.255.10 | :white_check_mark: |  |
| 385 | EAPI-LEAF2A | Routing Table | Remote Lo0 address | 192.168.255.3 | :white_check_mark: |  |
| 386 | EAPI-LEAF2A | Routing Table | Remote Lo0 address | 192.168.255.4 | :white_check_mark: |  |
| 387 | EAPI-LEAF2A | Routing Table | Remote Lo0 address | 192.168.255.5 | :white_check_mark: |  |
| 388 | EAPI-LEAF2A | Routing Table | Remote Lo0 address | 192.168.255.6 | :white_check_mark: |  |
| 389 | EAPI-LEAF2A | Routing Table | Remote Lo0 address | 192.168.255.7 | :white_check_mark: |  |
| 390 | EAPI-LEAF2A | Routing Table | Remote Lo0 address | 192.168.255.8 | :white_check_mark: |  |
| 391 | EAPI-LEAF2B | Routing Table | Remote Lo0 address | 192.168.255.9 | :white_check_mark: |  |
| 392 | EAPI-LEAF2B | Routing Table | Remote Lo0 address | 192.168.255.10 | :white_check_mark: |  |
| 393 | EAPI-LEAF2B | Routing Table | Remote Lo0 address | 192.168.255.3 | :white_check_mark: |  |
| 394 | EAPI-LEAF2B | Routing Table | Remote Lo0 address | 192.168.255.4 | :white_check_mark: |  |
| 395 | EAPI-LEAF2B | Routing Table | Remote Lo0 address | 192.168.255.5 | :white_check_mark: |  |
| 396 | EAPI-LEAF2B | Routing Table | Remote Lo0 address | 192.168.255.6 | :white_check_mark: |  |
| 397 | EAPI-LEAF2B | Routing Table | Remote Lo0 address | 192.168.255.7 | :white_check_mark: |  |
| 398 | EAPI-LEAF2B | Routing Table | Remote Lo0 address | 192.168.255.8 | :white_check_mark: |  |
| 399 | EAPI-LEAF3A | Routing Table | Remote Lo0 address | 192.168.255.9 | :white_check_mark: |  |
| 400 | EAPI-LEAF3A | Routing Table | Remote Lo0 address | 192.168.255.10 | :white_check_mark: |  |
| 401 | EAPI-LEAF3A | Routing Table | Remote Lo0 address | 192.168.255.3 | :white_check_mark: |  |
| 402 | EAPI-LEAF3A | Routing Table | Remote Lo0 address | 192.168.255.4 | :white_check_mark: |  |
| 403 | EAPI-LEAF3A | Routing Table | Remote Lo0 address | 192.168.255.5 | :white_check_mark: |  |
| 404 | EAPI-LEAF3A | Routing Table | Remote Lo0 address | 192.168.255.6 | :white_check_mark: |  |
| 405 | EAPI-LEAF3A | Routing Table | Remote Lo0 address | 192.168.255.7 | :white_check_mark: |  |
| 406 | EAPI-LEAF3A | Routing Table | Remote Lo0 address | 192.168.255.8 | :white_check_mark: |  |
| 407 | EAPI-LEAF4A | Routing Table | Remote Lo0 address | 192.168.255.9 | :white_check_mark: |  |
| 408 | EAPI-LEAF4A | Routing Table | Remote Lo0 address | 192.168.255.10 | :white_check_mark: |  |
| 409 | EAPI-LEAF4A | Routing Table | Remote Lo0 address | 192.168.255.3 | :white_check_mark: |  |
| 410 | EAPI-LEAF4A | Routing Table | Remote Lo0 address | 192.168.255.4 | :white_check_mark: |  |
| 411 | EAPI-LEAF4A | Routing Table | Remote Lo0 address | 192.168.255.5 | :white_check_mark: |  |
| 412 | EAPI-LEAF4A | Routing Table | Remote Lo0 address | 192.168.255.6 | :white_check_mark: |  |
| 413 | EAPI-LEAF4A | Routing Table | Remote Lo0 address | 192.168.255.7 | :white_check_mark: |  |
| 414 | EAPI-LEAF4A | Routing Table | Remote Lo0 address | 192.168.255.8 | :white_check_mark: |  |
| 415 | EAPI-SPINE1 | Routing Table | Remote Lo0 address | 192.168.255.9 | :white_check_mark: |  |
| 416 | EAPI-SPINE1 | Routing Table | Remote Lo0 address | 192.168.255.10 | :white_check_mark: |  |
| 417 | EAPI-SPINE1 | Routing Table | Remote Lo0 address | 192.168.255.3 | :white_check_mark: |  |
| 418 | EAPI-SPINE1 | Routing Table | Remote Lo0 address | 192.168.255.4 | :white_check_mark: |  |
| 419 | EAPI-SPINE1 | Routing Table | Remote Lo0 address | 192.168.255.5 | :white_check_mark: |  |
| 420 | EAPI-SPINE1 | Routing Table | Remote Lo0 address | 192.168.255.6 | :white_check_mark: |  |
| 421 | EAPI-SPINE1 | Routing Table | Remote Lo0 address | 192.168.255.7 | :white_check_mark: |  |
| 422 | EAPI-SPINE1 | Routing Table | Remote Lo0 address | 192.168.255.8 | :white_check_mark: |  |
| 423 | EAPI-SPINE2 | Routing Table | Remote Lo0 address | 192.168.255.9 | :white_check_mark: |  |
| 424 | EAPI-SPINE2 | Routing Table | Remote Lo0 address | 192.168.255.10 | :white_check_mark: |  |
| 425 | EAPI-SPINE2 | Routing Table | Remote Lo0 address | 192.168.255.3 | :white_check_mark: |  |
| 426 | EAPI-SPINE2 | Routing Table | Remote Lo0 address | 192.168.255.4 | :white_check_mark: |  |
| 427 | EAPI-SPINE2 | Routing Table | Remote Lo0 address | 192.168.255.5 | :white_check_mark: |  |
| 428 | EAPI-SPINE2 | Routing Table | Remote Lo0 address | 192.168.255.6 | :white_check_mark: |  |
| 429 | EAPI-SPINE2 | Routing Table | Remote Lo0 address | 192.168.255.7 | :white_check_mark: |  |
| 430 | EAPI-SPINE2 | Routing Table | Remote Lo0 address | 192.168.255.8 | :white_check_mark: |  |
| 431 | EAPI-BL01A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-BL01A - 192.168.255.9 Destination: 192.168.255.9 | :white_check_mark: |  |
| 432 | EAPI-BL01A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-BL01A - 192.168.255.9 Destination: 192.168.255.10 | :white_check_mark: |  |
| 433 | EAPI-BL01A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-BL01A - 192.168.255.9 Destination: 192.168.255.3 | :white_check_mark: |  |
| 434 | EAPI-BL01A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-BL01A - 192.168.255.9 Destination: 192.168.255.4 | :white_check_mark: |  |
| 435 | EAPI-BL01A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-BL01A - 192.168.255.9 Destination: 192.168.255.5 | :white_check_mark: |  |
| 436 | EAPI-BL01A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-BL01A - 192.168.255.9 Destination: 192.168.255.6 | :white_check_mark: |  |
| 437 | EAPI-BL01A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-BL01A - 192.168.255.9 Destination: 192.168.255.7 | :white_check_mark: |  |
| 438 | EAPI-BL01A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-BL01A - 192.168.255.9 Destination: 192.168.255.8 | :white_check_mark: |  |
| 439 | EAPI-BL01B | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-BL01B - 192.168.255.10 Destination: 192.168.255.9 | :white_check_mark: |  |
| 440 | EAPI-BL01B | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-BL01B - 192.168.255.10 Destination: 192.168.255.10 | :white_check_mark: |  |
| 441 | EAPI-BL01B | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-BL01B - 192.168.255.10 Destination: 192.168.255.3 | :white_check_mark: |  |
| 442 | EAPI-BL01B | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-BL01B - 192.168.255.10 Destination: 192.168.255.4 | :white_check_mark: |  |
| 443 | EAPI-BL01B | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-BL01B - 192.168.255.10 Destination: 192.168.255.5 | :white_check_mark: |  |
| 444 | EAPI-BL01B | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-BL01B - 192.168.255.10 Destination: 192.168.255.6 | :white_check_mark: |  |
| 445 | EAPI-BL01B | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-BL01B - 192.168.255.10 Destination: 192.168.255.7 | :white_check_mark: |  |
| 446 | EAPI-BL01B | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-BL01B - 192.168.255.10 Destination: 192.168.255.8 | :white_check_mark: |  |
| 447 | EAPI-LEAF1A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF1A - 192.168.255.3 Destination: 192.168.255.9 | :white_check_mark: |  |
| 448 | EAPI-LEAF1A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF1A - 192.168.255.3 Destination: 192.168.255.10 | :white_check_mark: |  |
| 449 | EAPI-LEAF1A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF1A - 192.168.255.3 Destination: 192.168.255.3 | :white_check_mark: |  |
| 450 | EAPI-LEAF1A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF1A - 192.168.255.3 Destination: 192.168.255.4 | :white_check_mark: |  |
| 451 | EAPI-LEAF1A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF1A - 192.168.255.3 Destination: 192.168.255.5 | :white_check_mark: |  |
| 452 | EAPI-LEAF1A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF1A - 192.168.255.3 Destination: 192.168.255.6 | :white_check_mark: |  |
| 453 | EAPI-LEAF1A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF1A - 192.168.255.3 Destination: 192.168.255.7 | :white_check_mark: |  |
| 454 | EAPI-LEAF1A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF1A - 192.168.255.3 Destination: 192.168.255.8 | :white_check_mark: |  |
| 455 | EAPI-LEAF1B | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF1B - 192.168.255.4 Destination: 192.168.255.9 | :white_check_mark: |  |
| 456 | EAPI-LEAF1B | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF1B - 192.168.255.4 Destination: 192.168.255.10 | :white_check_mark: |  |
| 457 | EAPI-LEAF1B | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF1B - 192.168.255.4 Destination: 192.168.255.3 | :white_check_mark: |  |
| 458 | EAPI-LEAF1B | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF1B - 192.168.255.4 Destination: 192.168.255.4 | :white_check_mark: |  |
| 459 | EAPI-LEAF1B | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF1B - 192.168.255.4 Destination: 192.168.255.5 | :white_check_mark: |  |
| 460 | EAPI-LEAF1B | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF1B - 192.168.255.4 Destination: 192.168.255.6 | :white_check_mark: |  |
| 461 | EAPI-LEAF1B | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF1B - 192.168.255.4 Destination: 192.168.255.7 | :white_check_mark: |  |
| 462 | EAPI-LEAF1B | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF1B - 192.168.255.4 Destination: 192.168.255.8 | :white_check_mark: |  |
| 463 | EAPI-LEAF2A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF2A - 192.168.255.5 Destination: 192.168.255.9 | :white_check_mark: |  |
| 464 | EAPI-LEAF2A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF2A - 192.168.255.5 Destination: 192.168.255.10 | :white_check_mark: |  |
| 465 | EAPI-LEAF2A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF2A - 192.168.255.5 Destination: 192.168.255.3 | :white_check_mark: |  |
| 466 | EAPI-LEAF2A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF2A - 192.168.255.5 Destination: 192.168.255.4 | :white_check_mark: |  |
| 467 | EAPI-LEAF2A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF2A - 192.168.255.5 Destination: 192.168.255.5 | :white_check_mark: |  |
| 468 | EAPI-LEAF2A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF2A - 192.168.255.5 Destination: 192.168.255.6 | :white_check_mark: |  |
| 469 | EAPI-LEAF2A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF2A - 192.168.255.5 Destination: 192.168.255.7 | :white_check_mark: |  |
| 470 | EAPI-LEAF2A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF2A - 192.168.255.5 Destination: 192.168.255.8 | :white_check_mark: |  |
| 471 | EAPI-LEAF2B | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF2B - 192.168.255.6 Destination: 192.168.255.9 | :white_check_mark: |  |
| 472 | EAPI-LEAF2B | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF2B - 192.168.255.6 Destination: 192.168.255.10 | :white_check_mark: |  |
| 473 | EAPI-LEAF2B | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF2B - 192.168.255.6 Destination: 192.168.255.3 | :white_check_mark: |  |
| 474 | EAPI-LEAF2B | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF2B - 192.168.255.6 Destination: 192.168.255.4 | :white_check_mark: |  |
| 475 | EAPI-LEAF2B | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF2B - 192.168.255.6 Destination: 192.168.255.5 | :white_check_mark: |  |
| 476 | EAPI-LEAF2B | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF2B - 192.168.255.6 Destination: 192.168.255.6 | :white_check_mark: |  |
| 477 | EAPI-LEAF2B | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF2B - 192.168.255.6 Destination: 192.168.255.7 | :white_check_mark: |  |
| 478 | EAPI-LEAF2B | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF2B - 192.168.255.6 Destination: 192.168.255.8 | :white_check_mark: |  |
| 479 | EAPI-LEAF3A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF3A - 192.168.255.7 Destination: 192.168.255.9 | :white_check_mark: |  |
| 480 | EAPI-LEAF3A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF3A - 192.168.255.7 Destination: 192.168.255.10 | :white_check_mark: |  |
| 481 | EAPI-LEAF3A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF3A - 192.168.255.7 Destination: 192.168.255.3 | :white_check_mark: |  |
| 482 | EAPI-LEAF3A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF3A - 192.168.255.7 Destination: 192.168.255.4 | :white_check_mark: |  |
| 483 | EAPI-LEAF3A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF3A - 192.168.255.7 Destination: 192.168.255.5 | :white_check_mark: |  |
| 484 | EAPI-LEAF3A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF3A - 192.168.255.7 Destination: 192.168.255.6 | :white_check_mark: |  |
| 485 | EAPI-LEAF3A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF3A - 192.168.255.7 Destination: 192.168.255.7 | :white_check_mark: |  |
| 486 | EAPI-LEAF3A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF3A - 192.168.255.7 Destination: 192.168.255.8 | :white_check_mark: |  |
| 487 | EAPI-LEAF4A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF4A - 192.168.255.8 Destination: 192.168.255.9 | :white_check_mark: |  |
| 488 | EAPI-LEAF4A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF4A - 192.168.255.8 Destination: 192.168.255.10 | :white_check_mark: |  |
| 489 | EAPI-LEAF4A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF4A - 192.168.255.8 Destination: 192.168.255.3 | :white_check_mark: |  |
| 490 | EAPI-LEAF4A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF4A - 192.168.255.8 Destination: 192.168.255.4 | :white_check_mark: |  |
| 491 | EAPI-LEAF4A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF4A - 192.168.255.8 Destination: 192.168.255.5 | :white_check_mark: |  |
| 492 | EAPI-LEAF4A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF4A - 192.168.255.8 Destination: 192.168.255.6 | :white_check_mark: |  |
| 493 | EAPI-LEAF4A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF4A - 192.168.255.8 Destination: 192.168.255.7 | :white_check_mark: |  |
| 494 | EAPI-LEAF4A | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-LEAF4A - 192.168.255.8 Destination: 192.168.255.8 | :white_check_mark: |  |
| 495 | EAPI-SPINE1 | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-SPINE1 - 192.168.255.1 Destination: 192.168.255.9 | :white_check_mark: |  |
| 496 | EAPI-SPINE1 | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-SPINE1 - 192.168.255.1 Destination: 192.168.255.10 | :white_check_mark: |  |
| 497 | EAPI-SPINE1 | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-SPINE1 - 192.168.255.1 Destination: 192.168.255.3 | :white_check_mark: |  |
| 498 | EAPI-SPINE1 | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-SPINE1 - 192.168.255.1 Destination: 192.168.255.4 | :white_check_mark: |  |
| 499 | EAPI-SPINE1 | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-SPINE1 - 192.168.255.1 Destination: 192.168.255.5 | :white_check_mark: |  |
| 500 | EAPI-SPINE1 | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-SPINE1 - 192.168.255.1 Destination: 192.168.255.6 | :white_check_mark: |  |
| 501 | EAPI-SPINE1 | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-SPINE1 - 192.168.255.1 Destination: 192.168.255.7 | :white_check_mark: |  |
| 502 | EAPI-SPINE1 | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-SPINE1 - 192.168.255.1 Destination: 192.168.255.8 | :white_check_mark: |  |
| 503 | EAPI-SPINE2 | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-SPINE2 - 192.168.255.2 Destination: 192.168.255.9 | :white_check_mark: |  |
| 504 | EAPI-SPINE2 | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-SPINE2 - 192.168.255.2 Destination: 192.168.255.10 | :white_check_mark: |  |
| 505 | EAPI-SPINE2 | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-SPINE2 - 192.168.255.2 Destination: 192.168.255.3 | :white_check_mark: |  |
| 506 | EAPI-SPINE2 | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-SPINE2 - 192.168.255.2 Destination: 192.168.255.4 | :white_check_mark: |  |
| 507 | EAPI-SPINE2 | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-SPINE2 - 192.168.255.2 Destination: 192.168.255.5 | :white_check_mark: |  |
| 508 | EAPI-SPINE2 | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-SPINE2 - 192.168.255.2 Destination: 192.168.255.6 | :white_check_mark: |  |
| 509 | EAPI-SPINE2 | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-SPINE2 - 192.168.255.2 Destination: 192.168.255.7 | :white_check_mark: |  |
| 510 | EAPI-SPINE2 | Loopback0 Reachability | Loopback0 Reachability | Source: EAPI-SPINE2 - 192.168.255.2 Destination: 192.168.255.8 | :white_check_mark: |  |
