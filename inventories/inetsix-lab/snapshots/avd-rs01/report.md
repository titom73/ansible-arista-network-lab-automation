# avd-rs01 Commands Output

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
192.168.253.22 3479648580 3067643567                  NA multihop 06/21/22 12:33
192.168.253.23 2179187169  484592191                  NA multihop 06/21/22 12:33
192.168.255.13  348880801  803857261                  NA multihop 06/21/22 12:34
192.168.255.14 2837452899 4030726998                  NA multihop 06/21/22 12:34
192.168.255.15 3719478713 3113441469                  NA multihop 06/21/22 12:34
192.168.255.16 2798182328  821742624                  NA multihop 06/21/22 12:34
192.168.255.17 1898005246  598766040                  NA multihop 06/21/22 12:34
192.168.255.18 2489187906 3628756170                  NA multihop 06/21/22 12:33
192.168.255.19 1734683119 3007672661                  NA multihop 06/21/22 12:34
192.168.255.20  493093907 2163832763                  NA multihop 06/21/22 12:34
192.168.255.21 1961191966 2399516761                  NA multihop 06/21/22 12:34
192.168.255.22 1521843037 3206345685                  NA multihop 06/21/22 12:34

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
Router identifier 192.168.0.26, local AS number 65000
Neighbor Status Codes: m - Under maintenance
  Description              Neighbor       V AS           MsgRcvd   MsgSent  InQ OutQ  Up/Down State   PfxRcd PfxAcc
  avd-l2leaf01             192.168.253.22 4 65107            294       338    0    0 03:28:00 Estab   2      2
  avd-l2leaf02             192.168.253.23 4 65108            298       339    0    0 03:28:01 Estab   1      1
  avd-leaf1a               192.168.255.13 4 65101            304       318    0    0 03:27:42 Estab   10     10
  avd-leaf1b               192.168.255.14 4 65101            308       324    0    0 03:27:42 Estab   10     10
  avd-leaf2a               192.168.255.15 4 65102            293       312    0    0 03:27:32 Estab   12     12
  avd-leaf2b               192.168.255.16 4 65102            330       311    0    0 03:27:30 Estab   12     12
  avd-leaf3a               192.168.255.17 4 65103            296       323    0    0 03:27:47 Estab   12     12
  avd-leaf4a               192.168.255.18 4 65104            309       331    0    0 03:28:03 Estab   11     11
  avd-bl01a                192.168.255.19 4 65105            301       326    0    0 03:27:34 Estab   4      4
  avd-bl01b                192.168.255.20 4 65105            302       326    0    0 03:27:34 Estab   4      4
  avd-cl01a                192.168.255.21 4 65106            329       339    0    0 03:27:50 Estab   9      9
  avd-cl01b                192.168.255.22 4 65106            321       333    0    0 03:27:49 Estab   9      9
```
## show bgp evpn

```
BGP routing table information for VRF default
Router identifier 192.168.0.26, local AS number 65000
Route status codes: s - suppressed, * - valid, > - active, E - ECMP head, e - ECMP
                    S - Stale, c - Contributing to ECMP, b - backup
                    % - Pending BGP convergence
Origin codes: i - IGP, e - EGP, ? - incomplete
AS Path Attributes: Or-ID - Originator ID, C-LST - Cluster List, LL Nexthop - Link Local Nexthop

          Network                Next Hop              Metric  LocPref Weight  Path
 * >     RD: 192.168.255.17:11 auto-discovery 10110 0000:0000:0303:0202:0101
                                 192.168.254.17        -       100     0       65103 i
 * >     RD: 192.168.255.18:11 auto-discovery 10110 0000:0000:0303:0202:0101
                                 192.168.254.18        -       100     0       65104 i
 * >     RD: 192.168.255.17:11 auto-discovery 10113 0000:0000:0303:0202:0101
                                 192.168.254.17        -       100     0       65103 i
 * >     RD: 192.168.255.18:11 auto-discovery 10113 0000:0000:0303:0202:0101
                                 192.168.254.18        -       100     0       65104 i
 * >     RD: 192.168.255.17:20201 auto-discovery 20201 0000:0000:0303:0202:0101
                                 192.168.254.17        -       100     0       65103 i
 * >     RD: 192.168.255.18:20201 auto-discovery 20201 0000:0000:0303:0202:0101
                                 192.168.254.18        -       100     0       65104 i
 * >     RD: 192.168.254.17:1 auto-discovery 0000:0000:0303:0202:0101
                                 192.168.254.17        -       100     0       65103 i
 * >     RD: 192.168.254.18:1 auto-discovery 0000:0000:0303:0202:0101
                                 192.168.254.18        -       100     0       65104 i
 * >     RD: 192.168.255.17:11 mac-ip 10110 001c.73a4.f92c
                                 192.168.254.17        -       100     0       65103 i
 * >     RD: 192.168.255.17:11 mac-ip 10110 001c.73a4.f92c 10.1.10.3
                                 192.168.254.17        -       100     0       65103 i
 * >     RD: 192.168.255.18:11 mac-ip 10110 001c.73a4.f92c 10.1.10.3
                                 192.168.254.18        -       100     0       65104 i
 * >     RD: 192.168.255.15:11 mac-ip 10112 001c.7339.f7ae
                                 192.168.254.15        -       100     0       65102 i
 * >     RD: 192.168.255.16:11 mac-ip 10112 001c.7339.f7ae
                                 192.168.254.15        -       100     0       65102 i
 * >     RD: 192.168.255.15:11 mac-ip 10112 001c.7339.f7ae 10.1.12.2
                                 192.168.254.15        -       100     0       65102 i
 * >     RD: 192.168.255.16:11 mac-ip 10112 001c.7339.f7ae 10.1.12.2
                                 192.168.254.15        -       100     0       65102 i
 * >     RD: 192.168.255.13:11 imet 10110 192.168.254.13
                                 192.168.254.13        -       100     0       65101 i
 * >     RD: 192.168.255.14:11 imet 10110 192.168.254.13
                                 192.168.254.13        -       100     0       65101 i
 * >     RD: 192.168.255.15:11 imet 10110 192.168.254.15
                                 192.168.254.15        -       100     0       65102 i
 * >     RD: 192.168.255.16:11 imet 10110 192.168.254.15
                                 192.168.254.15        -       100     0       65102 i
 * >     RD: 192.168.255.17:11 imet 10110 192.168.254.17
                                 192.168.254.17        -       100     0       65103 i
 * >     RD: 192.168.255.18:11 imet 10110 192.168.254.18
                                 192.168.254.18        -       100     0       65104 i
 * >     RD: 192.168.255.19:11 imet 10110 192.168.254.19
                                 192.168.254.19        -       100     0       65105 i
 * >     RD: 192.168.255.20:11 imet 10110 192.168.254.19
                                 192.168.254.19        -       100     0       65105 i
 * >     RD: 192.168.255.21:11 imet 10110 192.168.254.21
                                 192.168.254.21        -       100     0       65106 i
 * >     RD: 192.168.255.22:11 imet 10110 192.168.254.21
                                 192.168.254.21        -       100     0       65106 i
 * >     RD: 192.168.255.13:11 imet 10111 192.168.254.13
                                 192.168.254.13        -       100     0       65101 i
 * >     RD: 192.168.255.14:11 imet 10111 192.168.254.13
                                 192.168.254.13        -       100     0       65101 i
 * >     RD: 192.168.255.15:11 imet 10111 192.168.254.15
                                 192.168.254.15        -       100     0       65102 i
 * >     RD: 192.168.255.16:11 imet 10111 192.168.254.15
                                 192.168.254.15        -       100     0       65102 i
 * >     RD: 192.168.255.13:11 imet 10112 192.168.254.13
                                 192.168.254.13        -       100     0       65101 i
 * >     RD: 192.168.255.14:11 imet 10112 192.168.254.13
                                 192.168.254.13        -       100     0       65101 i
 * >     RD: 192.168.255.15:11 imet 10112 192.168.254.15
                                 192.168.254.15        -       100     0       65102 i
 * >     RD: 192.168.255.16:11 imet 10112 192.168.254.15
                                 192.168.254.15        -       100     0       65102 i
 * >     RD: 192.168.255.17:11 imet 10113 192.168.254.17
                                 192.168.254.17        -       100     0       65103 i
 * >     RD: 192.168.255.18:11 imet 10113 192.168.254.18
                                 192.168.254.18        -       100     0       65104 i
 * >     RD: 192.168.255.13:20201 imet 20201 192.168.254.13
                                 192.168.254.13        -       100     0       65101 i
 * >     RD: 192.168.255.14:20201 imet 20201 192.168.254.13
                                 192.168.254.13        -       100     0       65101 i
 * >     RD: 192.168.255.15:20201 imet 20201 192.168.254.15
                                 192.168.254.15        -       100     0       65102 i
 * >     RD: 192.168.255.16:20201 imet 20201 192.168.254.15
                                 192.168.254.15        -       100     0       65102 i
 * >     RD: 192.168.255.17:20201 imet 20201 192.168.254.17
                                 192.168.254.17        -       100     0       65103 i
 * >     RD: 192.168.255.18:20201 imet 20201 192.168.254.18
                                 192.168.254.18        -       100     0       65104 i
 * >     RD: 192.168.255.19:20201 imet 20201 192.168.254.19
                                 192.168.254.19        -       100     0       65105 i
 * >     RD: 192.168.255.20:20201 imet 20201 192.168.254.19
                                 192.168.254.19        -       100     0       65105 i
 * >     RD: 192.168.255.21:20201 imet 20201 192.168.254.21
                                 192.168.254.21        -       100     0       65106 i
 * >     RD: 192.168.255.22:20201 imet 20201 192.168.254.21
                                 192.168.254.21        -       100     0       65106 i
 * >     RD: 192.168.253.22:13 imet 30301 192.168.252.22
                                 192.168.252.22        -       100     0       65107 i
 * >     RD: 192.168.255.21:13 imet 30301 192.168.254.21
                                 192.168.254.21        -       100     0       65106 i
 * >     RD: 192.168.255.22:13 imet 30301 192.168.254.21
                                 192.168.254.21        -       100     0       65106 i
 * >     RD: 192.168.253.22:13 imet 30302 192.168.252.22
                                 192.168.252.22        -       100     0       65107 i
 * >     RD: 192.168.253.23:13 imet 30302 192.168.252.23
                                 192.168.252.23        -       100     0       65108 i
 * >     RD: 192.168.255.21:13 imet 30302 192.168.254.21
                                 192.168.254.21        -       100     0       65106 i
 * >     RD: 192.168.255.22:13 imet 30302 192.168.254.21
                                 192.168.254.21        -       100     0       65106 i
 * >     RD: 192.168.254.17:1 ethernet-segment 0000:0000:0303:0202:0101 192.168.254.17
                                 192.168.254.17        -       100     0       65103 i
 * >     RD: 192.168.254.18:1 ethernet-segment 0000:0000:0303:0202:0101 192.168.254.18
                                 192.168.254.18        -       100     0       65104 i
 * >     RD: 192.168.255.13:11 ip-prefix 10.1.10.0/24
                                 192.168.254.13        -       100     0       65101 i
 * >     RD: 192.168.255.14:11 ip-prefix 10.1.10.0/24
                                 192.168.254.13        -       100     0       65101 i
 * >     RD: 192.168.255.15:11 ip-prefix 10.1.10.0/24
                                 192.168.254.15        -       100     0       65102 i
 * >     RD: 192.168.255.16:11 ip-prefix 10.1.10.0/24
                                 192.168.254.15        -       100     0       65102 i
 * >     RD: 192.168.255.17:11 ip-prefix 10.1.10.0/24
                                 192.168.254.17        -       100     0       65103 i
 * >     RD: 192.168.255.18:11 ip-prefix 10.1.10.0/24
                                 192.168.254.18        -       100     0       65104 i
 * >     RD: 192.168.255.19:11 ip-prefix 10.1.10.0/24
                                 192.168.254.19        -       100     0       65105 i
 * >     RD: 192.168.255.20:11 ip-prefix 10.1.10.0/24
                                 192.168.254.19        -       100     0       65105 i
 * >     RD: 192.168.255.21:11 ip-prefix 10.1.10.0/24
                                 192.168.254.21        -       100     0       65106 i
 * >     RD: 192.168.255.22:11 ip-prefix 10.1.10.0/24
                                 192.168.254.21        -       100     0       65106 i
 * >     RD: 192.168.255.13:11 ip-prefix 10.1.11.0/24
                                 192.168.254.13        -       100     0       65101 i
 * >     RD: 192.168.255.14:11 ip-prefix 10.1.11.0/24
                                 192.168.254.13        -       100     0       65101 i
 * >     RD: 192.168.255.15:11 ip-prefix 10.1.11.0/24
                                 192.168.254.15        -       100     0       65102 i
 * >     RD: 192.168.255.16:11 ip-prefix 10.1.11.0/24
                                 192.168.254.15        -       100     0       65102 i
 * >     RD: 192.168.255.13:11 ip-prefix 10.1.12.0/24
                                 192.168.254.13        -       100     0       65101 i
 * >     RD: 192.168.255.14:11 ip-prefix 10.1.12.0/24
                                 192.168.254.13        -       100     0       65101 i
 * >     RD: 192.168.255.15:11 ip-prefix 10.1.12.0/24
                                 192.168.254.15        -       100     0       65102 i
 * >     RD: 192.168.255.16:11 ip-prefix 10.1.12.0/24
                                 192.168.254.15        -       100     0       65102 i
 * >     RD: 192.168.255.17:11 ip-prefix 10.1.13.0/24
                                 192.168.254.17        -       100     0       65103 i
 * >     RD: 192.168.255.18:11 ip-prefix 10.1.13.0/24
                                 192.168.254.18        -       100     0       65104 i
 * >     RD: 192.168.255.13:13 ip-prefix 10.1.31.0/24
                                 192.168.254.13        -       100     0       65101 i
 * >     RD: 192.168.255.14:13 ip-prefix 10.1.31.0/24
                                 192.168.254.13        -       100     0       65101 i
 * >     RD: 192.168.255.15:13 ip-prefix 10.1.32.0/24
                                 192.168.254.15        -       100     0       65102 i
 * >     RD: 192.168.255.16:13 ip-prefix 10.1.32.0/24
                                 192.168.254.15        -       100     0       65102 i
 * >     RD: 192.168.255.21:13 ip-prefix 10.3.1.0/24
                                 192.168.254.21        -       100     0       65106 i
 * >     RD: 192.168.255.22:13 ip-prefix 10.3.1.0/24
                                 192.168.254.21        -       100     0       65106 i
 * >     RD: 192.168.255.21:13 ip-prefix 10.3.2.0/24
                                 192.168.254.21        -       100     0       65106 i
 * >     RD: 192.168.255.22:13 ip-prefix 10.3.2.0/24
                                 192.168.254.21        -       100     0       65106 i
 * >     RD: 192.168.255.13:11 ip-prefix 172.31.253.22/31
                                 192.168.254.13        -       100     0       65101 i
 * >     RD: 192.168.255.13:13 ip-prefix 172.31.253.22/31
                                 192.168.254.13        -       100     0       65101 i
 * >     RD: 192.168.255.14:11 ip-prefix 172.31.253.22/31
                                 192.168.254.13        -       100     0       65101 i
 * >     RD: 192.168.255.14:13 ip-prefix 172.31.253.22/31
                                 192.168.254.13        -       100     0       65101 i
 * >     RD: 192.168.255.15:11 ip-prefix 172.31.253.26/31
                                 192.168.254.15        -       100     0       65102 i
 * >     RD: 192.168.255.15:13 ip-prefix 172.31.253.26/31
                                 192.168.254.15        -       100     0       65102 i
 * >     RD: 192.168.255.16:11 ip-prefix 172.31.253.26/31
                                 192.168.254.15        -       100     0       65102 i
 * >     RD: 192.168.255.16:13 ip-prefix 172.31.253.26/31
                                 192.168.254.15        -       100     0       65102 i
 * >     RD: 192.168.255.19:11 ip-prefix 172.31.253.34/31
                                 192.168.254.19        -       100     0       65105 i
 * >     RD: 192.168.255.20:11 ip-prefix 172.31.253.34/31
                                 192.168.254.19        -       100     0       65105 i
 * >     RD: 192.168.255.21:11 ip-prefix 172.31.253.38/31
                                 192.168.254.21        -       100     0       65106 i
 * >     RD: 192.168.255.21:13 ip-prefix 172.31.253.38/31
                                 192.168.254.21        -       100     0       65106 i
 * >     RD: 192.168.255.22:11 ip-prefix 172.31.253.38/31
                                 192.168.254.21        -       100     0       65106 i
 * >     RD: 192.168.255.22:13 ip-prefix 172.31.253.38/31
                                 192.168.254.21        -       100     0       65106 i
```
## show interfaces description

```
Interface                      Status         Protocol           Description
Et1                            up             up                 P2P_LINK_TO_AVD-SPINE1_Ethernet13
Lo0                            up             up                 EVPN_Overlay_Peering
Ma0                            up             up                 oob_management
```
## show ip bgp summary vrf all

```
BGP summary information for VRF default
Router identifier 192.168.0.26, local AS number 65000
Neighbor Status Codes: m - Under maintenance
  Description              Neighbor      V AS           MsgRcvd   MsgSent  InQ OutQ  Up/Down State   PfxRcd PfxAcc
  avd-spine1_Ethernet13    172.31.250.48 4 65001            265       247    0    0 03:28:02 Estab   21     21
```
## show ip interface brief

```
Address
Interface       IP Address           Status     Protocol         MTU    Owner  
--------------- -------------------- ---------- ------------ ---------- -------
Ethernet1       172.31.250.49/31     up         up              1500           
Loopback0       192.168.0.26/32      up         up             65535           
Management0     10.73.252.51/24      up         up              1500
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

 C        172.31.250.48/31 is directly connected, Ethernet1
 C        192.168.0.26/32 is directly connected, Loopback0
 B E      192.168.1.1/32 [20/0] via 172.31.250.48, Ethernet1
 B E      192.168.252.22/32 [20/0] via 172.31.250.48, Ethernet1
 B E      192.168.252.23/32 [20/0] via 172.31.250.48, Ethernet1
 B E      192.168.253.22/32 [20/0] via 172.31.250.48, Ethernet1
 B E      192.168.253.23/32 [20/0] via 172.31.250.48, Ethernet1
 B E      192.168.254.13/32 [20/0] via 172.31.250.48, Ethernet1
 B E      192.168.254.15/32 [20/0] via 172.31.250.48, Ethernet1
 B E      192.168.254.17/32 [20/0] via 172.31.250.48, Ethernet1
 B E      192.168.254.18/32 [20/0] via 172.31.250.48, Ethernet1
 B E      192.168.254.19/32 [20/0] via 172.31.250.48, Ethernet1
 B E      192.168.254.21/32 [20/0] via 172.31.250.48, Ethernet1
 B E      192.168.255.13/32 [20/0] via 172.31.250.48, Ethernet1
 B E      192.168.255.14/32 [20/0] via 172.31.250.48, Ethernet1
 B E      192.168.255.15/32 [20/0] via 172.31.250.48, Ethernet1
 B E      192.168.255.16/32 [20/0] via 172.31.250.48, Ethernet1
 B E      192.168.255.17/32 [20/0] via 172.31.250.48, Ethernet1
 B E      192.168.255.18/32 [20/0] via 172.31.250.48, Ethernet1
 B E      192.168.255.19/32 [20/0] via 172.31.250.48, Ethernet1
 B E      192.168.255.20/32 [20/0] via 172.31.250.48, Ethernet1
 B E      192.168.255.21/32 [20/0] via 172.31.250.48, Ethernet1
 B E      192.168.255.22/32 [20/0] via 172.31.250.48, Ethernet1


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
Last table change time   : 3:01:17 ago
Number of table inserts  : 18
Number of table deletes  : 1
Number of table drops    : 0
Number of table age-outs : 1

Port          Neighbor Device ID       Neighbor Port ID    TTL
---------- ------------------------ ---------------------- ---
Et1           avd-spine1               Ethernet13          120
Ma0           srv-pod01                Management0         120
Ma0           srv-pod02                Management0         120
Ma0           avd-leaf1a               Management0         120
Ma0           avd-cl01b                Management0         120
Ma0           srv-pod03                Management0         120
Ma0           avd-l2leaf01             Management0         120
Ma0           avd-agg02                Management0         120
Ma0           avd-agg01                Management0         120
Ma0           avd-spine2               Management0         120
Ma0           avd-leaf4a               Management0         120
Ma0           avd-rs02                 Management0         120
Ma0           avd-l2leaf02             Management0         120
Ma0           avd-cl01a                Management0         120
Ma0           avd-spine1               Management0         120
Ma0           avd-bl01a                Management0         120
Ma0           avd-leaf3a               Management0         120
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
Serial number: FC8EC258FF4076758220F53D05AF560E
Hardware MAC address: 001c.73c6.faa6
System MAC address: 001c.73c6.faa6

Software image version: 4.27.2F-26069621.4272F (engineering build)
Architecture: i686
Internal build version: 4.27.2F-26069621.4272F
Internal build ID: b3360a82-d532-4043-b6b0-50707eede2a9
Image format version: 1.0
Image optimization: None

cEOS tools version: 1.1
Kernel version: 5.13.0-51-generic

Uptime: 3 hours and 27 minutes
Total memory: 41085292 kB
Free memory: 8177492 kB
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
