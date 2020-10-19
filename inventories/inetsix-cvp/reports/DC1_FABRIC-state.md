
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
| 228 | 214 | 14 |

### Summary Totals Devices Under Tests

| DUT | Total Tests | Tests Passed | Tests Failed | Categories Failed |
| --- | ----------- | ------------ | ------------ | ----------------- |
| DC1-AGG01 |  5 | 4 | 1 | NTP |
| DC1-AGG02 |  5 | 4 | 1 | NTP |
| DC1-BL01A |  19 | 17 | 2 | NTP, Interface State |
| DC1-BL01B |  19 | 17 | 2 | NTP, Interface State |
| DC1-LEAF1A |  26 | 25 | 1 | NTP |
| DC1-LEAF1B |  26 | 25 | 1 | NTP |
| DC1-LEAF2A |  24 | 23 | 1 | NTP |
| DC1-LEAF2B |  24 | 23 | 1 | NTP |
| DC1-LEAF3A |  13 | 12 | 1 | NTP |
| DC1-LEAF4A |  13 | 12 | 1 | NTP |
| DC1-SPINE1 |  27 | 26 | 1 | NTP |
| DC1-SPINE2 |  27 | 26 | 1 | NTP |

### Summary Totals Per Category

| Test Category | Total Tests | Tests Passed | Tests Failed |
| ------------- | ----------- | ------------ | ------------ |
| NTP |  12 | 0 | 12 |
| Interface State |  124 | 122 | 2 |
| MLAG |  6 | 6 | 0 |
| BGP |  86 | 86 | 0 |

## Failed Test Results Summary

| Test ID | Node | Test Category | Test Description | Test | Test Result | Failure Reason |
| ------- | ---- | ------------- | ---------------- | ---- | ----------- | -------------- |
| 1 | DC1-AGG01 | NTP | Synchronised with NTP server | NTP | :x: | not synchronised to NTP server |
| 2 | DC1-AGG02 | NTP | Synchronised with NTP server | NTP | :x: | not synchronised to NTP server |
| 3 | DC1-BL01A | NTP | Synchronised with NTP server | NTP | :x: | not synchronised to NTP server |
| 4 | DC1-BL01B | NTP | Synchronised with NTP server | NTP | :x: | not synchronised to NTP server |
| 5 | DC1-LEAF1A | NTP | Synchronised with NTP server | NTP | :x: | not synchronised to NTP server |
| 6 | DC1-LEAF1B | NTP | Synchronised with NTP server | NTP | :x: | not synchronised to NTP server |
| 7 | DC1-LEAF2A | NTP | Synchronised with NTP server | NTP | :x: | not synchronised to NTP server |
| 8 | DC1-LEAF2B | NTP | Synchronised with NTP server | NTP | :x: | not synchronised to NTP server |
| 9 | DC1-LEAF3A | NTP | Synchronised with NTP server | NTP | :x: | not synchronised to NTP server |
| 10 | DC1-LEAF4A | NTP | Synchronised with NTP server | NTP | :x: | not synchronised to NTP server |
| 11 | DC1-SPINE1 | NTP | Synchronised with NTP server | NTP | :x: | not synchronised to NTP server |
| 12 | DC1-SPINE2 | NTP | Synchronised with NTP server | NTP | :x: | not synchronised to NTP server |
| 109 | DC1-BL01A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | :x: | interface status: down - line protocol status: down |
| 110 | DC1-BL01B | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | :x: | interface status: down - line protocol status: down |

## All Test Results

| Test ID | Node | Test Category | Test Description | Test | Test Result | Failure Reason |
| ------- | ---- | ------------- | ---------------- | ---- | ----------- | -------------- |
| 1 | DC1-AGG01 | NTP | Synchronised with NTP server | NTP | FAIL | not synchronised to NTP server |
| 2 | DC1-AGG02 | NTP | Synchronised with NTP server | NTP | FAIL | not synchronised to NTP server |
| 3 | DC1-BL01A | NTP | Synchronised with NTP server | NTP | FAIL | not synchronised to NTP server |
| 4 | DC1-BL01B | NTP | Synchronised with NTP server | NTP | FAIL | not synchronised to NTP server |
| 5 | DC1-LEAF1A | NTP | Synchronised with NTP server | NTP | FAIL | not synchronised to NTP server |
| 6 | DC1-LEAF1B | NTP | Synchronised with NTP server | NTP | FAIL | not synchronised to NTP server |
| 7 | DC1-LEAF2A | NTP | Synchronised with NTP server | NTP | FAIL | not synchronised to NTP server |
| 8 | DC1-LEAF2B | NTP | Synchronised with NTP server | NTP | FAIL | not synchronised to NTP server |
| 9 | DC1-LEAF3A | NTP | Synchronised with NTP server | NTP | FAIL | not synchronised to NTP server |
| 10 | DC1-LEAF4A | NTP | Synchronised with NTP server | NTP | FAIL | not synchronised to NTP server |
| 11 | DC1-SPINE1 | NTP | Synchronised with NTP server | NTP | FAIL | not synchronised to NTP server |
| 12 | DC1-SPINE2 | NTP | Synchronised with NTP server | NTP | FAIL | not synchronised to NTP server |
| 13 | DC1-AGG01 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - DC1-LEAF1A_Ethernet5 | PASS |  |
| 14 | DC1-AGG01 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - DC1-LEAF1B_Ethernet5 | PASS |  |
| 15 | DC1-AGG01 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - SRV-POD01_Eth1 | PASS |  |
| 16 | DC1-AGG02 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - DC1-LEAF2A_Ethernet5 | PASS |  |
| 17 | DC1-AGG02 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - DC1-LEAF2B_Ethernet5 | PASS |  |
| 18 | DC1-AGG02 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - SRV-POD02_Eth1 | PASS |  |
| 19 | DC1-BL01A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet5 | PASS |  |
| 20 | DC1-BL01A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet5 | PASS |  |
| 21 | DC1-BL01A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - MLAG_PEER_DC1-BL01B_Ethernet3 | PASS |  |
| 22 | DC1-BL01A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - MLAG_PEER_DC1-BL01B_Ethernet4 | PASS |  |
| 23 | DC1-BL01B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet6 | PASS |  |
| 24 | DC1-BL01B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet6 | PASS |  |
| 25 | DC1-BL01B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - MLAG_PEER_DC1-BL01A_Ethernet3 | PASS |  |
| 26 | DC1-BL01B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - MLAG_PEER_DC1-BL01A_Ethernet4 | PASS |  |
| 27 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet1 | PASS |  |
| 28 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet1 | PASS |  |
| 29 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - MLAG_PEER_DC1-LEAF1B_Ethernet3 | PASS |  |
| 30 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - MLAG_PEER_DC1-LEAF1B_Ethernet4 | PASS |  |
| 31 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - DC1-AGG01_Ethernet1 | PASS |  |
| 32 | DC1-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet2 | PASS |  |
| 33 | DC1-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet2 | PASS |  |
| 34 | DC1-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - MLAG_PEER_DC1-LEAF1A_Ethernet3 | PASS |  |
| 35 | DC1-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - MLAG_PEER_DC1-LEAF1A_Ethernet4 | PASS |  |
| 36 | DC1-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - DC1-AGG01_Ethernet2 | PASS |  |
| 37 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet3 | PASS |  |
| 38 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet3 | PASS |  |
| 39 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - MLAG_PEER_DC1-LEAF2B_Ethernet3 | PASS |  |
| 40 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - MLAG_PEER_DC1-LEAF2B_Ethernet4 | PASS |  |
| 41 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - DC1-AGG02_Ethernet1 | PASS |  |
| 42 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet4 | PASS |  |
| 43 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet4 | PASS |  |
| 44 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - MLAG_PEER_DC1-LEAF2A_Ethernet3 | PASS |  |
| 45 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - MLAG_PEER_DC1-LEAF2A_Ethernet4 | PASS |  |
| 46 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - DC1-AGG02_Ethernet2 | PASS |  |
| 47 | DC1-LEAF3A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet7 | PASS |  |
| 48 | DC1-LEAF3A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet7 | PASS |  |
| 49 | DC1-LEAF4A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet8 | PASS |  |
| 50 | DC1-LEAF4A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet8 | PASS |  |
| 51 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - P2P_LINK_TO_DC1-BL01A_Ethernet1 | PASS |  |
| 52 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - P2P_LINK_TO_DC1-BL01B_Ethernet1 | PASS |  |
| 53 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-LEAF1A_Ethernet1 | PASS |  |
| 54 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-LEAF1B_Ethernet1 | PASS |  |
| 55 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_DC1-LEAF2A_Ethernet1 | PASS |  |
| 56 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_DC1-LEAF2B_Ethernet1 | PASS |  |
| 57 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet7 - P2P_LINK_TO_DC1-LEAF3A_Ethernet1 | PASS |  |
| 58 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet8 - P2P_LINK_TO_DC1-LEAF4A_Ethernet1 | PASS |  |
| 59 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - P2P_LINK_TO_DC1-BL01A_Ethernet2 | PASS |  |
| 60 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - P2P_LINK_TO_DC1-BL01B_Ethernet2 | PASS |  |
| 61 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-LEAF1A_Ethernet2 | PASS |  |
| 62 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-LEAF1B_Ethernet2 | PASS |  |
| 63 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_DC1-LEAF2A_Ethernet2 | PASS |  |
| 64 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_DC1-LEAF2B_Ethernet2 | PASS |  |
| 65 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet7 - P2P_LINK_TO_DC1-LEAF3A_Ethernet2 | PASS |  |
| 66 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet8 - P2P_LINK_TO_DC1-LEAF4A_Ethernet2 | PASS |  |
| 67 | DC1-AGG01 | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel1 - DC1-LEAF1A_Po5 | PASS |  |
| 68 | DC1-AGG02 | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel1 - DC1-LEAF2A_Po5 | PASS |  |
| 69 | DC1-BL01A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_DC1-BL01B_Po3 | PASS |  |
| 70 | DC1-BL01B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_DC1-BL01A_Po3 | PASS |  |
| 71 | DC1-LEAF1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel5 - DC1_L2LEAF1_Po1 | PASS |  |
| 72 | DC1-LEAF1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_DC1-LEAF1B_Po3 | PASS |  |
| 73 | DC1-LEAF1B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel5 - DC1_L2LEAF1_Po1 | PASS |  |
| 74 | DC1-LEAF1B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_DC1-LEAF1A_Po3 | PASS |  |
| 75 | DC1-LEAF2A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel5 - DC1_L2LEAF2_Po1 | PASS |  |
| 76 | DC1-LEAF2A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_DC1-LEAF2B_Po3 | PASS |  |
| 77 | DC1-LEAF2B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel5 - DC1_L2LEAF2_Po1 | PASS |  |
| 78 | DC1-LEAF2B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_DC1-LEAF2A_Po3 | PASS |  |
| 79 | DC1-BL01A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 80 | DC1-BL01A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 81 | DC1-BL01B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 82 | DC1-BL01B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 83 | DC1-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 84 | DC1-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 85 | DC1-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - PR01-DMZ | PASS |  |
| 86 | DC1-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3010 - MLAG_PEER_L3_iBGP: vrf TENANT_A_PROJECT01 | PASS |  |
| 87 | DC1-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan112 - PR02-DMZ | PASS |  |
| 88 | DC1-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3011 - MLAG_PEER_L3_iBGP: vrf TENANT_A_PROJECT02 | PASS |  |
| 89 | DC1-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 90 | DC1-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 91 | DC1-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - PR01-DMZ | PASS |  |
| 92 | DC1-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3010 - MLAG_PEER_L3_iBGP: vrf TENANT_A_PROJECT01 | PASS |  |
| 93 | DC1-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan112 - PR02-DMZ | PASS |  |
| 94 | DC1-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3011 - MLAG_PEER_L3_iBGP: vrf TENANT_A_PROJECT02 | PASS |  |
| 95 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 96 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 97 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - PR01-DMZ | PASS |  |
| 98 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - PR01-TRUST | PASS |  |
| 99 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3010 - MLAG_PEER_L3_iBGP: vrf TENANT_A_PROJECT01 | PASS |  |
| 100 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 101 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 102 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - PR01-DMZ | PASS |  |
| 103 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - PR01-TRUST | PASS |  |
| 104 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3010 - MLAG_PEER_L3_iBGP: vrf TENANT_A_PROJECT01 | PASS |  |
| 105 | DC1-LEAF3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - PR01-DMZ | PASS |  |
| 106 | DC1-LEAF3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - PR01-TRUST | PASS |  |
| 107 | DC1-LEAF4A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - PR01-DMZ | PASS |  |
| 108 | DC1-LEAF4A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - PR01-TRUST | PASS |  |
| 109 | DC1-BL01A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | FAIL | interface status: down - line protocol status: down |
| 110 | DC1-BL01B | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | FAIL | interface status: down - line protocol status: down |
| 111 | DC1-LEAF1A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 112 | DC1-LEAF1B | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 113 | DC1-LEAF2A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 114 | DC1-LEAF2B | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 115 | DC1-LEAF3A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 116 | DC1-LEAF4A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 117 | DC1-BL01A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 118 | DC1-BL01A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 119 | DC1-BL01B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 120 | DC1-BL01B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 121 | DC1-LEAF1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 122 | DC1-LEAF1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 123 | DC1-LEAF1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - TENANT_A_PROJECT02_VTEP_DIAGNOSTICS | PASS |  |
| 124 | DC1-LEAF1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 125 | DC1-LEAF1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 126 | DC1-LEAF1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - TENANT_A_PROJECT02_VTEP_DIAGNOSTICS | PASS |  |
| 127 | DC1-LEAF2A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 128 | DC1-LEAF2A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 129 | DC1-LEAF2B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 130 | DC1-LEAF2B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 131 | DC1-LEAF3A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 132 | DC1-LEAF3A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 133 | DC1-LEAF4A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 134 | DC1-LEAF4A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 135 | DC1-SPINE1 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 136 | DC1-SPINE2 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 137 | DC1-BL01A | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 138 | DC1-BL01B | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 139 | DC1-LEAF1A | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 140 | DC1-LEAF1B | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 141 | DC1-LEAF2A | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 142 | DC1-LEAF2B | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 143 | DC1-BL01A | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 144 | DC1-BL01B | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 145 | DC1-LEAF1A | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 146 | DC1-LEAF1B | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 147 | DC1-LEAF2A | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 148 | DC1-LEAF2B | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 149 | DC1-LEAF3A | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 150 | DC1-LEAF4A | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 151 | DC1-SPINE1 | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 152 | DC1-SPINE2 | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 153 | DC1-BL01A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.24 | PASS |  |
| 154 | DC1-BL01A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.26 | PASS |  |
| 155 | DC1-BL01A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.13 | PASS |  |
| 156 | DC1-BL01B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.28 | PASS |  |
| 157 | DC1-BL01B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.30 | PASS |  |
| 158 | DC1-BL01B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.12 | PASS |  |
| 159 | DC1-LEAF1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.0 | PASS |  |
| 160 | DC1-LEAF1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.2 | PASS |  |
| 161 | DC1-LEAF1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.1 | PASS |  |
| 162 | DC1-LEAF1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.4 | PASS |  |
| 163 | DC1-LEAF1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.6 | PASS |  |
| 164 | DC1-LEAF1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.0 | PASS |  |
| 165 | DC1-LEAF2A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.8 | PASS |  |
| 166 | DC1-LEAF2A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.10 | PASS |  |
| 167 | DC1-LEAF2A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.5 | PASS |  |
| 168 | DC1-LEAF2B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.12 | PASS |  |
| 169 | DC1-LEAF2B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.14 | PASS |  |
| 170 | DC1-LEAF2B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.4 | PASS |  |
| 171 | DC1-LEAF3A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.16 | PASS |  |
| 172 | DC1-LEAF3A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.18 | PASS |  |
| 173 | DC1-LEAF4A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.20 | PASS |  |
| 174 | DC1-LEAF4A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.22 | PASS |  |
| 175 | DC1-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.25 | PASS |  |
| 176 | DC1-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.29 | PASS |  |
| 177 | DC1-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.1 | PASS |  |
| 178 | DC1-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.5 | PASS |  |
| 179 | DC1-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.9 | PASS |  |
| 180 | DC1-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.13 | PASS |  |
| 181 | DC1-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.17 | PASS |  |
| 182 | DC1-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.21 | PASS |  |
| 183 | DC1-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.27 | PASS |  |
| 184 | DC1-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.31 | PASS |  |
| 185 | DC1-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.3 | PASS |  |
| 186 | DC1-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.7 | PASS |  |
| 187 | DC1-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.11 | PASS |  |
| 188 | DC1-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.15 | PASS |  |
| 189 | DC1-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.19 | PASS |  |
| 190 | DC1-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.255.23 | PASS |  |
| 191 | DC1-BL01A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.24 | PASS |  |
| 192 | DC1-BL01A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.26 | PASS |  |
| 193 | DC1-BL01A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.255.251.13 | PASS |  |
| 194 | DC1-BL01B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.28 | PASS |  |
| 195 | DC1-BL01B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.30 | PASS |  |
| 196 | DC1-BL01B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.255.251.12 | PASS |  |
| 197 | DC1-LEAF1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.0 | PASS |  |
| 198 | DC1-LEAF1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.2 | PASS |  |
| 199 | DC1-LEAF1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.255.251.1 | PASS |  |
| 200 | DC1-LEAF1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.4 | PASS |  |
| 201 | DC1-LEAF1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.6 | PASS |  |
| 202 | DC1-LEAF1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.255.251.0 | PASS |  |
| 203 | DC1-LEAF2A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.8 | PASS |  |
| 204 | DC1-LEAF2A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.10 | PASS |  |
| 205 | DC1-LEAF2A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.255.251.5 | PASS |  |
| 206 | DC1-LEAF2B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.12 | PASS |  |
| 207 | DC1-LEAF2B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.14 | PASS |  |
| 208 | DC1-LEAF2B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.255.251.4 | PASS |  |
| 209 | DC1-LEAF3A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.16 | PASS |  |
| 210 | DC1-LEAF3A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.18 | PASS |  |
| 211 | DC1-LEAF4A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.20 | PASS |  |
| 212 | DC1-LEAF4A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.22 | PASS |  |
| 213 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.25 | PASS |  |
| 214 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.29 | PASS |  |
| 215 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.1 | PASS |  |
| 216 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.5 | PASS |  |
| 217 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.9 | PASS |  |
| 218 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.13 | PASS |  |
| 219 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.17 | PASS |  |
| 220 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.21 | PASS |  |
| 221 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.27 | PASS |  |
| 222 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.31 | PASS |  |
| 223 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.3 | PASS |  |
| 224 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.7 | PASS |  |
| 225 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.11 | PASS |  |
| 226 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.15 | PASS |  |
| 227 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.19 | PASS |  |
| 228 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.255.23 | PASS |  |
