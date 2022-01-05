# EAPI-SPINE1 Commands Output

## Table of Contents

- [show lldp neighbors](#show-lldp-neighbors)
- [show ip interface brief](#show-ip-interface-brief)
- [show interfaces description](#show-interfaces-description)
- [show version](#show-version)
- [show ip bgp summary vrf all](#show-ip-bgp-summary-vrf-all)
- [show bgp evpn summary](#show-bgp-evpn-summary)
- [show bgp evpn](#show-bgp-evpn)
- [show ip route vrf all](#show-ip-route-vrf-all)
- [show vxlan vtep](#show-vxlan-vtep)
- [show vxlan address-table](#show-vxlan-address-table)
- [show vxlan vni](#show-vxlan-vni)
- [show vlan](#show-vlan)
- [show mac address-table](#show-mac-address-table)
- [show bfd peers](#show-bfd-peers)
- [show mlag detail](#show-mlag-detail)
- [show mlag config-sanity](#show-mlag-config-sanity)
- [show system environment cooling](#show-system-environment-cooling)
## show bfd peers

```

```
## show bgp evpn summary

```
BGP summary information for VRF default
Router identifier 192.168.1.1, local AS number 65001
Neighbor Status Codes: m - Under maintenance
  Description              Neighbor         V AS           MsgRcvd   MsgSent  InQ OutQ  Up/Down State   PfxRcd PfxAcc
```
## show bgp evpn

```
BGP routing table information for VRF default
Router identifier 192.168.1.1, local AS number 65001
Route status codes: s - suppressed, * - valid, > - active, E - ECMP head, e - ECMP
                    S - Stale, c - Contributing to ECMP, b - backup
                    % - Pending BGP convergence
Origin codes: i - IGP, e - EGP, ? - incomplete
AS Path Attributes: Or-ID - Originator ID, C-LST - Cluster List, LL Nexthop - Link Local Nexthop

          Network                Next Hop              Metric  LocPref Weight  Path
```
## show interfaces description

```
Interface                      Status         Protocol           Description
Et1                            up             up                 P2P_LINK_TO_EAPI-LEAF1A_Ethernet1
Et2                            up             up                 P2P_LINK_TO_EAPI-LEAF1B_Ethernet1
Et3                            up             up                 P2P_LINK_TO_EAPI-LEAF2A_Ethernet1
Et4                            up             up                 P2P_LINK_TO_EAPI-LEAF2B_Ethernet1
Et5                            up             up                 P2P_LINK_TO_EAPI-BL01A_Ethernet1
Et6                            up             up                 P2P_LINK_TO_EAPI-BL01B_Ethernet1
Et7                            up             up                 P2P_LINK_TO_EAPI-LEAF3A_Ethernet1
Et8                            up             up                 P2P_LINK_TO_EAPI-LEAF4A_Ethernet1
Et9                            up             up                 P2P_LINK_TO_EAPI-CL01A_Ethernet1
Et10                           up             up                 P2P_LINK_TO_EAPI-CL01B_Ethernet1
Et11                           up             up                 P2P_LINK_TO_EAPI-L2LEAF01_Ethernet1
Et12                           up             up                 P2P_LINK_TO_EAPI-L2LEAF02_Ethernet1
Et13                           up             up                 P2P_LINK_TO_EAPI-RS01_Ethernet1
Et14                           up             up                 
Lo0                            up             up                 EVPN_Overlay_Peering
Ma1                            up             up                 oob_management
```
## show ip bgp summary vrf all

```
BGP summary information for VRF default
Router identifier 192.168.1.1, local AS number 65001
Neighbor Status Codes: m - Under maintenance
  Description              Neighbor         V AS           MsgRcvd   MsgSent  InQ OutQ  Up/Down State   PfxRcd PfxAcc
  EAPI-RS01_Ethernet1      172.31.250.1     4 65000             29        39    0    0 00:21:34 Estab   1      1
  EAPI-L2LEAF01_Ethernet1  172.31.251.1     4 65107             26        31    0    0 00:11:20 Estab   2      2
  EAPI-L2LEAF02_Ethernet1  172.31.251.5     4 65108             22        31    0    0 00:11:28 Estab   2      2
  EAPI-LEAF1A_Ethernet1    172.31.255.1     4 65101             25        33    0    0 00:13:42 Estab   3      3
  EAPI-LEAF1B_Ethernet1    172.31.255.5     4 65101             25        33    0    0 00:13:44 Estab   3      3
  EAPI-LEAF2A_Ethernet1    172.31.255.9     4 65102             28        32    0    0 00:13:49 Estab   3      3
  EAPI-LEAF2B_Ethernet1    172.31.255.13    4 65102             28        33    0    0 00:13:40 Estab   3      3
  EAPI-LEAF3A_Ethernet1    172.31.255.17    4 65103             32        36    0    0 00:16:56 Estab   2      2
  EAPI-LEAF4A_Ethernet1    172.31.255.21    4 65104             31        37    0    0 00:17:23 Estab   2      2
  EAPI-BL01A_Ethernet1     172.31.255.25    4 65105             33        33    0    0 00:13:54 Estab   3      3
  EAPI-BL01B_Ethernet1     172.31.255.29    4 65105             30        31    0    0 00:14:07 Estab   3      3
  EAPI-CL01A_Ethernet1     172.31.255.33    4 65106             17        24    0    0 00:06:52 Estab   3      3
  EAPI-CL01B_Ethernet1     172.31.255.37    4 65106             16        25    0    0 00:06:52 Estab   3      3
```
## show ip interface brief

```
Address
Interface       IP Address           Status     Protocol         MTU    Owner  
--------------- -------------------- ---------- ------------ ---------- -------
Ethernet1       172.31.255.0/31      up         up              1500           
Ethernet2       172.31.255.4/31      up         up              1500           
Ethernet3       172.31.255.8/31      up         up              1500           
Ethernet4       172.31.255.12/31     up         up              1500           
Ethernet5       172.31.255.24/31     up         up              1500           
Ethernet6       172.31.255.28/31     up         up              1500           
Ethernet7       172.31.255.16/31     up         up              1500           
Ethernet8       172.31.255.20/31     up         up              1500           
Ethernet9       172.31.255.32/31     up         up              1500           
Ethernet10      172.31.255.36/31     up         up              1500           
Ethernet11      172.31.251.0/31      up         up              1500           
Ethernet12      172.31.251.4/31      up         up              1500           
Ethernet13      172.31.250.0/31      up         up              1500           
Loopback0       192.168.1.1/32       up         up             65535           
Management1     10.73.254.1/24       up         up              1500
```
## show ip route vrf all

```
VRF: default
Codes: C - connected, S - static, K - kernel, 
       O - OSPF, IA - OSPF inter area, E1 - OSPF external type 1,
       E2 - OSPF external type 2, N1 - OSPF NSSA external type 1,
       N2 - OSPF NSSA external type2, B - BGP, B I - iBGP, B E - eBGP,
       R - RIP, I L1 - IS-IS level 1, I L2 - IS-IS level 2,
       O3 - OSPFv3, A B - BGP Aggregate, A O - OSPF Summary,
       NG - Nexthop Group Static Route, V - VXLAN Control Service,
       DH - DHCP client installed default route, M - Martian,
       DP - Dynamic Policy Route, L - VRF Leaked,
       G  - gRIBI, RC - Route Cache Route

Gateway of last resort is not set

 C        172.31.250.0/31 is directly connected, Ethernet13
 C        172.31.251.0/31 is directly connected, Ethernet11
 C        172.31.251.4/31 is directly connected, Ethernet12
 C        172.31.255.0/31 is directly connected, Ethernet1
 C        172.31.255.4/31 is directly connected, Ethernet2
 C        172.31.255.8/31 is directly connected, Ethernet3
 C        172.31.255.12/31 is directly connected, Ethernet4
 C        172.31.255.16/31 is directly connected, Ethernet7
 C        172.31.255.20/31 is directly connected, Ethernet8
 C        172.31.255.24/31 is directly connected, Ethernet5
 C        172.31.255.28/31 is directly connected, Ethernet6
 C        172.31.255.32/31 is directly connected, Ethernet9
 C        172.31.255.36/31 is directly connected, Ethernet10
 B E      192.168.0.2/32 [20/0] via 172.31.250.1, Ethernet13
 C        192.168.1.1/32 is directly connected, Loopback0
 B E      192.168.252.2/32 [20/0] via 172.31.251.1, Ethernet11
 B E      192.168.252.3/32 [20/0] via 172.31.251.5, Ethernet12
 B E      192.168.253.2/32 [20/0] via 172.31.251.1, Ethernet11
 B E      192.168.253.3/32 [20/0] via 172.31.251.5, Ethernet12
 B E      192.168.254.3/32 [20/0] via 172.31.255.1, Ethernet1
                                  via 172.31.255.5, Ethernet2
 B E      192.168.254.5/32 [20/0] via 172.31.255.9, Ethernet3
                                  via 172.31.255.13, Ethernet4
 B E      192.168.254.7/32 [20/0] via 172.31.255.17, Ethernet7
 B E      192.168.254.8/32 [20/0] via 172.31.255.21, Ethernet8
 B E      192.168.254.9/32 [20/0] via 172.31.255.25, Ethernet5
                                  via 172.31.255.29, Ethernet6
 B E      192.168.254.11/32 [20/0] via 172.31.255.33, Ethernet9
                                   via 172.31.255.37, Ethernet10
 B E      192.168.255.3/32 [20/0] via 172.31.255.1, Ethernet1
 B E      192.168.255.4/32 [20/0] via 172.31.255.5, Ethernet2
 B E      192.168.255.5/32 [20/0] via 172.31.255.9, Ethernet3
 B E      192.168.255.6/32 [20/0] via 172.31.255.13, Ethernet4
 B E      192.168.255.7/32 [20/0] via 172.31.255.17, Ethernet7
 B E      192.168.255.8/32 [20/0] via 172.31.255.21, Ethernet8
 B E      192.168.255.9/32 [20/0] via 172.31.255.25, Ethernet5
 B E      192.168.255.10/32 [20/0] via 172.31.255.29, Ethernet6
 B E      192.168.255.11/32 [20/0] via 172.31.255.33, Ethernet9
 B E      192.168.255.12/32 [20/0] via 172.31.255.37, Ethernet10


VRF: MGMT
Codes: C - connected, S - static, K - kernel, 
       O - OSPF, IA - OSPF inter area, E1 - OSPF external type 1,
       E2 - OSPF external type 2, N1 - OSPF NSSA external type 1,
       N2 - OSPF NSSA external type2, B - BGP, B I - iBGP, B E - eBGP,
       R - RIP, I L1 - IS-IS level 1, I L2 - IS-IS level 2,
       O3 - OSPFv3, A B - BGP Aggregate, A O - OSPF Summary,
       NG - Nexthop Group Static Route, V - VXLAN Control Service,
       DH - DHCP client installed default route, M - Martian,
       DP - Dynamic Policy Route, L - VRF Leaked,
       G  - gRIBI, RC - Route Cache Route

Gateway of last resort:
 S        0.0.0.0/0 [1/0] via 10.73.254.253, Management1

 C        10.73.254.0/24 is directly connected, Management1

! IP routing not enabled
```
## show lldp neighbors

```
Last table change time   : 0:06:34 ago
Number of table inserts  : 15
Number of table deletes  : 2
Number of table drops    : 0
Number of table age-outs : 2

Port          Neighbor Device ID       Neighbor Port ID    TTL
---------- ------------------------ ---------------------- ---
Et1           EAPI-LEAF1A              Ethernet1           120
Et2           EAPI-LEAF1B              Ethernet1           120
Et3           EAPI-LEAF2A              Ethernet1           120
Et4           EAPI-LEAF2B              Ethernet1           120
Et5           EAPI-BL01A               Ethernet1           120
Et6           EAPI-BL01B               Ethernet1           120
Et7           EAPI-LEAF3A              Ethernet1           120
Et8           EAPI-LEAF4A              Ethernet1           120
Et9           EAPI-CL01A               Ethernet1           120
Et10          EAPI-CL01B               Ethernet1           120
Et11          EAPI-L2LEAF01            Ethernet1           120
Et12          EAPI-L2LEAF02            Ethernet1           120
Et13          EAPI-RS01                Ethernet1           120
```
## show mac address-table

```
Mac Address Table
------------------------------------------------------------------

Vlan    Mac Address       Type        Ports      Moves   Last Move
----    -----------       ----        -----      -----   ---------
Total Mac Addresses for this criterion: 0

          Multicast Mac Address Table
------------------------------------------------------------------

Vlan    Mac Address       Type        Ports
----    -----------       ----        -----
Total Mac Addresses for this criterion: 0
```
## show mlag config-sanity

```
Command not applicable for inactive MLAG state.
```
## show mlag detail

```
MLAG Configuration:              
domain-id                          :                   
local-interface                    :                   
peer-address                       :             0.0.0.0
peer-link                          :                   
peer-config                        :                   
                                                       
MLAG Status:                     
state                              :            Disabled
negotiation status                 :                   
peer-link status                   :                   
local-int status                   :                   
system-id                          :   00:00:00:00:00:00
dual-primary detection             :            Disabled
dual-primary interface errdisabled :               False
                                                       
MLAG Ports:                      
Disabled                           :                   0
Configured                         :                   0
Inactive                           :                   0
Active-partial                     :                   0
Active-full                        :                   0

MLAG Detailed Status:
State                           :            disabled
Peer State                      :             unknown
State changes                   :                   0
Last state change time          :               never
Hardware ready                  :                True
Failover                        :               False
Failover Cause(s)               :             Unknown
Last failover change time       :               never
Secondary from failover         :               False
Peer MAC address                :   00:00:00:00:00:00
Peer MAC routing supported      :               False
Reload delay                    :         300 seconds
Non-MLAG reload delay           :         300 seconds
Ports errdisabled               :               False
Lacp standby                    :               False
Configured heartbeat interval   :             4000 ms
Effective heartbeat interval    :            disabled
Heartbeat timeout               :                0 ms
Last heartbeat timeout          :               never
Heartbeat timeouts since reboot :                   0
UDP heartbeat alive             :               False
Heartbeats sent/received        :                 0/0
Peer monotonic clock offset     :             unknown
Agent should be running         :               False
P2p mount state changes         :                   0
Fast MAC redirection enabled    :               False
```
## show system environment cooling

```
System cooling status is: Unknown
Ambient temperature: Unknown
           Config Actual        Speed     Stable
Fan Status  Speed  Speed Uptime Stability Uptime
--- ------ ------ ------ ------ --------- ------
```
## show version

```
Arista vEOS-lab
Hardware version: 
Serial number: E8568EE81E7A2F31A882B0EB395EDC21
Hardware MAC address: 0c1d.c0a3.86f3
System MAC address: 0c1d.c0a3.86f3

Software image version: 4.27.0F
Architecture: i686
Internal build version: 4.27.0F-24305004.4270F
Internal build ID: fed9e33b-669e-42ea-bee6-c7bf3cca1a73
Image format version: 1.0

Uptime: 23 minutes
Total memory: 2006636 kB
Free memory: 1073200 kB
```
## show vlan

```
VLAN  Name                             Status    Ports
----- -------------------------------- --------- -------------------------------
1     default                          active    Et14
```
## show vxlan address-table

```
Vxlan Mac Address Table
----------------------------------------------------------------------

VLAN  Mac Address     Type      Prt  VTEP             Moves   Last Move
----  -----------     ----      ---  ----             -----   ---------
Total Remote Mac Addresses for this criterion: 0
```
## show vxlan vni

```

```
## show vxlan vtep

```

```
