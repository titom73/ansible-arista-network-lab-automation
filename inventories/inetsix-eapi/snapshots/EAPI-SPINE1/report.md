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
VRF name: default
-----------------
DstAddr             MyDisc    YourDisc   Interface       Type           LastUp  
--------------- ----------- ----------- ----------- ---------- ---------------- 
192.168.255.3   2433161046  1805861970          NA   multihop   08/25/21 18:45  
192.168.255.4    769168453  2047026996          NA   multihop   08/25/21 18:45  
192.168.255.5   2131839070  3015381826          NA   multihop   08/25/21 18:45  
192.168.255.6    209282084  3716090408          NA   multihop   08/25/21 18:45  
192.168.255.7   4253750331  2636416947          NA   multihop   08/25/21 18:47  
192.168.255.8    282799896  2050410398          NA   multihop   08/25/21 18:45  
192.168.255.9   2869882917  1967956303          NA   multihop   08/25/21 18:45  
192.168.255.10   497867925  1366934986          NA   multihop   08/25/21 18:45  

         LastDown            LastDiag    State 
-------------------- ------------------- ----- 
   08/25/21 18:45       No Diagnostic       Up 
   08/25/21 18:45       No Diagnostic       Up 
   08/25/21 18:45       No Diagnostic       Up 
   08/25/21 18:45       No Diagnostic       Up 
   08/25/21 18:43       No Diagnostic       Up 
   08/25/21 18:45       No Diagnostic       Up 
   08/25/21 18:45       No Diagnostic       Up 
   08/25/21 18:45       No Diagnostic       Up
```
## show bgp evpn summary

```
BGP summary information for VRF default
Router identifier 192.168.255.1, local AS number 65001
Neighbor Status Codes: m - Under maintenance
  Description              Neighbor         V  AS           MsgRcvd   MsgSent  InQ OutQ  Up/Down State   PfxRcd PfxAcc
  EAPI-LEAF1A              192.168.255.3    4  65101            719       819    0    0 00:12:37 Estab   10     10
  EAPI-LEAF1B              192.168.255.4    4  65101            564       744    0    0 00:12:38 Estab   10     10
  EAPI-LEAF2A              192.168.255.5    4  65102            681       775    0    0 00:12:37 Estab   8      8
  EAPI-LEAF2B              192.168.255.6    4  65102            698       815    0    0 00:12:38 Estab   8      8
  EAPI-LEAF3A              192.168.255.7    4  65103            585       714    0    0 00:10:47 Estab   10     10
  EAPI-LEAF4A              192.168.255.8    4  65104            558       721    0    0 00:12:38 Estab   10     10
  EAPI-BL01A               192.168.255.9    4  65105            639       803    0    0 00:12:37 Estab   5      5
  EAPI-BL01B               192.168.255.10   4  65105            612       802    0    0 00:12:38 Estab   5      5
```
## show bgp evpn

```
BGP routing table information for VRF default
Router identifier 192.168.255.1, local AS number 65001
Route status codes: s - suppressed, * - valid, > - active, # - not installed, E - ECMP head, e - ECMP
                    S - Stale, c - Contributing to ECMP, b - backup
                    % - Pending BGP convergence
Origin codes: i - IGP, e - EGP, ? - incomplete
AS Path Attributes: Or-ID - Originator ID, C-LST - Cluster List, LL Nexthop - Link Local Nexthop

         Network                Next Hop              Metric  LocPref Weight  Path
 * >     RD: 192.168.255.7:11 auto-discovery 10110 0000:0000:0303:0202:0101
                                192.168.254.7         -       100     0       65103 i
 * >     RD: 192.168.255.8:11 auto-discovery 10110 0000:0000:0303:0202:0101
                                192.168.254.8         -       100     0       65104 i
 * >     RD: 192.168.255.7:11 auto-discovery 10113 0000:0000:0303:0202:0101
                                192.168.254.7         -       100     0       65103 i
 * >     RD: 192.168.255.8:11 auto-discovery 10113 0000:0000:0303:0202:0101
                                192.168.254.8         -       100     0       65104 i
 * >     RD: 192.168.255.7:20201 auto-discovery 20201 0000:0000:0303:0202:0101
                                192.168.254.7         -       100     0       65103 i
 * >     RD: 192.168.255.8:20201 auto-discovery 20201 0000:0000:0303:0202:0101
                                192.168.254.8         -       100     0       65104 i
 * >     RD: 192.168.254.7:1 auto-discovery 0000:0000:0303:0202:0101
                                192.168.254.7         -       100     0       65103 i
 * >     RD: 192.168.254.8:1 auto-discovery 0000:0000:0303:0202:0101
                                192.168.254.8         -       100     0       65104 i
 * >     RD: 192.168.255.3:11 mac-ip 10110 5001.0056.2a6e
                                192.168.254.3         -       100     0       65101 i
 * >     RD: 192.168.255.4:11 mac-ip 10110 5001.0056.2a6e
                                192.168.254.3         -       100     0       65101 i
 * >     RD: 192.168.255.3:11 mac-ip 10110 5001.0056.2a6e 10.1.10.1
                                192.168.254.3         -       100     0       65101 i
 * >     RD: 192.168.255.4:11 mac-ip 10110 5001.0056.2a6e 10.1.10.1
                                192.168.254.3         -       100     0       65101 i
 * >     RD: 192.168.255.5:11 mac-ip 10112 5001.0002.f6c5
                                192.168.254.5         -       100     0       65102 i
 * >     RD: 192.168.255.6:11 mac-ip 10112 5001.0002.f6c5
                                192.168.254.5         -       100     0       65102 i
 * >     RD: 192.168.255.3:11 mac-ip 10112 5001.0056.2a6e
                                192.168.254.3         -       100     0       65101 i
 * >     RD: 192.168.255.4:11 mac-ip 10112 5001.0056.2a6e
                                192.168.254.3         -       100     0       65101 i
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
 * >     RD: 192.168.254.7:1 ethernet-segment 0000:0000:0303:0202:0101 192.168.254.7
                                192.168.254.7         -       100     0       65103 i
 * >     RD: 192.168.254.8:1 ethernet-segment 0000:0000:0303:0202:0101 192.168.254.8
                                192.168.254.8         -       100     0       65104 i
 * >     RD: 192.168.255.9:11 ip-prefix 1.1.1.0/24
                                192.168.254.9         -       100     0       65105 ?
 * >     RD: 192.168.255.10:11 ip-prefix 1.1.1.0/24
                                192.168.254.9         -       100     0       65105 ?
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
 * >     RD: 192.168.255.3:11 ip-prefix 10.1.11.0/24
                                192.168.254.3         -       100     0       65101 i
 * >     RD: 192.168.255.4:11 ip-prefix 10.1.11.0/24
                                192.168.254.3         -       100     0       65101 i
 * >     RD: 192.168.255.5:11 ip-prefix 10.1.11.0/24
                                192.168.254.5         -       100     0       65102 i
 * >     RD: 192.168.255.6:11 ip-prefix 10.1.11.0/24
                                192.168.254.5         -       100     0       65102 i
 * >     RD: 192.168.255.7:11 ip-prefix 10.1.13.0/24
                                192.168.254.7         -       100     0       65103 i
 * >     RD: 192.168.255.8:11 ip-prefix 10.1.13.0/24
                                192.168.254.8         -       100     0       65104 i
 * >     RD: 192.168.255.3:11 ip-prefix 10.255.251.0/31
                                192.168.254.3         -       100     0       65101 i
 * >     RD: 192.168.255.4:11 ip-prefix 10.255.251.0/31
                                192.168.254.3         -       100     0       65101 i
 * >     RD: 192.168.255.5:11 ip-prefix 10.255.251.4/31
                                192.168.254.5         -       100     0       65102 i
 * >     RD: 192.168.255.6:11 ip-prefix 10.255.251.4/31
                                192.168.254.5         -       100     0       65102 i
 * >     RD: 192.168.255.9:11 ip-prefix 10.255.251.12/31
                                192.168.254.9         -       100     0       65105 i
 * >     RD: 192.168.255.10:11 ip-prefix 10.255.251.12/31
                                192.168.254.9         -       100     0       65105 i
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
Lo0                            up             up                 EVPN_Overlay_Peering
Ma1                            up             up                 oob_management
```
## show ip bgp summary vrf all

```
BGP summary information for VRF default
Router identifier 192.168.255.1, local AS number 65001
Neighbor Status Codes: m - Under maintenance
  Description              Neighbor         V  AS           MsgRcvd   MsgSent  InQ OutQ  Up/Down State   PfxRcd PfxAcc
  EAPI-LEAF1A_Ethernet1    172.31.255.1     4  65101            150       146    0    0 01:51:59 Estab   3      3
  EAPI-LEAF1B_Ethernet1    172.31.255.5     4  65101            141       144    0    0 01:52:19 Estab   3      3
  EAPI-LEAF2A_Ethernet1    172.31.255.9     4  65102            142       146    0    0 01:52:16 Estab   3      3
  EAPI-LEAF2B_Ethernet1    172.31.255.13    4  65102            142       143    0    0 01:52:05 Estab   3      3
  EAPI-LEAF3A_Ethernet1    172.31.255.17    4  65103            148       156    0    0 00:10:43 Estab   2      2
  EAPI-LEAF4A_Ethernet1    172.31.255.21    4  65104            142       149    0    0 01:52:50 Estab   2      2
  EAPI-BL01A_Ethernet1     172.31.255.25    4  65105            149       146    0    0 01:52:52 Estab   3      3
  EAPI-BL01B_Ethernet1     172.31.255.29    4  65105            148       149    0    0 01:52:50 Estab   3      3
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
Loopback0       192.168.255.1/32     up         up             65535            
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
       DP - Dynamic Policy Route, L - VRF Leaked

Gateway of last resort is not set

 C        172.31.255.0/31 is directly connected, Ethernet1
 C        172.31.255.4/31 is directly connected, Ethernet2
 C        172.31.255.8/31 is directly connected, Ethernet3
 C        172.31.255.12/31 is directly connected, Ethernet4
 C        172.31.255.16/31 is directly connected, Ethernet7
 C        172.31.255.20/31 is directly connected, Ethernet8
 C        172.31.255.24/31 is directly connected, Ethernet5
 C        172.31.255.28/31 is directly connected, Ethernet6
 B E      192.168.254.3/32 [20/0] via 172.31.255.1, Ethernet1
                                  via 172.31.255.5, Ethernet2
 B E      192.168.254.5/32 [20/0] via 172.31.255.9, Ethernet3
                                  via 172.31.255.13, Ethernet4
 B E      192.168.254.7/32 [20/0] via 172.31.255.17, Ethernet7
 B E      192.168.254.8/32 [20/0] via 172.31.255.21, Ethernet8
 B E      192.168.254.9/32 [20/0] via 172.31.255.25, Ethernet5
                                  via 172.31.255.29, Ethernet6
 C        192.168.255.1/32 is directly connected, Loopback0
 B E      192.168.255.3/32 [20/0] via 172.31.255.1, Ethernet1
 B E      192.168.255.4/32 [20/0] via 172.31.255.5, Ethernet2
 B E      192.168.255.5/32 [20/0] via 172.31.255.9, Ethernet3
 B E      192.168.255.6/32 [20/0] via 172.31.255.13, Ethernet4
 B E      192.168.255.7/32 [20/0] via 172.31.255.17, Ethernet7
 B E      192.168.255.8/32 [20/0] via 172.31.255.21, Ethernet8
 B E      192.168.255.9/32 [20/0] via 172.31.255.25, Ethernet5
 B E      192.168.255.10/32 [20/0] via 172.31.255.29, Ethernet6


VRF: MGMT
Codes: C - connected, S - static, K - kernel, 
       O - OSPF, IA - OSPF inter area, E1 - OSPF external type 1,
       E2 - OSPF external type 2, N1 - OSPF NSSA external type 1,
       N2 - OSPF NSSA external type2, B - BGP, B I - iBGP, B E - eBGP,
       R - RIP, I L1 - IS-IS level 1, I L2 - IS-IS level 2,
       O3 - OSPFv3, A B - BGP Aggregate, A O - OSPF Summary,
       NG - Nexthop Group Static Route, V - VXLAN Control Service,
       DH - DHCP client installed default route, M - Martian,
       DP - Dynamic Policy Route, L - VRF Leaked

Gateway of last resort:
 S        0.0.0.0/0 [1/0] via 10.73.254.253, Management1

 C        10.73.254.0/24 is directly connected, Management1

! IP routing not enabled
```
## show lldp neighbors

```
Last table change time   : 0:10:33 ago
Number of table inserts  : 26
Number of table deletes  : 4
Number of table drops    : 0
Number of table age-outs : 4

Port       Neighbor Device ID               Neighbor Port ID           TTL
Et1        EAPI-LEAF1A                      Ethernet1                  120
Et2        EAPI-LEAF1B                      Ethernet1                  120
Et3        EAPI-LEAF2A                      Ethernet1                  120
Et4        EAPI-LEAF2B                      Ethernet1                  120
Et5        EAPI-BL01A                       Ethernet1                  120
Et6        EAPI-BL01B                       Ethernet1                  120
Et7        EAPI-LEAF3A                      Ethernet1                  120
Et8        EAPI-LEAF4A                      Ethernet1                  120
Ma1        EAPI-BL01B                       Management1                120
Ma1        EAPI-BL01A                       Management1                120
Ma1        SRV-POD02                        Management1                120
Ma1        EAPI-AGG01                       Management1                120
Ma1        SRV-POD01                        Management1                120
Ma1        EAPI-LEAF4A                      Management1                120
Ma1        EAPI-AGG02                       Management1                120
Ma1        EAPI-SPINE2                      Management1                120
Ma1        EAPI-LEAF1B                      Management1                120
Ma1        EAPI-LEAF1A                      Management1                120
Ma1        EAPI-LEAF2B                      Management1                120
Ma1        EAPI-LEAF2A                      Management1                120
Ma1        SRV-POD03                        Management1                120
Ma1        EAPI-LEAF3A                      Management1                120
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
domain-id              :                    
local-interface        :                    
peer-address           :             0.0.0.0
peer-link              :                    
peer-config            :                    
                                            
MLAG Status:          
state                  :            Disabled
negotiation status     :                    
peer-link status       :                    
local-int status       :                    
system-id              :   00:00:00:00:00:00
dual-primary detection :            Disabled
                                            
MLAG Ports:           
Disabled               :                   0
Configured             :                   0
Inactive               :                   0
Active-partial         :                   0
Active-full            :                   0

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
vEOS
Hardware version:    
Serial number:       
System MAC address:  0c1d.c0a3.86f3

Software image version: 4.22.5M
Architecture:           i686
Internal build version: 4.22.5M-16511818.4225M
Internal build ID:      ca78196c-426c-40e9-9d55-80540fb5ac07

Uptime:                 0 weeks, 0 days, 2 hours and 3 minutes
Total memory:           2014520 kB
Free memory:            1191776 kB
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

VLAN  Mac Address     Type     Prt  VTEP             Moves   Last Move
----  -----------     ----     ---  ----             -----   ---------
Total Remote Mac Addresses for this criterion: 0
```
## show vxlan vni

```

```
## show vxlan vtep

```

```
