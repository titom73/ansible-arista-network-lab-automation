# EAPI-RS01 Commands Output

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
VRF name: default
-----------------
DstAddr            MyDisc   YourDisc Interface/Transport     Type         LastUp
-------------- ---------- ---------- ------------------- -------- --------------
192.168.253.2  2790874598 2335697008                  NA multihop 01/05/22 17:05
192.168.253.3   770581673 3293828058                  NA multihop 01/05/22 17:05
192.168.255.3   608654585 2623713091                  NA multihop 01/05/22 17:03
192.168.255.4  4293611456  705178822                  NA multihop 01/05/22 17:03
192.168.255.5  1451190757 1892196257                  NA multihop 01/05/22 17:03
192.168.255.6  1274088557 1019355365                  NA multihop 01/05/22 17:03
192.168.255.7  3299527192 4047146776                  NA multihop 01/05/22 16:59
192.168.255.8   991511874 1115708914                  NA multihop 01/05/22 16:59
192.168.255.9  2790063317 1517044514                  NA multihop 01/05/22 17:02
192.168.255.10 4101335904  610680788                  NA multihop 01/05/22 17:02
192.168.255.11  175304706  832805305                  NA multihop 01/05/22 17:10
192.168.255.12 3356934579  484312243                  NA multihop 01/05/22 17:10

   LastDown            LastDiag    State
-------------- ------------------- -----
         NA       No Diagnostic       Up
         NA       No Diagnostic       Up
         NA       No Diagnostic       Up
         NA       No Diagnostic       Up
         NA       No Diagnostic       Up
         NA       No Diagnostic       Up
         NA       No Diagnostic       Up
         NA       No Diagnostic       Up
         NA       No Diagnostic       Up
         NA       No Diagnostic       Up
         NA       No Diagnostic       Up
         NA       No Diagnostic       Up
```
## show bgp evpn summary

```
BGP summary information for VRF default
Router identifier 192.168.0.2, local AS number 65000
Neighbor Status Codes: m - Under maintenance
  Description              Neighbor         V AS           MsgRcvd   MsgSent  InQ OutQ  Up/Down State   PfxRcd PfxAcc
  EAPI-L2LEAF01            192.168.253.2    4 65107             38        54    0    0 00:11:21 Estab   2      2
  EAPI-L2LEAF02            192.168.253.3    4 65108             20        54    0    0 00:11:29 Estab   1      1
  EAPI-LEAF1A              192.168.255.3    4 65101             43        64    0    0 00:13:43 Estab   10     10
  EAPI-LEAF1B              192.168.255.4    4 65101             41        63    0    0 00:13:45 Estab   10     10
  EAPI-LEAF2A              192.168.255.5    4 65102             39        66    0    0 00:13:48 Estab   10     10
  EAPI-LEAF2B              192.168.255.6    4 65102             47        61    0    0 00:13:39 Estab   10     10
  EAPI-LEAF3A              192.168.255.7    4 65103             42        72    0    0 00:16:57 Estab   5      5
  EAPI-LEAF4A              192.168.255.8    4 65104             44        71    0    0 00:17:24 Estab   5      5
  EAPI-BL01A               192.168.255.9    4 65105             42        72    0    0 00:13:56 Estab   4      4
  EAPI-BL01B               192.168.255.10   4 65105             42        70    0    0 00:14:06 Estab   4      4
  EAPI-CL01A               192.168.255.11   4 65106             41        44    0    0 00:06:54 Estab   9      9
  EAPI-CL01B               192.168.255.12   4 65106             43        45    0    0 00:06:54 Estab   9      9
```
## show bgp evpn

```
BGP routing table information for VRF default
Router identifier 192.168.0.2, local AS number 65000
Route status codes: s - suppressed, * - valid, > - active, E - ECMP head, e - ECMP
                    S - Stale, c - Contributing to ECMP, b - backup
                    % - Pending BGP convergence
Origin codes: i - IGP, e - EGP, ? - incomplete
AS Path Attributes: Or-ID - Originator ID, C-LST - Cluster List, LL Nexthop - Link Local Nexthop

          Network                Next Hop              Metric  LocPref Weight  Path
 * >     RD: 192.168.255.3:11 imet 10110 192.168.254.3
                                 192.168.254.3         -       100     0       65101 i
 * >     RD: 192.168.255.4:11 imet 10110 192.168.254.3
                                 192.168.254.3         -       100     0       65101 i
 * >     RD: 192.168.255.5:11 imet 10110 192.168.254.5
                                 192.168.254.5         -       100     0       65102 i
 * >     RD: 192.168.255.6:11 imet 10110 192.168.254.5
                                 192.168.254.5         -       100     0       65102 i
 * >     RD: 192.168.255.7:11 imet 10110 192.168.254.7
                                 192.168.254.7         -       100     0       65103 i
 * >     RD: 192.168.255.8:11 imet 10110 192.168.254.8
                                 192.168.254.8         -       100     0       65104 i
 * >     RD: 192.168.255.9:11 imet 10110 192.168.254.9
                                 192.168.254.9         -       100     0       65105 i
 * >     RD: 192.168.255.10:11 imet 10110 192.168.254.9
                                 192.168.254.9         -       100     0       65105 i
 * >     RD: 192.168.255.11:11 imet 10110 192.168.254.11
                                 192.168.254.11        -       100     0       65106 i
 * >     RD: 192.168.255.12:11 imet 10110 192.168.254.11
                                 192.168.254.11        -       100     0       65106 i
 * >     RD: 192.168.255.3:11 imet 10111 192.168.254.3
                                 192.168.254.3         -       100     0       65101 i
 * >     RD: 192.168.255.4:11 imet 10111 192.168.254.3
                                 192.168.254.3         -       100     0       65101 i
 * >     RD: 192.168.255.5:11 imet 10111 192.168.254.5
                                 192.168.254.5         -       100     0       65102 i
 * >     RD: 192.168.255.6:11 imet 10111 192.168.254.5
                                 192.168.254.5         -       100     0       65102 i
 * >     RD: 192.168.255.3:11 imet 10112 192.168.254.3
                                 192.168.254.3         -       100     0       65101 i
 * >     RD: 192.168.255.4:11 imet 10112 192.168.254.3
                                 192.168.254.3         -       100     0       65101 i
 * >     RD: 192.168.255.5:11 imet 10112 192.168.254.5
                                 192.168.254.5         -       100     0       65102 i
 * >     RD: 192.168.255.6:11 imet 10112 192.168.254.5
                                 192.168.254.5         -       100     0       65102 i
 * >     RD: 192.168.255.7:11 imet 10113 192.168.254.7
                                 192.168.254.7         -       100     0       65103 i
 * >     RD: 192.168.255.8:11 imet 10113 192.168.254.8
                                 192.168.254.8         -       100     0       65104 i
 * >     RD: 192.168.255.3:20201 imet 20201 192.168.254.3
                                 192.168.254.3         -       100     0       65101 i
 * >     RD: 192.168.255.4:20201 imet 20201 192.168.254.3
                                 192.168.254.3         -       100     0       65101 i
 * >     RD: 192.168.255.5:20201 imet 20201 192.168.254.5
                                 192.168.254.5         -       100     0       65102 i
 * >     RD: 192.168.255.6:20201 imet 20201 192.168.254.5
                                 192.168.254.5         -       100     0       65102 i
 * >     RD: 192.168.255.7:20201 imet 20201 192.168.254.7
                                 192.168.254.7         -       100     0       65103 i
 * >     RD: 192.168.255.8:20201 imet 20201 192.168.254.8
                                 192.168.254.8         -       100     0       65104 i
 * >     RD: 192.168.255.9:20201 imet 20201 192.168.254.9
                                 192.168.254.9         -       100     0       65105 i
 * >     RD: 192.168.255.10:20201 imet 20201 192.168.254.9
                                 192.168.254.9         -       100     0       65105 i
 * >     RD: 192.168.255.11:20201 imet 20201 192.168.254.11
                                 192.168.254.11        -       100     0       65106 i
 * >     RD: 192.168.255.12:20201 imet 20201 192.168.254.11
                                 192.168.254.11        -       100     0       65106 i
 * >     RD: 192.168.253.2:13 imet 30301 192.168.252.2
                                 192.168.252.2         -       100     0       65107 i
 * >     RD: 192.168.255.11:13 imet 30301 192.168.254.11
                                 192.168.254.11        -       100     0       65106 i
 * >     RD: 192.168.255.12:13 imet 30301 192.168.254.11
                                 192.168.254.11        -       100     0       65106 i
 * >     RD: 192.168.253.2:13 imet 30302 192.168.252.2
                                 192.168.252.2         -       100     0       65107 i
 * >     RD: 192.168.253.3:13 imet 30302 192.168.252.3
                                 192.168.252.3         -       100     0       65108 i
 * >     RD: 192.168.255.11:13 imet 30302 192.168.254.11
                                 192.168.254.11        -       100     0       65106 i
 * >     RD: 192.168.255.12:13 imet 30302 192.168.254.11
                                 192.168.254.11        -       100     0       65106 i
 * >     RD: 192.168.255.3:11 ip-prefix 10.1.10.0/24
                                 192.168.254.3         -       100     0       65101 i
 * >     RD: 192.168.255.4:11 ip-prefix 10.1.10.0/24
                                 192.168.254.3         -       100     0       65101 i
 * >     RD: 192.168.255.5:11 ip-prefix 10.1.10.0/24
                                 192.168.254.5         -       100     0       65102 i
 * >     RD: 192.168.255.6:11 ip-prefix 10.1.10.0/24
                                 192.168.254.5         -       100     0       65102 i
 * >     RD: 192.168.255.7:11 ip-prefix 10.1.10.0/24
                                 192.168.254.7         -       100     0       65103 i
 * >     RD: 192.168.255.8:11 ip-prefix 10.1.10.0/24
                                 192.168.254.8         -       100     0       65104 i
 * >     RD: 192.168.255.9:11 ip-prefix 10.1.10.0/24
                                 192.168.254.9         -       100     0       65105 i
 * >     RD: 192.168.255.10:11 ip-prefix 10.1.10.0/24
                                 192.168.254.9         -       100     0       65105 i
 * >     RD: 192.168.255.11:11 ip-prefix 10.1.10.0/24
                                 192.168.254.11        -       100     0       65106 i
 * >     RD: 192.168.255.12:11 ip-prefix 10.1.10.0/24
                                 192.168.254.11        -       100     0       65106 i
 * >     RD: 192.168.255.3:11 ip-prefix 10.1.11.0/24
                                 192.168.254.3         -       100     0       65101 i
 * >     RD: 192.168.255.4:11 ip-prefix 10.1.11.0/24
                                 192.168.254.3         -       100     0       65101 i
 * >     RD: 192.168.255.5:11 ip-prefix 10.1.11.0/24
                                 192.168.254.5         -       100     0       65102 i
 * >     RD: 192.168.255.6:11 ip-prefix 10.1.11.0/24
                                 192.168.254.5         -       100     0       65102 i
 * >     RD: 192.168.255.3:11 ip-prefix 10.1.12.0/24
                                 192.168.254.3         -       100     0       65101 i
 * >     RD: 192.168.255.4:11 ip-prefix 10.1.12.0/24
                                 192.168.254.3         -       100     0       65101 i
 * >     RD: 192.168.255.5:11 ip-prefix 10.1.12.0/24
                                 192.168.254.5         -       100     0       65102 i
 * >     RD: 192.168.255.6:11 ip-prefix 10.1.12.0/24
                                 192.168.254.5         -       100     0       65102 i
 * >     RD: 192.168.255.7:11 ip-prefix 10.1.13.0/24
                                 192.168.254.7         -       100     0       65103 i
 * >     RD: 192.168.255.8:11 ip-prefix 10.1.13.0/24
                                 192.168.254.8         -       100     0       65104 i
 * >     RD: 192.168.255.3:13 ip-prefix 10.1.31.0/24
                                 192.168.254.3         -       100     0       65101 i
 * >     RD: 192.168.255.4:13 ip-prefix 10.1.31.0/24
                                 192.168.254.3         -       100     0       65101 i
 * >     RD: 192.168.255.5:13 ip-prefix 10.1.32.0/24
                                 192.168.254.5         -       100     0       65102 i
 * >     RD: 192.168.255.6:13 ip-prefix 10.1.32.0/24
                                 192.168.254.5         -       100     0       65102 i
 * >     RD: 192.168.255.11:13 ip-prefix 10.3.1.0/24
                                 192.168.254.11        -       100     0       65106 i
 * >     RD: 192.168.255.12:13 ip-prefix 10.3.1.0/24
                                 192.168.254.11        -       100     0       65106 i
 * >     RD: 192.168.255.11:13 ip-prefix 10.3.2.0/24
                                 192.168.254.11        -       100     0       65106 i
 * >     RD: 192.168.255.12:13 ip-prefix 10.3.2.0/24
                                 192.168.254.11        -       100     0       65106 i
 * >     RD: 192.168.255.3:11 ip-prefix 172.31.253.2/31
                                 192.168.254.3         -       100     0       65101 i
 * >     RD: 192.168.255.3:13 ip-prefix 172.31.253.2/31
                                 192.168.254.3         -       100     0       65101 i
 * >     RD: 192.168.255.4:11 ip-prefix 172.31.253.2/31
                                 192.168.254.3         -       100     0       65101 i
 * >     RD: 192.168.255.4:13 ip-prefix 172.31.253.2/31
                                 192.168.254.3         -       100     0       65101 i
 * >     RD: 192.168.255.5:11 ip-prefix 172.31.253.6/31
                                 192.168.254.5         -       100     0       65102 i
 * >     RD: 192.168.255.5:13 ip-prefix 172.31.253.6/31
                                 192.168.254.5         -       100     0       65102 i
 * >     RD: 192.168.255.6:11 ip-prefix 172.31.253.6/31
                                 192.168.254.5         -       100     0       65102 i
 * >     RD: 192.168.255.6:13 ip-prefix 172.31.253.6/31
                                 192.168.254.5         -       100     0       65102 i
 * >     RD: 192.168.255.9:11 ip-prefix 172.31.253.14/31
                                 192.168.254.9         -       100     0       65105 i
 * >     RD: 192.168.255.10:11 ip-prefix 172.31.253.14/31
                                 192.168.254.9         -       100     0       65105 i
 * >     RD: 192.168.255.11:11 ip-prefix 172.31.253.18/31
                                 192.168.254.11        -       100     0       65106 i
 * >     RD: 192.168.255.11:13 ip-prefix 172.31.253.18/31
                                 192.168.254.11        -       100     0       65106 i
 * >     RD: 192.168.255.12:11 ip-prefix 172.31.253.18/31
                                 192.168.254.11        -       100     0       65106 i
 * >     RD: 192.168.255.12:13 ip-prefix 172.31.253.18/31
                                 192.168.254.11        -       100     0       65106 i
```
## show interfaces description

```
Interface                      Status         Protocol           Description
Et1                            up             up                 P2P_LINK_TO_EAPI-SPINE1_Ethernet13
Et2                            up             up                 
Et3                            up             up                 
Et4                            up             up                 
Et5                            up             up                 
Et6                            up             up                 
Et7                            up             up                 
Et8                            up             up                 
Lo0                            up             up                 EVPN_Overlay_Peering
Ma1                            up             up                 oob_management
```
## show ip bgp summary vrf all

```
BGP summary information for VRF default
Router identifier 192.168.0.2, local AS number 65000
Neighbor Status Codes: m - Under maintenance
  Description              Neighbor         V AS           MsgRcvd   MsgSent  InQ OutQ  Up/Down State   PfxRcd PfxAcc
  EAPI-SPINE1_Ethernet13   172.31.250.0     4 65001             39        29    0    0 00:21:34 Estab   21     21
```
## show ip interface brief

```
Address
Interface       IP Address          Status     Protocol          MTU    Owner  
--------------- ------------------- ---------- ------------- ---------- -------
Ethernet1       172.31.250.1/31     up         up               1500           
Loopback0       192.168.0.2/32      up         up              65535           
Management1     10.73.254.51/24     up         up               1500
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

 C        172.31.250.0/31 is directly connected, Ethernet1
 C        192.168.0.2/32 is directly connected, Loopback0
 B E      192.168.1.1/32 [20/0] via 172.31.250.0, Ethernet1
 B E      192.168.252.2/32 [20/0] via 172.31.250.0, Ethernet1
 B E      192.168.252.3/32 [20/0] via 172.31.250.0, Ethernet1
 B E      192.168.253.2/32 [20/0] via 172.31.250.0, Ethernet1
 B E      192.168.253.3/32 [20/0] via 172.31.250.0, Ethernet1
 B E      192.168.254.3/32 [20/0] via 172.31.250.0, Ethernet1
 B E      192.168.254.5/32 [20/0] via 172.31.250.0, Ethernet1
 B E      192.168.254.7/32 [20/0] via 172.31.250.0, Ethernet1
 B E      192.168.254.8/32 [20/0] via 172.31.250.0, Ethernet1
 B E      192.168.254.9/32 [20/0] via 172.31.250.0, Ethernet1
 B E      192.168.254.11/32 [20/0] via 172.31.250.0, Ethernet1
 B E      192.168.255.3/32 [20/0] via 172.31.250.0, Ethernet1
 B E      192.168.255.4/32 [20/0] via 172.31.250.0, Ethernet1
 B E      192.168.255.5/32 [20/0] via 172.31.250.0, Ethernet1
 B E      192.168.255.6/32 [20/0] via 172.31.250.0, Ethernet1
 B E      192.168.255.7/32 [20/0] via 172.31.250.0, Ethernet1
 B E      192.168.255.8/32 [20/0] via 172.31.250.0, Ethernet1
 B E      192.168.255.9/32 [20/0] via 172.31.250.0, Ethernet1
 B E      192.168.255.10/32 [20/0] via 172.31.250.0, Ethernet1
 B E      192.168.255.11/32 [20/0] via 172.31.250.0, Ethernet1
 B E      192.168.255.12/32 [20/0] via 172.31.250.0, Ethernet1


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
Last table change time   : 0:21:19 ago
Number of table inserts  : 1
Number of table deletes  : 0
Number of table drops    : 0
Number of table age-outs : 0

Port          Neighbor Device ID       Neighbor Port ID    TTL
---------- ------------------------ ---------------------- ---
Et1           EAPI-SPINE1              Ethernet13          120
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
Serial number: A3EFA4C9A67963BA8E57242ACE3CCE70
Hardware MAC address: 5001.0070.9029
System MAC address: 5001.0070.9029

Software image version: 4.27.0F
Architecture: i686
Internal build version: 4.27.0F-24305004.4270F
Internal build ID: fed9e33b-669e-42ea-bee6-c7bf3cca1a73
Image format version: 1.0

Uptime: 23 minutes
Total memory: 2006636 kB
Free memory: 1092656 kB
```
## show vlan

```
VLAN  Name                             Status    Ports
----- -------------------------------- --------- -------------------------------
1     default                          active    Et2, Et3, Et4, Et5, Et6, Et7
                                                 Et8
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
