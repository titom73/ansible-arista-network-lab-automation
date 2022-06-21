# avd-leaf1b Commands Output

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
DstAddr          MyDisc   YourDisc Interface/Transport     Type         LastUp 
------------ ---------- ---------- ------------------- -------- ---------------
192.168.0.26 4030726998 2837452899                  NA multihop 06/21/22 12:34 
192.168.0.27 1740390903 3960076901                  NA multihop 06/21/22 12:34 

   LastDown            LastDiag    State
-------------- ------------------- -----
         NA       No Diagnostic       Up
         NA       No Diagnostic       Up
```
## show bgp evpn summary

```
BGP summary information for VRF default
Router identifier 192.168.255.14, local AS number 65101
Neighbor Status Codes: m - Under maintenance
  Description              Neighbor     V AS           MsgRcvd   MsgSent  InQ OutQ  Up/Down State   PfxRcd PfxAcc
  avd-rs01                 192.168.0.26 4 65000            324       308    0    0 03:27:43 Estab   76     76
  avd-rs02                 192.168.0.27 4 65000            322       307    0    0 03:27:43 Estab   76     76
```
## show bgp evpn

```
BGP routing table information for VRF default
Router identifier 192.168.255.14, local AS number 65101
Route status codes: s - suppressed, * - valid, > - active, E - ECMP head, e - ECMP
                    S - Stale, c - Contributing to ECMP, b - backup
                    % - Pending BGP convergence
Origin codes: i - IGP, e - EGP, ? - incomplete
AS Path Attributes: Or-ID - Originator ID, C-LST - Cluster List, LL Nexthop - Link Local Nexthop

          Network                Next Hop              Metric  LocPref Weight  Path
 * >Ec   RD: 192.168.255.17:11 auto-discovery 10110 0000:0000:0303:0202:0101
                                 192.168.254.17        -       100     0       65000 65103 i
 *  ec   RD: 192.168.255.17:11 auto-discovery 10110 0000:0000:0303:0202:0101
                                 192.168.254.17        -       100     0       65000 65103 i
 * >Ec   RD: 192.168.255.18:11 auto-discovery 10110 0000:0000:0303:0202:0101
                                 192.168.254.18        -       100     0       65000 65104 i
 *  ec   RD: 192.168.255.18:11 auto-discovery 10110 0000:0000:0303:0202:0101
                                 192.168.254.18        -       100     0       65000 65104 i
 * >Ec   RD: 192.168.255.17:11 auto-discovery 10113 0000:0000:0303:0202:0101
                                 192.168.254.17        -       100     0       65000 65103 i
 *  ec   RD: 192.168.255.17:11 auto-discovery 10113 0000:0000:0303:0202:0101
                                 192.168.254.17        -       100     0       65000 65103 i
 * >Ec   RD: 192.168.255.18:11 auto-discovery 10113 0000:0000:0303:0202:0101
                                 192.168.254.18        -       100     0       65000 65104 i
 *  ec   RD: 192.168.255.18:11 auto-discovery 10113 0000:0000:0303:0202:0101
                                 192.168.254.18        -       100     0       65000 65104 i
 * >Ec   RD: 192.168.255.17:20201 auto-discovery 20201 0000:0000:0303:0202:0101
                                 192.168.254.17        -       100     0       65000 65103 i
 *  ec   RD: 192.168.255.17:20201 auto-discovery 20201 0000:0000:0303:0202:0101
                                 192.168.254.17        -       100     0       65000 65103 i
 * >Ec   RD: 192.168.255.18:20201 auto-discovery 20201 0000:0000:0303:0202:0101
                                 192.168.254.18        -       100     0       65000 65104 i
 *  ec   RD: 192.168.255.18:20201 auto-discovery 20201 0000:0000:0303:0202:0101
                                 192.168.254.18        -       100     0       65000 65104 i
 * >Ec   RD: 192.168.254.17:1 auto-discovery 0000:0000:0303:0202:0101
                                 192.168.254.17        -       100     0       65000 65103 i
 *  ec   RD: 192.168.254.17:1 auto-discovery 0000:0000:0303:0202:0101
                                 192.168.254.17        -       100     0       65000 65103 i
 * >Ec   RD: 192.168.254.18:1 auto-discovery 0000:0000:0303:0202:0101
                                 192.168.254.18        -       100     0       65000 65104 i
 *  ec   RD: 192.168.254.18:1 auto-discovery 0000:0000:0303:0202:0101
                                 192.168.254.18        -       100     0       65000 65104 i
 * >Ec   RD: 192.168.255.17:11 mac-ip 10110 001c.73a4.f92c
                                 192.168.254.17        -       100     0       65000 65103 i
 *  ec   RD: 192.168.255.17:11 mac-ip 10110 001c.73a4.f92c
                                 192.168.254.17        -       100     0       65000 65103 i
 * >Ec   RD: 192.168.255.17:11 mac-ip 10110 001c.73a4.f92c 10.1.10.3
                                 192.168.254.17        -       100     0       65000 65103 i
 *  ec   RD: 192.168.255.17:11 mac-ip 10110 001c.73a4.f92c 10.1.10.3
                                 192.168.254.17        -       100     0       65000 65103 i
 * >Ec   RD: 192.168.255.18:11 mac-ip 10110 001c.73a4.f92c 10.1.10.3
                                 192.168.254.18        -       100     0       65000 65104 i
 *  ec   RD: 192.168.255.18:11 mac-ip 10110 001c.73a4.f92c 10.1.10.3
                                 192.168.254.18        -       100     0       65000 65104 i
 * >Ec   RD: 192.168.255.15:11 mac-ip 10112 001c.7339.f7ae
                                 192.168.254.15        -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.15:11 mac-ip 10112 001c.7339.f7ae
                                 192.168.254.15        -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.16:11 mac-ip 10112 001c.7339.f7ae
                                 192.168.254.15        -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.16:11 mac-ip 10112 001c.7339.f7ae
                                 192.168.254.15        -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.15:11 mac-ip 10112 001c.7339.f7ae 10.1.12.2
                                 192.168.254.15        -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.15:11 mac-ip 10112 001c.7339.f7ae 10.1.12.2
                                 192.168.254.15        -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.16:11 mac-ip 10112 001c.7339.f7ae 10.1.12.2
                                 192.168.254.15        -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.16:11 mac-ip 10112 001c.7339.f7ae 10.1.12.2
                                 192.168.254.15        -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.15:11 imet 10110 192.168.254.15
                                 192.168.254.15        -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.15:11 imet 10110 192.168.254.15
                                 192.168.254.15        -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.16:11 imet 10110 192.168.254.15
                                 192.168.254.15        -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.16:11 imet 10110 192.168.254.15
                                 192.168.254.15        -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.17:11 imet 10110 192.168.254.17
                                 192.168.254.17        -       100     0       65000 65103 i
 *  ec   RD: 192.168.255.17:11 imet 10110 192.168.254.17
                                 192.168.254.17        -       100     0       65000 65103 i
 * >Ec   RD: 192.168.255.18:11 imet 10110 192.168.254.18
                                 192.168.254.18        -       100     0       65000 65104 i
 *  ec   RD: 192.168.255.18:11 imet 10110 192.168.254.18
                                 192.168.254.18        -       100     0       65000 65104 i
 * >Ec   RD: 192.168.255.19:11 imet 10110 192.168.254.19
                                 192.168.254.19        -       100     0       65000 65105 i
 *  ec   RD: 192.168.255.19:11 imet 10110 192.168.254.19
                                 192.168.254.19        -       100     0       65000 65105 i
 * >Ec   RD: 192.168.255.20:11 imet 10110 192.168.254.19
                                 192.168.254.19        -       100     0       65000 65105 i
 *  ec   RD: 192.168.255.20:11 imet 10110 192.168.254.19
                                 192.168.254.19        -       100     0       65000 65105 i
 * >Ec   RD: 192.168.255.21:11 imet 10110 192.168.254.21
                                 192.168.254.21        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.21:11 imet 10110 192.168.254.21
                                 192.168.254.21        -       100     0       65000 65106 i
 * >Ec   RD: 192.168.255.22:11 imet 10110 192.168.254.21
                                 192.168.254.21        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.22:11 imet 10110 192.168.254.21
                                 192.168.254.21        -       100     0       65000 65106 i
 * >     RD: 192.168.255.14:11 imet 10110 192.168.254.13
                                 -                     -       -       0       i
 * >Ec   RD: 192.168.255.15:11 imet 10111 192.168.254.15
                                 192.168.254.15        -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.15:11 imet 10111 192.168.254.15
                                 192.168.254.15        -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.16:11 imet 10111 192.168.254.15
                                 192.168.254.15        -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.16:11 imet 10111 192.168.254.15
                                 192.168.254.15        -       100     0       65000 65102 i
 * >     RD: 192.168.255.14:11 imet 10111 192.168.254.13
                                 -                     -       -       0       i
 * >Ec   RD: 192.168.255.15:11 imet 10112 192.168.254.15
                                 192.168.254.15        -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.15:11 imet 10112 192.168.254.15
                                 192.168.254.15        -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.16:11 imet 10112 192.168.254.15
                                 192.168.254.15        -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.16:11 imet 10112 192.168.254.15
                                 192.168.254.15        -       100     0       65000 65102 i
 * >     RD: 192.168.255.14:11 imet 10112 192.168.254.13
                                 -                     -       -       0       i
 * >Ec   RD: 192.168.255.17:11 imet 10113 192.168.254.17
                                 192.168.254.17        -       100     0       65000 65103 i
 *  ec   RD: 192.168.255.17:11 imet 10113 192.168.254.17
                                 192.168.254.17        -       100     0       65000 65103 i
 * >Ec   RD: 192.168.255.18:11 imet 10113 192.168.254.18
                                 192.168.254.18        -       100     0       65000 65104 i
 *  ec   RD: 192.168.255.18:11 imet 10113 192.168.254.18
                                 192.168.254.18        -       100     0       65000 65104 i
 * >Ec   RD: 192.168.255.15:20201 imet 20201 192.168.254.15
                                 192.168.254.15        -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.15:20201 imet 20201 192.168.254.15
                                 192.168.254.15        -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.16:20201 imet 20201 192.168.254.15
                                 192.168.254.15        -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.16:20201 imet 20201 192.168.254.15
                                 192.168.254.15        -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.17:20201 imet 20201 192.168.254.17
                                 192.168.254.17        -       100     0       65000 65103 i
 *  ec   RD: 192.168.255.17:20201 imet 20201 192.168.254.17
                                 192.168.254.17        -       100     0       65000 65103 i
 * >Ec   RD: 192.168.255.18:20201 imet 20201 192.168.254.18
                                 192.168.254.18        -       100     0       65000 65104 i
 *  ec   RD: 192.168.255.18:20201 imet 20201 192.168.254.18
                                 192.168.254.18        -       100     0       65000 65104 i
 * >Ec   RD: 192.168.255.19:20201 imet 20201 192.168.254.19
                                 192.168.254.19        -       100     0       65000 65105 i
 *  ec   RD: 192.168.255.19:20201 imet 20201 192.168.254.19
                                 192.168.254.19        -       100     0       65000 65105 i
 * >Ec   RD: 192.168.255.20:20201 imet 20201 192.168.254.19
                                 192.168.254.19        -       100     0       65000 65105 i
 *  ec   RD: 192.168.255.20:20201 imet 20201 192.168.254.19
                                 192.168.254.19        -       100     0       65000 65105 i
 * >Ec   RD: 192.168.255.21:20201 imet 20201 192.168.254.21
                                 192.168.254.21        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.21:20201 imet 20201 192.168.254.21
                                 192.168.254.21        -       100     0       65000 65106 i
 * >Ec   RD: 192.168.255.22:20201 imet 20201 192.168.254.21
                                 192.168.254.21        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.22:20201 imet 20201 192.168.254.21
                                 192.168.254.21        -       100     0       65000 65106 i
 * >     RD: 192.168.255.14:20201 imet 20201 192.168.254.13
                                 -                     -       -       0       i
 * >Ec   RD: 192.168.253.22:13 imet 30301 192.168.252.22
                                 192.168.252.22        -       100     0       65000 65107 i
 *  ec   RD: 192.168.253.22:13 imet 30301 192.168.252.22
                                 192.168.252.22        -       100     0       65000 65107 i
 * >Ec   RD: 192.168.255.21:13 imet 30301 192.168.254.21
                                 192.168.254.21        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.21:13 imet 30301 192.168.254.21
                                 192.168.254.21        -       100     0       65000 65106 i
 * >Ec   RD: 192.168.255.22:13 imet 30301 192.168.254.21
                                 192.168.254.21        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.22:13 imet 30301 192.168.254.21
                                 192.168.254.21        -       100     0       65000 65106 i
 * >Ec   RD: 192.168.253.22:13 imet 30302 192.168.252.22
                                 192.168.252.22        -       100     0       65000 65107 i
 *  ec   RD: 192.168.253.22:13 imet 30302 192.168.252.22
                                 192.168.252.22        -       100     0       65000 65107 i
 * >Ec   RD: 192.168.253.23:13 imet 30302 192.168.252.23
                                 192.168.252.23        -       100     0       65000 65108 i
 *  ec   RD: 192.168.253.23:13 imet 30302 192.168.252.23
                                 192.168.252.23        -       100     0       65000 65108 i
 * >Ec   RD: 192.168.255.21:13 imet 30302 192.168.254.21
                                 192.168.254.21        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.21:13 imet 30302 192.168.254.21
                                 192.168.254.21        -       100     0       65000 65106 i
 * >Ec   RD: 192.168.255.22:13 imet 30302 192.168.254.21
                                 192.168.254.21        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.22:13 imet 30302 192.168.254.21
                                 192.168.254.21        -       100     0       65000 65106 i
 * >Ec   RD: 192.168.254.17:1 ethernet-segment 0000:0000:0303:0202:0101 192.168.254.17
                                 192.168.254.17        -       100     0       65000 65103 i
 *  ec   RD: 192.168.254.17:1 ethernet-segment 0000:0000:0303:0202:0101 192.168.254.17
                                 192.168.254.17        -       100     0       65000 65103 i
 * >Ec   RD: 192.168.254.18:1 ethernet-segment 0000:0000:0303:0202:0101 192.168.254.18
                                 192.168.254.18        -       100     0       65000 65104 i
 *  ec   RD: 192.168.254.18:1 ethernet-segment 0000:0000:0303:0202:0101 192.168.254.18
                                 192.168.254.18        -       100     0       65000 65104 i
 * >     RD: 192.168.255.14:11 ip-prefix 10.1.10.0/24
                                 -                     -       -       0       i
 *       RD: 192.168.255.14:11 ip-prefix 10.1.10.0/24
                                 -                     -       100     0       ?
 * >Ec   RD: 192.168.255.15:11 ip-prefix 10.1.10.0/24
                                 192.168.254.15        -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.15:11 ip-prefix 10.1.10.0/24
                                 192.168.254.15        -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.16:11 ip-prefix 10.1.10.0/24
                                 192.168.254.15        -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.16:11 ip-prefix 10.1.10.0/24
                                 192.168.254.15        -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.17:11 ip-prefix 10.1.10.0/24
                                 192.168.254.17        -       100     0       65000 65103 i
 *  ec   RD: 192.168.255.17:11 ip-prefix 10.1.10.0/24
                                 192.168.254.17        -       100     0       65000 65103 i
 * >Ec   RD: 192.168.255.18:11 ip-prefix 10.1.10.0/24
                                 192.168.254.18        -       100     0       65000 65104 i
 *  ec   RD: 192.168.255.18:11 ip-prefix 10.1.10.0/24
                                 192.168.254.18        -       100     0       65000 65104 i
 * >Ec   RD: 192.168.255.19:11 ip-prefix 10.1.10.0/24
                                 192.168.254.19        -       100     0       65000 65105 i
 *  ec   RD: 192.168.255.19:11 ip-prefix 10.1.10.0/24
                                 192.168.254.19        -       100     0       65000 65105 i
 * >Ec   RD: 192.168.255.20:11 ip-prefix 10.1.10.0/24
                                 192.168.254.19        -       100     0       65000 65105 i
 *  ec   RD: 192.168.255.20:11 ip-prefix 10.1.10.0/24
                                 192.168.254.19        -       100     0       65000 65105 i
 * >Ec   RD: 192.168.255.21:11 ip-prefix 10.1.10.0/24
                                 192.168.254.21        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.21:11 ip-prefix 10.1.10.0/24
                                 192.168.254.21        -       100     0       65000 65106 i
 * >Ec   RD: 192.168.255.22:11 ip-prefix 10.1.10.0/24
                                 192.168.254.21        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.22:11 ip-prefix 10.1.10.0/24
                                 192.168.254.21        -       100     0       65000 65106 i
 * >     RD: 192.168.255.14:11 ip-prefix 10.1.10.3/32
                                 -                     -       100     0       65000 65104 ?
 * >     RD: 192.168.255.14:11 ip-prefix 10.1.11.0/24
                                 -                     -       -       0       i
 *       RD: 192.168.255.14:11 ip-prefix 10.1.11.0/24
                                 -                     -       100     0       ?
 * >Ec   RD: 192.168.255.15:11 ip-prefix 10.1.11.0/24
                                 192.168.254.15        -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.15:11 ip-prefix 10.1.11.0/24
                                 192.168.254.15        -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.16:11 ip-prefix 10.1.11.0/24
                                 192.168.254.15        -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.16:11 ip-prefix 10.1.11.0/24
                                 192.168.254.15        -       100     0       65000 65102 i
 * >     RD: 192.168.255.14:11 ip-prefix 10.1.12.0/24
                                 -                     -       -       0       i
 *       RD: 192.168.255.14:11 ip-prefix 10.1.12.0/24
                                 -                     -       100     0       ?
 * >Ec   RD: 192.168.255.15:11 ip-prefix 10.1.12.0/24
                                 192.168.254.15        -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.15:11 ip-prefix 10.1.12.0/24
                                 192.168.254.15        -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.16:11 ip-prefix 10.1.12.0/24
                                 192.168.254.15        -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.16:11 ip-prefix 10.1.12.0/24
                                 192.168.254.15        -       100     0       65000 65102 i
 * >     RD: 192.168.255.14:11 ip-prefix 10.1.12.2/32
                                 -                     -       100     0       65000 65102 ?
 * >     RD: 192.168.255.14:11 ip-prefix 10.1.13.0/24
                                 -                     -       100     0       65000 65103 ?
 * >Ec   RD: 192.168.255.17:11 ip-prefix 10.1.13.0/24
                                 192.168.254.17        -       100     0       65000 65103 i
 *  ec   RD: 192.168.255.17:11 ip-prefix 10.1.13.0/24
                                 192.168.254.17        -       100     0       65000 65103 i
 * >Ec   RD: 192.168.255.18:11 ip-prefix 10.1.13.0/24
                                 192.168.254.18        -       100     0       65000 65104 i
 *  ec   RD: 192.168.255.18:11 ip-prefix 10.1.13.0/24
                                 192.168.254.18        -       100     0       65000 65104 i
 * >     RD: 192.168.255.14:13 ip-prefix 10.1.31.0/24
                                 -                     -       -       0       i
 *       RD: 192.168.255.14:13 ip-prefix 10.1.31.0/24
                                 -                     -       100     0       ?
 * >     RD: 192.168.255.14:13 ip-prefix 10.1.32.0/24
                                 -                     -       100     0       65000 65102 ?
 * >Ec   RD: 192.168.255.15:13 ip-prefix 10.1.32.0/24
                                 192.168.254.15        -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.15:13 ip-prefix 10.1.32.0/24
                                 192.168.254.15        -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.16:13 ip-prefix 10.1.32.0/24
                                 192.168.254.15        -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.16:13 ip-prefix 10.1.32.0/24
                                 192.168.254.15        -       100     0       65000 65102 i
 * >     RD: 192.168.255.14:13 ip-prefix 10.3.1.0/24
                                 -                     -       100     0       65000 65106 ?
 * >Ec   RD: 192.168.255.21:13 ip-prefix 10.3.1.0/24
                                 192.168.254.21        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.21:13 ip-prefix 10.3.1.0/24
                                 192.168.254.21        -       100     0       65000 65106 i
 * >Ec   RD: 192.168.255.22:13 ip-prefix 10.3.1.0/24
                                 192.168.254.21        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.22:13 ip-prefix 10.3.1.0/24
                                 192.168.254.21        -       100     0       65000 65106 i
 * >     RD: 192.168.255.14:13 ip-prefix 10.3.2.0/24
                                 -                     -       100     0       65000 65106 ?
 * >Ec   RD: 192.168.255.21:13 ip-prefix 10.3.2.0/24
                                 192.168.254.21        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.21:13 ip-prefix 10.3.2.0/24
                                 192.168.254.21        -       100     0       65000 65106 i
 * >Ec   RD: 192.168.255.22:13 ip-prefix 10.3.2.0/24
                                 192.168.254.21        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.22:13 ip-prefix 10.3.2.0/24
                                 192.168.254.21        -       100     0       65000 65106 i
 * >     RD: 192.168.255.14:11 ip-prefix 172.31.253.22/31
                                 -                     -       -       0       i
 *       RD: 192.168.255.14:11 ip-prefix 172.31.253.22/31
                                 -                     -       100     0       ?
 * >     RD: 192.168.255.14:13 ip-prefix 172.31.253.22/31
                                 -                     -       -       0       i
 *       RD: 192.168.255.14:13 ip-prefix 172.31.253.22/31
                                 -                     -       100     0       ?
 * >     RD: 192.168.255.14:11 ip-prefix 172.31.253.26/31
                                 -                     -       100     0       65000 65102 ?
 * >     RD: 192.168.255.14:13 ip-prefix 172.31.253.26/31
                                 -                     -       100     0       65000 65102 ?
 * >Ec   RD: 192.168.255.15:11 ip-prefix 172.31.253.26/31
                                 192.168.254.15        -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.15:11 ip-prefix 172.31.253.26/31
                                 192.168.254.15        -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.15:13 ip-prefix 172.31.253.26/31
                                 192.168.254.15        -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.15:13 ip-prefix 172.31.253.26/31
                                 192.168.254.15        -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.16:11 ip-prefix 172.31.253.26/31
                                 192.168.254.15        -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.16:11 ip-prefix 172.31.253.26/31
                                 192.168.254.15        -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.16:13 ip-prefix 172.31.253.26/31
                                 192.168.254.15        -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.16:13 ip-prefix 172.31.253.26/31
                                 192.168.254.15        -       100     0       65000 65102 i
 * >     RD: 192.168.255.14:11 ip-prefix 172.31.253.34/31
                                 -                     -       100     0       65000 65105 ?
 * >Ec   RD: 192.168.255.19:11 ip-prefix 172.31.253.34/31
                                 192.168.254.19        -       100     0       65000 65105 i
 *  ec   RD: 192.168.255.19:11 ip-prefix 172.31.253.34/31
                                 192.168.254.19        -       100     0       65000 65105 i
 * >Ec   RD: 192.168.255.20:11 ip-prefix 172.31.253.34/31
                                 192.168.254.19        -       100     0       65000 65105 i
 *  ec   RD: 192.168.255.20:11 ip-prefix 172.31.253.34/31
                                 192.168.254.19        -       100     0       65000 65105 i
 * >     RD: 192.168.255.14:11 ip-prefix 172.31.253.38/31
                                 -                     -       100     0       65000 65106 ?
 * >     RD: 192.168.255.14:13 ip-prefix 172.31.253.38/31
                                 -                     -       100     0       65000 65106 ?
 * >Ec   RD: 192.168.255.21:11 ip-prefix 172.31.253.38/31
                                 192.168.254.21        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.21:11 ip-prefix 172.31.253.38/31
                                 192.168.254.21        -       100     0       65000 65106 i
 * >Ec   RD: 192.168.255.21:13 ip-prefix 172.31.253.38/31
                                 192.168.254.21        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.21:13 ip-prefix 172.31.253.38/31
                                 192.168.254.21        -       100     0       65000 65106 i
 * >Ec   RD: 192.168.255.22:11 ip-prefix 172.31.253.38/31
                                 192.168.254.21        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.22:11 ip-prefix 172.31.253.38/31
                                 192.168.254.21        -       100     0       65000 65106 i
 * >Ec   RD: 192.168.255.22:13 ip-prefix 172.31.253.38/31
                                 192.168.254.21        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.22:13 ip-prefix 172.31.253.38/31
                                 192.168.254.21        -       100     0       65000 65106 i
```
## show interfaces description

```
Interface                      Status         Protocol           Description
Et1                            up             up                 P2P_LINK_TO_AVD-SPINE1_Ethernet2
Et2                            up             up                 P2P_LINK_TO_AVD-SPINE2_Ethernet2
Et5                            up             up                 AVD-AGG01_Ethernet2
Et7                            up             up                 MLAG_PEER_avd-leaf1a_Ethernet7
Et8                            up             up                 MLAG_PEER_avd-leaf1a_Ethernet8
Lo0                            up             up                 EVPN_Overlay_Peering
Lo1                            up             up                 VTEP_VXLAN_Tunnel_Source
Ma0                            up             up                 oob_management
Po5                            up             up                 AVD-AGG01_Po1
Po7                            up             up                 MLAG_PEER_avd-leaf1a_Po7
Vl110                          up             up                 pr01-demo
Vl111                          up             up                 pr01-trust
Vl112                          up             up                 pr01-trust
Vl131                          up             up                 vl131_no_vni
Vl1198                         up             up                 
Vl1199                         up             up                 
Vl3010                         up             up                 MLAG_PEER_L3_iBGP: vrf tenant_a_project01
Vl3012                         up             up                 MLAG_PEER_L3_iBGP: vrf pure_type5
Vl4093                         up             up                 MLAG_PEER_L3_PEERING
Vl4094                         up             up                 MLAG_PEER
Vx1                            up             up                 avd-leaf1b_VTEP
```
## show ip bgp summary vrf all

```
BGP summary information for VRF default
Router identifier 192.168.255.14, local AS number 65101
Neighbor Status Codes: m - Under maintenance
  Description              Neighbor      V AS           MsgRcvd   MsgSent  InQ OutQ  Up/Down State   PfxRcd PfxAcc
  avd-leaf1a               172.31.253.22 4 65101            259       264    0    0 03:27:46 Estab   23     23
  avd-spine1_Ethernet2     172.31.255.44 4 65001            261       255    0    0 03:27:41 Estab   19     19
  avd-spine2_Ethernet2     172.31.255.46 4 65001            260       260    0    0 03:27:41 Estab   19     19

BGP summary information for VRF pure_type5
Router identifier 192.168.255.14, local AS number 65101
Neighbor Status Codes: m - Under maintenance
  Description              Neighbor      V AS           MsgRcvd   MsgSent  InQ OutQ  Up/Down State   PfxRcd PfxAcc
  avd-leaf1a               172.31.253.22 4 65101            255       254    0    0 03:27:37 Estab   7      7

BGP summary information for VRF tenant_a_project01
Router identifier 192.168.255.14, local AS number 65101
Neighbor Status Codes: m - Under maintenance
  Description              Neighbor      V AS           MsgRcvd   MsgSent  InQ OutQ  Up/Down State   PfxRcd PfxAcc
  avd-leaf1a               172.31.253.22 4 65101            265       265    0    0 03:27:37 Estab   10     10
```
## show ip interface brief

```
Address
Interface       IP Address            Status     Protocol         MTU   Owner  
--------------- --------------------- ---------- ------------ --------- -------
Ethernet1       172.31.255.45/31      up         up              1500          
Ethernet2       172.31.255.47/31      up         up              1500          
Loopback0       192.168.255.14/32     up         up             65535          
Loopback1       192.168.254.13/32     up         up             65535          
Management0     10.73.252.12/24       up         up              1500          
Vlan110         10.1.10.254/24        up         up              1500          
Vlan111         10.1.11.254/24        up         up              1500          
Vlan112         10.1.12.254/24        up         up              1500          
Vlan131         10.1.31.254/24        up         up              1500          
Vlan1198        unassigned            up         up              9164          
Vlan1199        unassigned            up         up              9164          
Vlan3010        172.31.253.23/31      up         up              1500          
Vlan3012        172.31.253.23/31      up         up              1500          
Vlan4093        172.31.253.23/31      up         up              1500          
Vlan4094        172.31.253.21/31      up         up              1500
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

 C        172.31.253.20/31 is directly connected, Vlan4094
 C        172.31.253.22/31 is directly connected, Vlan4093
 C        172.31.255.44/31 is directly connected, Ethernet1
 C        172.31.255.46/31 is directly connected, Ethernet2
 B E      192.168.0.26/32 [20/0] via 172.31.255.44, Ethernet1
 B E      192.168.0.27/32 [20/0] via 172.31.255.46, Ethernet2
 B E      192.168.1.1/32 [20/0] via 172.31.255.44, Ethernet1
 B E      192.168.1.2/32 [20/0] via 172.31.255.46, Ethernet2
 B E      192.168.252.22/32 [20/0] via 172.31.255.44, Ethernet1
                                   via 172.31.255.46, Ethernet2
 B E      192.168.252.23/32 [20/0] via 172.31.255.44, Ethernet1
                                   via 172.31.255.46, Ethernet2
 B E      192.168.253.22/32 [20/0] via 172.31.255.44, Ethernet1
                                   via 172.31.255.46, Ethernet2
 B E      192.168.253.23/32 [20/0] via 172.31.255.44, Ethernet1
                                   via 172.31.255.46, Ethernet2
 C        192.168.254.13/32 is directly connected, Loopback1
 B E      192.168.254.15/32 [20/0] via 172.31.255.44, Ethernet1
                                   via 172.31.255.46, Ethernet2
 B E      192.168.254.17/32 [20/0] via 172.31.255.44, Ethernet1
                                   via 172.31.255.46, Ethernet2
 B E      192.168.254.18/32 [20/0] via 172.31.255.44, Ethernet1
                                   via 172.31.255.46, Ethernet2
 B E      192.168.254.19/32 [20/0] via 172.31.255.44, Ethernet1
                                   via 172.31.255.46, Ethernet2
 B E      192.168.254.21/32 [20/0] via 172.31.255.44, Ethernet1
                                   via 172.31.255.46, Ethernet2
 B I      192.168.255.13/32 [200/0] via 172.31.253.22, Vlan4093
 C        192.168.255.14/32 is directly connected, Loopback0
 B E      192.168.255.15/32 [20/0] via 172.31.255.44, Ethernet1
                                   via 172.31.255.46, Ethernet2
 B E      192.168.255.16/32 [20/0] via 172.31.255.44, Ethernet1
                                   via 172.31.255.46, Ethernet2
 B E      192.168.255.17/32 [20/0] via 172.31.255.44, Ethernet1
                                   via 172.31.255.46, Ethernet2
 B E      192.168.255.18/32 [20/0] via 172.31.255.44, Ethernet1
                                   via 172.31.255.46, Ethernet2
 B E      192.168.255.19/32 [20/0] via 172.31.255.44, Ethernet1
                                   via 172.31.255.46, Ethernet2
 B E      192.168.255.20/32 [20/0] via 172.31.255.44, Ethernet1
                                   via 172.31.255.46, Ethernet2
 B E      192.168.255.21/32 [20/0] via 172.31.255.44, Ethernet1
                                   via 172.31.255.46, Ethernet2
 B E      192.168.255.22/32 [20/0] via 172.31.255.44, Ethernet1
                                   via 172.31.255.46, Ethernet2


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

VRF: pure_type5
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

 C        10.1.31.0/24 is directly connected, Vlan131
 B E      10.1.32.0/24 [20/0] via VTEP 192.168.254.15 VNI 13 router-mac 02:1c:73:6d:9c:01 local-interface Vxlan1
 B E      10.3.1.0/24 [20/0] via VTEP 192.168.254.21 VNI 13 router-mac 02:1c:73:75:ed:7d local-interface Vxlan1
 B E      10.3.2.0/24 [20/0] via VTEP 192.168.254.21 VNI 13 router-mac 02:1c:73:75:ed:7d local-interface Vxlan1
 C        172.31.253.22/31 is directly connected, Vlan3012
 B E      172.31.253.26/31 [20/0] via VTEP 192.168.254.15 VNI 13 router-mac 02:1c:73:6d:9c:01 local-interface Vxlan1
 B E      172.31.253.38/31 [20/0] via VTEP 192.168.254.21 VNI 13 router-mac 02:1c:73:75:ed:7d local-interface Vxlan1


VRF: tenant_a_project01
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

 B E      10.1.10.3/32 [20/0] via VTEP 192.168.254.17 VNI 11 router-mac 00:1c:73:70:81:be local-interface Vxlan1
                              via VTEP 192.168.254.18 VNI 11 router-mac 00:1c:73:2a:2e:9d local-interface Vxlan1
 C        10.1.10.0/24 is directly connected, Vlan110
 C        10.1.11.0/24 is directly connected, Vlan111
 B E      10.1.12.2/32 [20/0] via VTEP 192.168.254.15 VNI 11 router-mac 02:1c:73:6d:9c:01 local-interface Vxlan1
 C        10.1.12.0/24 is directly connected, Vlan112
 B E      10.1.13.0/24 [20/0] via VTEP 192.168.254.17 VNI 11 router-mac 00:1c:73:70:81:be local-interface Vxlan1
                              via VTEP 192.168.254.18 VNI 11 router-mac 00:1c:73:2a:2e:9d local-interface Vxlan1
 C        172.31.253.22/31 is directly connected, Vlan3010
 B E      172.31.253.26/31 [20/0] via VTEP 192.168.254.15 VNI 11 router-mac 02:1c:73:6d:9c:01 local-interface Vxlan1
 B E      172.31.253.34/31 [20/0] via VTEP 192.168.254.19 VNI 11 router-mac 02:1c:73:17:76:6b local-interface Vxlan1
 B E      172.31.253.38/31 [20/0] via VTEP 192.168.254.21 VNI 11 router-mac 02:1c:73:75:ed:7d local-interface Vxlan1
```
## show lldp neighbors

```
Last table change time   : 3:01:16 ago
Number of table inserts  : 22
Number of table deletes  : 1
Number of table drops    : 0
Number of table age-outs : 1

Port          Neighbor Device ID       Neighbor Port ID    TTL
---------- ------------------------ ---------------------- ---
Et1           avd-spine1               Ethernet2           120
Et2           avd-spine2               Ethernet2           120
Et5           avd-agg01                Ethernet2           120
Et7           avd-leaf1a               Ethernet7           120
Et8           avd-leaf1a               Ethernet8           120
Ma0           srv-pod01                Management0         120
Ma0           avd-leaf1a               Management0         120
Ma0           srv-pod02                Management0         120
Ma0           avd-rs01                 Management0         120
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
Ma0           avd-leaf3a               Management0         120
```
## show mac address-table

```
Mac Address Table
------------------------------------------------------------------

Vlan    Mac Address       Type        Ports      Moves   Last Move
----    -----------       ----        -----      -----   ---------
 110    001c.730e.779e    STATIC      Po7
 110    001c.73a4.f92c    DYNAMIC     Vx1        1       0:16:21 ago
 111    001c.730e.779e    STATIC      Po7
 112    001c.730e.779e    STATIC      Po7
 112    001c.7339.f7ae    DYNAMIC     Vx1        1       0:05:58 ago
 131    001c.730e.779e    STATIC      Po7
1198    001c.730e.779e    STATIC      Po7
1198    021c.736d.9c01    DYNAMIC     Vx1        1       3:27:57 ago
1198    021c.7375.ed7d    DYNAMIC     Vx1        1       3:28:05 ago
1199    001c.730e.779e    STATIC      Po7
1199    001c.732a.2e9d    DYNAMIC     Vx1        1       3:28:05 ago
1199    001c.7370.81be    DYNAMIC     Vx1        1       3:28:05 ago
1199    021c.7317.766b    DYNAMIC     Vx1        1       3:27:58 ago
1199    021c.736d.9c01    DYNAMIC     Vx1        1       3:27:57 ago
1199    021c.7375.ed7d    DYNAMIC     Vx1        1       3:28:05 ago
3010    001c.730e.779e    STATIC      Po7
3012    001c.730e.779e    STATIC      Po7
4093    001c.730e.779e    STATIC      Po7
4094    001c.730e.779e    STATIC      Po7
Total Mac Addresses for this criterion: 19

          Multicast Mac Address Table
------------------------------------------------------------------

Vlan    Mac Address       Type        Ports
----    -----------       ----        -----
Total Mac Addresses for this criterion: 0
```
## show mlag config-sanity

```
No global configuration inconsistencies found.

No per interface configuration inconsistencies found.
```
## show mlag detail

```
MLAG Configuration:              
domain-id                          :           avd_leaf1
local-interface                    :            Vlan4094
peer-address                       :       172.31.253.20
peer-link                          :       Port-Channel7
peer-config                        :          consistent
                                                       
MLAG Status:                     
state                              :              Active
negotiation status                 :           Connected
peer-link status                   :                  Up
local-int status                   :                  Up
system-id                          :   02:1c:73:0e:77:9e
dual-primary detection             :            Disabled
dual-primary interface errdisabled :               False
                                                       
MLAG Ports:                      
Disabled                           :                   0
Configured                         :                   0
Inactive                           :                   0
Active-partial                     :                   0
Active-full                        :                   1

MLAG Detailed Status:
State                           :           secondary
Peer State                      :             primary
State changes                   :                   2
Last state change time          :         3:28:15 ago
Hardware ready                  :                True
Failover                        :               False
Failover Cause(s)               :             Unknown
Last failover change time       :               never
Secondary from failover         :               False
Peer MAC address                :   00:1c:73:0e:77:9e
Peer MAC routing supported      :               False
Reload delay                    :         300 seconds
Non-MLAG reload delay           :         330 seconds
Ports errdisabled               :               False
Lacp standby                    :               False
Configured heartbeat interval   :             4000 ms
Effective heartbeat interval    :             4000 ms
Heartbeat timeout               :            60000 ms
Last heartbeat timeout          :               never
Heartbeat timeouts since reboot :                   0
UDP heartbeat alive             :                True
Heartbeats sent/received        :           3131/3126
Peer monotonic clock offset     :    0.000701 seconds
Agent should be running         :                True
P2p mount state changes         :                   1
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
Serial number: 2647C2CD83AF292DB7A84CDEF8AD9B7F
Hardware MAC address: 001c.7399.7604
System MAC address: 001c.7399.7604

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
Free memory: 8210864 kB
```
## show vlan

```
VLAN  Name                             Status    Ports
----- -------------------------------- --------- -------------------------------
1     default                          active    
110   pr01-demo                        active    Cpu, Po5, Po7, Vx1
111   pr01-trust                       active    Cpu, Po5, Po7, Vx1
112   pr01-trust                       active    Cpu, Po5, Po7, Vx1
131   vl131_no_vni                     active    Cpu, Po5, Po7
201   b-elan-201                       active    Po5, Po7, Vx1
1198* VLAN1198                         active    Cpu, Po7, Vx1
1199* VLAN1199                         active    Cpu, Po7, Vx1
3010  MLAG_iBGP_tenant_a_project01     active    Cpu, Po7
3012  MLAG_iBGP_pure_type5             active    Cpu, Po7
4093  LEAF_PEER_L3                     active    Cpu, Po7
4094  MLAG_PEER                        active    Cpu, Po7

* indicates a Dynamic VLAN
```
## show vxlan address-table

```
Vxlan Mac Address Table
----------------------------------------------------------------------

VLAN  Mac Address     Type      Prt  VTEP             Moves   Last Move
----  -----------     ----      ---  ----             -----   ---------
 110  001c.73a4.f92c  EVPN      Vx1  192.168.254.17   1       0:16:12 ago
                                     192.168.254.18 
 112  001c.7339.f7ae  EVPN      Vx1  192.168.254.15   1       0:05:49 ago
1198  021c.736d.9c01  EVPN      Vx1  192.168.254.15   1       3:27:48 ago
1198  021c.7375.ed7d  EVPN      Vx1  192.168.254.21   1       3:27:55 ago
1199  001c.732a.2e9d  EVPN      Vx1  192.168.254.18   1       3:27:55 ago
1199  001c.7370.81be  EVPN      Vx1  192.168.254.17   1       3:27:55 ago
1199  021c.7317.766b  EVPN      Vx1  192.168.254.19   1       3:27:48 ago
1199  021c.736d.9c01  EVPN      Vx1  192.168.254.15   1       3:27:48 ago
1199  021c.7375.ed7d  EVPN      Vx1  192.168.254.21   1       3:27:55 ago
Total Remote Mac Addresses for this criterion: 9
```
## show vxlan vni

```
VNI to VLAN Mapping for Vxlan1
VNI         VLAN       Source       Interface           802.1Q Tag
----------- ---------- ------------ ------------------- ----------
10110       110        static       Port-Channel5       110       
                                    Vxlan1              110       
10111       111        static       Port-Channel5       111       
                                    Vxlan1              111       
10112       112        static       Port-Channel5       112       
                                    Vxlan1              112       
20201       201        static       Port-Channel5       201       
                                    Vxlan1              201       

VNI to dynamic VLAN Mapping for Vxlan1
VNI       VLAN       VRF                      Source       
--------- ---------- ------------------------ ------------ 
11        1199       tenant_a_project01       evpn         
13        1198       pure_type5               evpn
```
## show vxlan vtep

```
Remote VTEPS for Vxlan1:

VTEP                 Tunnel Type(s)
-------------------- --------------
192.168.254.15       flood, unicast
192.168.254.17       flood, unicast
192.168.254.18       flood, unicast
192.168.254.19       flood, unicast
192.168.254.21       flood, unicast

Total number of remote VTEPS:  5
```
