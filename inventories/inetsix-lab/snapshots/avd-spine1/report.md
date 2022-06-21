# avd-spine1 Commands Output

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
  Description              Neighbor V AS           MsgRcvd   MsgSent  InQ OutQ  Up/Down State   PfxRcd PfxAcc
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
Et1                            up             up                 P2P_LINK_TO_AVD-LEAF1A_Ethernet1
Et2                            up             up                 P2P_LINK_TO_AVD-LEAF1B_Ethernet1
Et3                            up             up                 P2P_LINK_TO_AVD-LEAF2A_Ethernet1
Et4                            up             up                 P2P_LINK_TO_AVD-LEAF2B_Ethernet1
Et5                            up             up                 P2P_LINK_TO_AVD-BL01A_Ethernet1
Et6                            up             up                 P2P_LINK_TO_AVD-BL01B_Ethernet1
Et7                            up             up                 P2P_LINK_TO_AVD-LEAF3A_Ethernet1
Et8                            up             up                 P2P_LINK_TO_AVD-LEAF4A_Ethernet1
Et9                            up             up                 P2P_LINK_TO_AVD-CL01A_Ethernet1
Et10                           up             up                 P2P_LINK_TO_AVD-CL01B_Ethernet1
Et11                           up             up                 P2P_LINK_TO_AVD-L2LEAF01_Ethernet1
Et12                           up             up                 P2P_LINK_TO_AVD-L2LEAF02_Ethernet1
Et13                           up             up                 P2P_LINK_TO_AVD-RS01_Ethernet1
Lo0                            up             up                 EVPN_Overlay_Peering
Ma0                            up             up                 oob_management
```
## show ip bgp summary vrf all

```
BGP summary information for VRF default
Router identifier 192.168.1.1, local AS number 65001
Neighbor Status Codes: m - Under maintenance
  Description              Neighbor      V AS           MsgRcvd   MsgSent  InQ OutQ  Up/Down State   PfxRcd PfxAcc
  avd-rs01_Ethernet1       172.31.250.49 4 65000            247       265    0    0 03:28:03 Estab   1      1
  avd-l2leaf01_Ethernet1   172.31.251.81 4 65107            262       267    0    0 03:28:01 Estab   2      2
  avd-l2leaf02_Ethernet1   172.31.251.85 4 65108            255       262    0    0 03:28:01 Estab   2      2
  avd-leaf1a_Ethernet1     172.31.255.41 4 65101            259       258    0    0 03:27:42 Estab   3      3
  avd-leaf1b_Ethernet1     172.31.255.45 4 65101            255       261    0    0 03:27:42 Estab   3      3
  avd-leaf2a_Ethernet1     172.31.255.49 4 65102            260       262    0    0 03:27:33 Estab   3      3
  avd-leaf2b_Ethernet1     172.31.255.53 4 65102            262       260    0    0 03:27:32 Estab   3      3
  avd-leaf3a_Ethernet1     172.31.255.57 4 65103            255       265    0    0 03:27:47 Estab   2      2
  avd-leaf4a_Ethernet1     172.31.255.61 4 65104            255       266    0    0 03:28:03 Estab   2      2
  avd-bl01a_Ethernet1      172.31.255.65 4 65105            256       258    0    0 03:27:35 Estab   3      3
  avd-bl01b_Ethernet1      172.31.255.69 4 65105            251       262    0    0 03:27:34 Estab   3      3
  avd-cl01a_Ethernet1      172.31.255.73 4 65106            260       264    0    0 03:27:55 Estab   3      3
  avd-cl01b_Ethernet1      172.31.255.77 4 65106            256       263    0    0 03:27:49 Estab   3      3
```
## show ip interface brief

```
Address
Interface       IP Address           Status     Protocol         MTU    Owner  
--------------- -------------------- ---------- ------------ ---------- -------
Ethernet1       172.31.255.40/31     up         up              1500           
Ethernet2       172.31.255.44/31     up         up              1500           
Ethernet3       172.31.255.48/31     up         up              1500           
Ethernet4       172.31.255.52/31     up         up              1500           
Ethernet5       172.31.255.64/31     up         up              1500           
Ethernet6       172.31.255.68/31     up         up              1500           
Ethernet7       172.31.255.56/31     up         up              1500           
Ethernet8       172.31.255.60/31     up         up              1500           
Ethernet9       172.31.255.72/31     up         up              1500           
Ethernet10      172.31.255.76/31     up         up              1500           
Ethernet11      172.31.251.80/31     up         up              1500           
Ethernet12      172.31.251.84/31     up         up              1500           
Ethernet13      172.31.250.48/31     up         up              1500           
Loopback0       192.168.1.1/32       up         up             65535           
Management0     10.73.252.101/24     up         up              1500
```
## show ip route vrf all

```
VRF: default
Codes: C - connected, S - static, K - kernel, 
       O - OSPF, IA - OSPF inter area, E1 - OSPF external type 1,
       E2 - OSPF external type 2, N1 - OSPF NSSA external type 1,
       N2 - OSPF NSSA external type2, B - Other BGP Routes,
       B I - iBGP, B E - eBGP, R - RIP, I L1 - IS-IS level 1,
       I L2 - IS-IS level 2, O3 - OSPFv3, A B - BGP Aggregate,
       A O - OSPF Summary, NG - Nexthop Group Static Route,
       V - VXLAN Control Service, M - Martian,
       DH - DHCP client installed default route,
       DP - Dynamic Policy Route, L - VRF Leaked,
       G  - gRIBI, RC - Route Cache Route

Gateway of last resort is not set

 C        172.31.250.48/31 is directly connected, Ethernet13
 C        172.31.251.80/31 is directly connected, Ethernet11
 C        172.31.251.84/31 is directly connected, Ethernet12
 C        172.31.255.40/31 is directly connected, Ethernet1
 C        172.31.255.44/31 is directly connected, Ethernet2
 C        172.31.255.48/31 is directly connected, Ethernet3
 C        172.31.255.52/31 is directly connected, Ethernet4
 C        172.31.255.56/31 is directly connected, Ethernet7
 C        172.31.255.60/31 is directly connected, Ethernet8
 C        172.31.255.64/31 is directly connected, Ethernet5
 C        172.31.255.68/31 is directly connected, Ethernet6
 C        172.31.255.72/31 is directly connected, Ethernet9
 C        172.31.255.76/31 is directly connected, Ethernet10
 B E      192.168.0.26/32 [20/0] via 172.31.250.49, Ethernet13
 C        192.168.1.1/32 is directly connected, Loopback0
 B E      192.168.252.22/32 [20/0] via 172.31.251.81, Ethernet11
 B E      192.168.252.23/32 [20/0] via 172.31.251.85, Ethernet12
 B E      192.168.253.22/32 [20/0] via 172.31.251.81, Ethernet11
 B E      192.168.253.23/32 [20/0] via 172.31.251.85, Ethernet12
 B E      192.168.254.13/32 [20/0] via 172.31.255.41, Ethernet1
                                   via 172.31.255.45, Ethernet2
 B E      192.168.254.15/32 [20/0] via 172.31.255.49, Ethernet3
                                   via 172.31.255.53, Ethernet4
 B E      192.168.254.17/32 [20/0] via 172.31.255.57, Ethernet7
 B E      192.168.254.18/32 [20/0] via 172.31.255.61, Ethernet8
 B E      192.168.254.19/32 [20/0] via 172.31.255.65, Ethernet5
                                   via 172.31.255.69, Ethernet6
 B E      192.168.254.21/32 [20/0] via 172.31.255.73, Ethernet9
                                   via 172.31.255.77, Ethernet10
 B E      192.168.255.13/32 [20/0] via 172.31.255.41, Ethernet1
 B E      192.168.255.14/32 [20/0] via 172.31.255.45, Ethernet2
 B E      192.168.255.15/32 [20/0] via 172.31.255.49, Ethernet3
 B E      192.168.255.16/32 [20/0] via 172.31.255.53, Ethernet4
 B E      192.168.255.17/32 [20/0] via 172.31.255.57, Ethernet7
 B E      192.168.255.18/32 [20/0] via 172.31.255.61, Ethernet8
 B E      192.168.255.19/32 [20/0] via 172.31.255.65, Ethernet5
 B E      192.168.255.20/32 [20/0] via 172.31.255.69, Ethernet6
 B E      192.168.255.21/32 [20/0] via 172.31.255.73, Ethernet9
 B E      192.168.255.22/32 [20/0] via 172.31.255.77, Ethernet10


VRF: MGMT
Codes: C - connected, S - static, K - kernel, 
       O - OSPF, IA - OSPF inter area, E1 - OSPF external type 1,
       E2 - OSPF external type 2, N1 - OSPF NSSA external type 1,
       N2 - OSPF NSSA external type2, B - Other BGP Routes,
       B I - iBGP, B E - eBGP, R - RIP, I L1 - IS-IS level 1,
       I L2 - IS-IS level 2, O3 - OSPFv3, A B - BGP Aggregate,
       A O - OSPF Summary, NG - Nexthop Group Static Route,
       V - VXLAN Control Service, M - Martian,
       DH - DHCP client installed default route,
       DP - Dynamic Policy Route, L - VRF Leaked,
       G  - gRIBI, RC - Route Cache Route

Gateway of last resort is not reachable

 C        10.73.252.0/24 is directly connected, Management0

! IP routing not enabled
```
## show lldp neighbors

```
Last table change time   : 3:01:16 ago
Number of table inserts  : 29
Number of table deletes  : 0
Number of table drops    : 0
Number of table age-outs : 0

Port          Neighbor Device ID       Neighbor Port ID    TTL
---------- ------------------------ ---------------------- ---
Et1           avd-leaf1a               Ethernet1           120
Et2           avd-leaf1b               Ethernet1           120
Et3           avd-leaf2a               Ethernet1           120
Et4           avd-leaf2b               Ethernet1           120
Et5           avd-bl01a                Ethernet1           120
Et6           avd-bl01b                Ethernet1           120
Et7           avd-leaf3a               Ethernet1           120
Et8           avd-leaf4a               Ethernet1           120
Et9           avd-cl01a                Ethernet1           120
Et10          avd-cl01b                Ethernet1           120
Et11          avd-l2leaf01             Ethernet1           120
Et12          avd-l2leaf02             Ethernet1           120
Et13          avd-rs01                 Ethernet1           120
Ma0           avd-agg02                Management0         120
Ma0           srv-pod03                Management0         120
Ma0           srv-pod01                Management0         120
Ma0           avd-agg01                Management0         120
Ma0           srv-pod02                Management0         120
Ma0           avd-l2leaf01             Management0         120
Ma0           avd-rs01                 Management0         120
Ma0           avd-spine2               Management0         120
Ma0           avd-leaf1a               Management0         120
Ma0           avd-cl01b                Management0         120
Ma0           avd-leaf4a               Management0         120
Ma0           avd-rs02                 Management0         120
Ma0           avd-l2leaf02             Management0         120
Ma0           avd-cl01a                Management0         120
Ma0           avd-bl01a                Management0         120
Ma0           avd-leaf2a               Management0         120
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
Number of cooling zones is: 1
           Config Actual        Speed     Stable
Fan Status  Speed  Speed Uptime Stability Uptime
--- ------ ------ ------ ------ --------- ------
```
## show version

```
Arista cEOSLab
Hardware version: 
Serial number: 3BE97B06FBF8221AF326CB9D5B26CD1A
Hardware MAC address: 001c.73df.b72f
System MAC address: 001c.73df.b72f

Software image version: 4.27.2F-26069621.4272F (engineering build)
Architecture: i686
Internal build version: 4.27.2F-26069621.4272F
Internal build ID: b3360a82-d532-4043-b6b0-50707eede2a9
Image format version: 1.0
Image optimization: None

cEOS tools version: 1.1
Kernel version: 5.13.0-51-generic

Uptime: 3 hours and 31 minutes
Total memory: 41085292 kB
Free memory: 8143800 kB
```
## show vlan

```
VLAN  Name                             Status    Ports
----- -------------------------------- --------- -------------------------------
1     default                          active
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
