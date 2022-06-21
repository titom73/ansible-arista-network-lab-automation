# avd-bl01b Commands Output

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
192.168.0.26 2163832763  493093907                  NA multihop 06/21/22 12:34 
192.168.0.27 3169440089 1772683152                  NA multihop 06/21/22 12:34 

   LastDown            LastDiag    State
-------------- ------------------- -----
         NA       No Diagnostic       Up
         NA       No Diagnostic       Up
```
## show bgp evpn summary

```
BGP summary information for VRF default
Router identifier 192.168.255.20, local AS number 65105
Neighbor Status Codes: m - Under maintenance
  Description              Neighbor     V AS           MsgRcvd   MsgSent  InQ OutQ  Up/Down State   PfxRcd PfxAcc
  avd-rs01                 192.168.0.26 4 65000            326       302    0    0 03:27:35 Estab   88     88
  avd-rs02                 192.168.0.27 4 65000            321       327    0    0 03:27:34 Estab   88     88
```
## show bgp evpn

```
BGP routing table information for VRF default
Router identifier 192.168.255.20, local AS number 65105
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
 * >Ec   RD: 192.168.255.13:11 imet 10110 192.168.254.13
                                 192.168.254.13        -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.13:11 imet 10110 192.168.254.13
                                 192.168.254.13        -       100     0       65000 65101 i
 * >Ec   RD: 192.168.255.14:11 imet 10110 192.168.254.13
                                 192.168.254.13        -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.14:11 imet 10110 192.168.254.13
                                 192.168.254.13        -       100     0       65000 65101 i
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
 * >Ec   RD: 192.168.255.21:11 imet 10110 192.168.254.21
                                 192.168.254.21        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.21:11 imet 10110 192.168.254.21
                                 192.168.254.21        -       100     0       65000 65106 i
 * >Ec   RD: 192.168.255.22:11 imet 10110 192.168.254.21
                                 192.168.254.21        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.22:11 imet 10110 192.168.254.21
                                 192.168.254.21        -       100     0       65000 65106 i
 * >     RD: 192.168.255.20:11 imet 10110 192.168.254.19
                                 -                     -       -       0       i
 * >Ec   RD: 192.168.255.13:11 imet 10111 192.168.254.13
                                 192.168.254.13        -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.13:11 imet 10111 192.168.254.13
                                 192.168.254.13        -       100     0       65000 65101 i
 * >Ec   RD: 192.168.255.14:11 imet 10111 192.168.254.13
                                 192.168.254.13        -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.14:11 imet 10111 192.168.254.13
                                 192.168.254.13        -       100     0       65000 65101 i
 * >Ec   RD: 192.168.255.15:11 imet 10111 192.168.254.15
                                 192.168.254.15        -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.15:11 imet 10111 192.168.254.15
                                 192.168.254.15        -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.16:11 imet 10111 192.168.254.15
                                 192.168.254.15        -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.16:11 imet 10111 192.168.254.15
                                 192.168.254.15        -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.13:11 imet 10112 192.168.254.13
                                 192.168.254.13        -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.13:11 imet 10112 192.168.254.13
                                 192.168.254.13        -       100     0       65000 65101 i
 * >Ec   RD: 192.168.255.14:11 imet 10112 192.168.254.13
                                 192.168.254.13        -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.14:11 imet 10112 192.168.254.13
                                 192.168.254.13        -       100     0       65000 65101 i
 * >Ec   RD: 192.168.255.15:11 imet 10112 192.168.254.15
                                 192.168.254.15        -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.15:11 imet 10112 192.168.254.15
                                 192.168.254.15        -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.16:11 imet 10112 192.168.254.15
                                 192.168.254.15        -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.16:11 imet 10112 192.168.254.15
                                 192.168.254.15        -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.17:11 imet 10113 192.168.254.17
                                 192.168.254.17        -       100     0       65000 65103 i
 *  ec   RD: 192.168.255.17:11 imet 10113 192.168.254.17
                                 192.168.254.17        -       100     0       65000 65103 i
 * >Ec   RD: 192.168.255.18:11 imet 10113 192.168.254.18
                                 192.168.254.18        -       100     0       65000 65104 i
 *  ec   RD: 192.168.255.18:11 imet 10113 192.168.254.18
                                 192.168.254.18        -       100     0       65000 65104 i
 * >Ec   RD: 192.168.255.13:20201 imet 20201 192.168.254.13
                                 192.168.254.13        -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.13:20201 imet 20201 192.168.254.13
                                 192.168.254.13        -       100     0       65000 65101 i
 * >Ec   RD: 192.168.255.14:20201 imet 20201 192.168.254.13
                                 192.168.254.13        -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.14:20201 imet 20201 192.168.254.13
                                 192.168.254.13        -       100     0       65000 65101 i
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
 * >Ec   RD: 192.168.255.21:20201 imet 20201 192.168.254.21
                                 192.168.254.21        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.21:20201 imet 20201 192.168.254.21
                                 192.168.254.21        -       100     0       65000 65106 i
 * >Ec   RD: 192.168.255.22:20201 imet 20201 192.168.254.21
                                 192.168.254.21        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.22:20201 imet 20201 192.168.254.21
                                 192.168.254.21        -       100     0       65000 65106 i
 * >     RD: 192.168.255.20:20201 imet 20201 192.168.254.19
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
 * >Ec   RD: 192.168.255.13:11 ip-prefix 10.1.10.0/24
                                 192.168.254.13        -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.13:11 ip-prefix 10.1.10.0/24
                                 192.168.254.13        -       100     0       65000 65101 i
 * >Ec   RD: 192.168.255.14:11 ip-prefix 10.1.10.0/24
                                 192.168.254.13        -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.14:11 ip-prefix 10.1.10.0/24
                                 192.168.254.13        -       100     0       65000 65101 i
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
 * >     RD: 192.168.255.20:11 ip-prefix 10.1.10.0/24
                                 -                     -       -       0       i
 *       RD: 192.168.255.20:11 ip-prefix 10.1.10.0/24
                                 -                     -       100     0       ?
 * >Ec   RD: 192.168.255.21:11 ip-prefix 10.1.10.0/24
                                 192.168.254.21        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.21:11 ip-prefix 10.1.10.0/24
                                 192.168.254.21        -       100     0       65000 65106 i
 * >Ec   RD: 192.168.255.22:11 ip-prefix 10.1.10.0/24
                                 192.168.254.21        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.22:11 ip-prefix 10.1.10.0/24
                                 192.168.254.21        -       100     0       65000 65106 i
 * >     RD: 192.168.255.20:11 ip-prefix 10.1.10.3/32
                                 -                     -       100     0       65000 65104 ?
 * >Ec   RD: 192.168.255.13:11 ip-prefix 10.1.11.0/24
                                 192.168.254.13        -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.13:11 ip-prefix 10.1.11.0/24
                                 192.168.254.13        -       100     0       65000 65101 i
 * >Ec   RD: 192.168.255.14:11 ip-prefix 10.1.11.0/24
                                 192.168.254.13        -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.14:11 ip-prefix 10.1.11.0/24
                                 192.168.254.13        -       100     0       65000 65101 i
 * >Ec   RD: 192.168.255.15:11 ip-prefix 10.1.11.0/24
                                 192.168.254.15        -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.15:11 ip-prefix 10.1.11.0/24
                                 192.168.254.15        -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.16:11 ip-prefix 10.1.11.0/24
                                 192.168.254.15        -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.16:11 ip-prefix 10.1.11.0/24
                                 192.168.254.15        -       100     0       65000 65102 i
 * >     RD: 192.168.255.20:11 ip-prefix 10.1.11.0/24
                                 -                     -       100     0       65000 65101 ?
 * >Ec   RD: 192.168.255.13:11 ip-prefix 10.1.12.0/24
                                 192.168.254.13        -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.13:11 ip-prefix 10.1.12.0/24
                                 192.168.254.13        -       100     0       65000 65101 i
 * >Ec   RD: 192.168.255.14:11 ip-prefix 10.1.12.0/24
                                 192.168.254.13        -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.14:11 ip-prefix 10.1.12.0/24
                                 192.168.254.13        -       100     0       65000 65101 i
 * >Ec   RD: 192.168.255.15:11 ip-prefix 10.1.12.0/24
                                 192.168.254.15        -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.15:11 ip-prefix 10.1.12.0/24
                                 192.168.254.15        -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.16:11 ip-prefix 10.1.12.0/24
                                 192.168.254.15        -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.16:11 ip-prefix 10.1.12.0/24
                                 192.168.254.15        -       100     0       65000 65102 i
 * >     RD: 192.168.255.20:11 ip-prefix 10.1.12.0/24
                                 -                     -       100     0       65000 65101 ?
 * >     RD: 192.168.255.20:11 ip-prefix 10.1.12.2/32
                                 -                     -       100     0       65000 65102 ?
 * >Ec   RD: 192.168.255.17:11 ip-prefix 10.1.13.0/24
                                 192.168.254.17        -       100     0       65000 65103 i
 *  ec   RD: 192.168.255.17:11 ip-prefix 10.1.13.0/24
                                 192.168.254.17        -       100     0       65000 65103 i
 * >Ec   RD: 192.168.255.18:11 ip-prefix 10.1.13.0/24
                                 192.168.254.18        -       100     0       65000 65104 i
 *  ec   RD: 192.168.255.18:11 ip-prefix 10.1.13.0/24
                                 192.168.254.18        -       100     0       65000 65104 i
 * >     RD: 192.168.255.20:11 ip-prefix 10.1.13.0/24
                                 -                     -       100     0       65000 65103 ?
 * >Ec   RD: 192.168.255.13:13 ip-prefix 10.1.31.0/24
                                 192.168.254.13        -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.13:13 ip-prefix 10.1.31.0/24
                                 192.168.254.13        -       100     0       65000 65101 i
 * >Ec   RD: 192.168.255.14:13 ip-prefix 10.1.31.0/24
                                 192.168.254.13        -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.14:13 ip-prefix 10.1.31.0/24
                                 192.168.254.13        -       100     0       65000 65101 i
 * >Ec   RD: 192.168.255.15:13 ip-prefix 10.1.32.0/24
                                 192.168.254.15        -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.15:13 ip-prefix 10.1.32.0/24
                                 192.168.254.15        -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.16:13 ip-prefix 10.1.32.0/24
                                 192.168.254.15        -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.16:13 ip-prefix 10.1.32.0/24
                                 192.168.254.15        -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.21:13 ip-prefix 10.3.1.0/24
                                 192.168.254.21        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.21:13 ip-prefix 10.3.1.0/24
                                 192.168.254.21        -       100     0       65000 65106 i
 * >Ec   RD: 192.168.255.22:13 ip-prefix 10.3.1.0/24
                                 192.168.254.21        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.22:13 ip-prefix 10.3.1.0/24
                                 192.168.254.21        -       100     0       65000 65106 i
 * >Ec   RD: 192.168.255.21:13 ip-prefix 10.3.2.0/24
                                 192.168.254.21        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.21:13 ip-prefix 10.3.2.0/24
                                 192.168.254.21        -       100     0       65000 65106 i
 * >Ec   RD: 192.168.255.22:13 ip-prefix 10.3.2.0/24
                                 192.168.254.21        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.22:13 ip-prefix 10.3.2.0/24
                                 192.168.254.21        -       100     0       65000 65106 i
 * >Ec   RD: 192.168.255.13:11 ip-prefix 172.31.253.22/31
                                 192.168.254.13        -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.13:11 ip-prefix 172.31.253.22/31
                                 192.168.254.13        -       100     0       65000 65101 i
 * >Ec   RD: 192.168.255.13:13 ip-prefix 172.31.253.22/31
                                 192.168.254.13        -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.13:13 ip-prefix 172.31.253.22/31
                                 192.168.254.13        -       100     0       65000 65101 i
 * >Ec   RD: 192.168.255.14:11 ip-prefix 172.31.253.22/31
                                 192.168.254.13        -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.14:11 ip-prefix 172.31.253.22/31
                                 192.168.254.13        -       100     0       65000 65101 i
 * >Ec   RD: 192.168.255.14:13 ip-prefix 172.31.253.22/31
                                 192.168.254.13        -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.14:13 ip-prefix 172.31.253.22/31
                                 192.168.254.13        -       100     0       65000 65101 i
 * >     RD: 192.168.255.20:11 ip-prefix 172.31.253.22/31
                                 -                     -       100     0       65000 65101 ?
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
 * >     RD: 192.168.255.20:11 ip-prefix 172.31.253.26/31
                                 -                     -       100     0       65000 65102 ?
 * >     RD: 192.168.255.20:11 ip-prefix 172.31.253.34/31
                                 -                     -       -       0       i
 *       RD: 192.168.255.20:11 ip-prefix 172.31.253.34/31
                                 -                     -       100     0       ?
 * >     RD: 192.168.255.20:11 ip-prefix 172.31.253.38/31
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
Et1                            up             up                 P2P_LINK_TO_AVD-SPINE1_Ethernet6
Et2                            up             up                 P2P_LINK_TO_AVD-SPINE2_Ethernet6
Et7                            up             up                 MLAG_PEER_avd-bl01a_Ethernet7
Et8                            up             up                 MLAG_PEER_avd-bl01a_Ethernet8
Lo0                            up             up                 EVPN_Overlay_Peering
Lo1                            up             up                 VTEP_VXLAN_Tunnel_Source
Ma0                            up             up                 oob_management
Po7                            up             up                 MLAG_PEER_avd-bl01a_Po7
Vl110                          up             up                 pr01-demo
Vl1198                         up             up                 
Vl1199                         up             up                 
Vl3010                         up             up                 MLAG_PEER_L3_iBGP: vrf tenant_a_project01
Vl4093                         up             up                 MLAG_PEER_L3_PEERING
Vl4094                         up             up                 MLAG_PEER
Vx1                            up             up                 avd-bl01b_VTEP
```
## show ip bgp summary vrf all

```
BGP summary information for VRF default
Router identifier 192.168.255.20, local AS number 65105
Neighbor Status Codes: m - Under maintenance
  Description              Neighbor      V AS           MsgRcvd   MsgSent  InQ OutQ  Up/Down State   PfxRcd PfxAcc
  avd-bl01a                172.31.253.34 4 65105            261       261    0    0 03:27:37 Estab   23     23
  avd-spine1_Ethernet6     172.31.255.68 4 65001            262       251    0    0 03:27:33 Estab   19     19
  avd-spine2_Ethernet6     172.31.255.70 4 65001            263       264    0    0 03:27:33 Estab   19     19

BGP summary information for VRF tenant_a_project01
Router identifier 192.168.255.20, local AS number 65105
Neighbor Status Codes: m - Under maintenance
  Description              Neighbor      V AS           MsgRcvd   MsgSent  InQ OutQ  Up/Down State   PfxRcd PfxAcc
  avd-bl01a                172.31.253.34 4 65105            266       265    0    0 03:27:27 Estab   10     10
```
## show ip interface brief

```
Address
Interface       IP Address            Status     Protocol         MTU   Owner  
--------------- --------------------- ---------- ------------ --------- -------
Ethernet1       172.31.255.69/31      up         up              1500          
Ethernet2       172.31.255.71/31      up         up              1500          
Loopback0       192.168.255.20/32     up         up             65535          
Loopback1       192.168.254.19/32     up         up             65535          
Management0     10.73.252.16/24       up         up              1500          
Vlan110         10.1.10.254/24        up         up              1500          
Vlan1198        unassigned            up         up              9164          
Vlan1199        unassigned            up         up              9164          
Vlan3010        172.31.253.35/31      up         up              1500          
Vlan4093        172.31.253.35/31      up         up              1500          
Vlan4094        172.31.253.33/31      up         up              1500
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

 C        172.31.253.32/31 is directly connected, Vlan4094
 C        172.31.253.34/31 is directly connected, Vlan4093
 C        172.31.255.68/31 is directly connected, Ethernet1
 C        172.31.255.70/31 is directly connected, Ethernet2
 B E      192.168.0.26/32 [20/0] via 172.31.255.68, Ethernet1
 B E      192.168.0.27/32 [20/0] via 172.31.255.70, Ethernet2
 B E      192.168.1.1/32 [20/0] via 172.31.255.68, Ethernet1
 B E      192.168.1.2/32 [20/0] via 172.31.255.70, Ethernet2
 B E      192.168.252.22/32 [20/0] via 172.31.255.68, Ethernet1
                                   via 172.31.255.70, Ethernet2
 B E      192.168.252.23/32 [20/0] via 172.31.255.68, Ethernet1
                                   via 172.31.255.70, Ethernet2
 B E      192.168.253.22/32 [20/0] via 172.31.255.68, Ethernet1
                                   via 172.31.255.70, Ethernet2
 B E      192.168.253.23/32 [20/0] via 172.31.255.68, Ethernet1
                                   via 172.31.255.70, Ethernet2
 B E      192.168.254.13/32 [20/0] via 172.31.255.68, Ethernet1
                                   via 172.31.255.70, Ethernet2
 B E      192.168.254.15/32 [20/0] via 172.31.255.68, Ethernet1
                                   via 172.31.255.70, Ethernet2
 B E      192.168.254.17/32 [20/0] via 172.31.255.68, Ethernet1
                                   via 172.31.255.70, Ethernet2
 B E      192.168.254.18/32 [20/0] via 172.31.255.68, Ethernet1
                                   via 172.31.255.70, Ethernet2
 C        192.168.254.19/32 is directly connected, Loopback1
 B E      192.168.254.21/32 [20/0] via 172.31.255.68, Ethernet1
                                   via 172.31.255.70, Ethernet2
 B E      192.168.255.13/32 [20/0] via 172.31.255.68, Ethernet1
                                   via 172.31.255.70, Ethernet2
 B E      192.168.255.14/32 [20/0] via 172.31.255.68, Ethernet1
                                   via 172.31.255.70, Ethernet2
 B E      192.168.255.15/32 [20/0] via 172.31.255.68, Ethernet1
                                   via 172.31.255.70, Ethernet2
 B E      192.168.255.16/32 [20/0] via 172.31.255.68, Ethernet1
                                   via 172.31.255.70, Ethernet2
 B E      192.168.255.17/32 [20/0] via 172.31.255.68, Ethernet1
                                   via 172.31.255.70, Ethernet2
 B E      192.168.255.18/32 [20/0] via 172.31.255.68, Ethernet1
                                   via 172.31.255.70, Ethernet2
 B I      192.168.255.19/32 [200/0] via 172.31.253.34, Vlan4093
 C        192.168.255.20/32 is directly connected, Loopback0
 B E      192.168.255.21/32 [20/0] via 172.31.255.68, Ethernet1
                                   via 172.31.255.70, Ethernet2
 B E      192.168.255.22/32 [20/0] via 172.31.255.68, Ethernet1
                                   via 172.31.255.70, Ethernet2


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

 B E      10.1.10.3/32 [20/0] via VTEP 192.168.254.18 VNI 11 router-mac 00:1c:73:2a:2e:9d local-interface Vxlan1
                              via VTEP 192.168.254.17 VNI 11 router-mac 00:1c:73:70:81:be local-interface Vxlan1
 C        10.1.10.0/24 is directly connected, Vlan110
 B E      10.1.11.0/24 [20/0] via VTEP 192.168.254.13 VNI 11 router-mac 02:1c:73:0e:77:9e local-interface Vxlan1
                              via VTEP 192.168.254.15 VNI 11 router-mac 02:1c:73:6d:9c:01 local-interface Vxlan1
 B E      10.1.12.2/32 [20/0] via VTEP 192.168.254.15 VNI 11 router-mac 02:1c:73:6d:9c:01 local-interface Vxlan1
 B E      10.1.12.0/24 [20/0] via VTEP 192.168.254.13 VNI 11 router-mac 02:1c:73:0e:77:9e local-interface Vxlan1
                              via VTEP 192.168.254.15 VNI 11 router-mac 02:1c:73:6d:9c:01 local-interface Vxlan1
 B E      10.1.13.0/24 [20/0] via VTEP 192.168.254.18 VNI 11 router-mac 00:1c:73:2a:2e:9d local-interface Vxlan1
                              via VTEP 192.168.254.17 VNI 11 router-mac 00:1c:73:70:81:be local-interface Vxlan1
 B E      172.31.253.22/31 [20/0] via VTEP 192.168.254.13 VNI 11 router-mac 02:1c:73:0e:77:9e local-interface Vxlan1
 B E      172.31.253.26/31 [20/0] via VTEP 192.168.254.15 VNI 11 router-mac 02:1c:73:6d:9c:01 local-interface Vxlan1
 C        172.31.253.34/31 is directly connected, Vlan3010
 B E      172.31.253.38/31 [20/0] via VTEP 192.168.254.21 VNI 11 router-mac 02:1c:73:75:ed:7d local-interface Vxlan1
```
## show lldp neighbors

```
Last table change time   : 3:01:17 ago
Number of table inserts  : 21
Number of table deletes  : 1
Number of table drops    : 0
Number of table age-outs : 1

Port          Neighbor Device ID       Neighbor Port ID    TTL
---------- ------------------------ ---------------------- ---
Et1           avd-spine1               Ethernet6           120
Et2           avd-spine2               Ethernet6           120
Et7           avd-bl01a                Ethernet7           120
Et8           avd-bl01a                Ethernet8           120
Ma0           srv-pod03                Management0         120
Ma0           srv-pod01                Management0         120
Ma0           avd-cl01b                Management0         120
Ma0           avd-rs01                 Management0         120
Ma0           avd-leaf1a               Management0         120
Ma0           srv-pod02                Management0         120
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
 110    001c.7317.766b    STATIC      Po7
 110    001c.73a4.f92c    DYNAMIC     Vx1        1       0:16:22 ago
1198    001c.7317.766b    STATIC      Po7
1198    021c.730e.779e    DYNAMIC     Vx1        1       3:27:55 ago
1198    021c.736d.9c01    DYNAMIC     Vx1        1       3:27:55 ago
1198    021c.7375.ed7d    DYNAMIC     Vx1        1       3:27:55 ago
1199    001c.7317.766b    STATIC      Po7
1199    001c.732a.2e9d    DYNAMIC     Vx1        1       3:27:57 ago
1199    001c.7370.81be    DYNAMIC     Vx1        1       3:27:57 ago
1199    021c.730e.779e    DYNAMIC     Vx1        1       3:27:57 ago
1199    021c.736d.9c01    DYNAMIC     Vx1        1       3:27:56 ago
1199    021c.7375.ed7d    DYNAMIC     Vx1        1       3:27:57 ago
3010    001c.7317.766b    STATIC      Po7
4093    001c.7317.766b    STATIC      Po7
4094    001c.7317.766b    STATIC      Po7
Total Mac Addresses for this criterion: 15

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
domain-id                          :            avd_bl01
local-interface                    :            Vlan4094
peer-address                       :       172.31.253.32
peer-link                          :       Port-Channel7
peer-config                        :          consistent
                                                       
MLAG Status:                     
state                              :              Active
negotiation status                 :           Connected
peer-link status                   :                  Up
local-int status                   :                  Up
system-id                          :   02:1c:73:17:76:6b
dual-primary detection             :            Disabled
dual-primary interface errdisabled :               False
                                                       
MLAG Ports:                      
Disabled                           :                   0
Configured                         :                   0
Inactive                           :                   0
Active-partial                     :                   0
Active-full                        :                   0

MLAG Detailed Status:
State                           :           secondary
Peer State                      :             primary
State changes                   :                   2
Last state change time          :         3:28:10 ago
Hardware ready                  :                True
Failover                        :               False
Failover Cause(s)               :             Unknown
Last failover change time       :               never
Secondary from failover         :               False
Peer MAC address                :   00:1c:73:17:76:6b
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
Heartbeats sent/received        :           3128/3125
Peer monotonic clock offset     :    0.000219 seconds
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
Serial number: 604BB59A4572D915A25598115E26451B
Hardware MAC address: 001c.736e.5190
System MAC address: 001c.736e.5190

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
Free memory: 8229332 kB
```
## show vlan

```
VLAN  Name                             Status    Ports
----- -------------------------------- --------- -------------------------------
1     default                          active    
110   pr01-demo                        active    Cpu, Po7, Vx1
201   b-elan-201                       active    Po7, Vx1
1198* VLAN1198                         active    Cpu, Po7, Vx1
1199* VLAN1199                         active    Cpu, Po7, Vx1
3010  MLAG_iBGP_tenant_a_project01     active    Cpu, Po7
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
1198  021c.730e.779e  EVPN      Vx1  192.168.254.13   1       3:27:46 ago
1198  021c.736d.9c01  EVPN      Vx1  192.168.254.15   1       3:27:46 ago
1198  021c.7375.ed7d  EVPN      Vx1  192.168.254.21   1       3:27:46 ago
1199  001c.732a.2e9d  EVPN      Vx1  192.168.254.18   1       3:27:48 ago
1199  001c.7370.81be  EVPN      Vx1  192.168.254.17   1       3:27:48 ago
1199  021c.730e.779e  EVPN      Vx1  192.168.254.13   1       3:27:48 ago
1199  021c.736d.9c01  EVPN      Vx1  192.168.254.15   1       3:27:46 ago
1199  021c.7375.ed7d  EVPN      Vx1  192.168.254.21   1       3:27:48 ago
Total Remote Mac Addresses for this criterion: 9
```
## show vxlan vni

```
VNI to VLAN Mapping for Vxlan1
VNI         VLAN       Source       Interface       802.1Q Tag
----------- ---------- ------------ --------------- ----------
10110       110        static       Vxlan1          110       
20201       201        static       Vxlan1          201       

VNI to dynamic VLAN Mapping for Vxlan1
VNI       VLAN       VRF                      Source       
--------- ---------- ------------------------ ------------ 
11        1199       tenant_a_project01       evpn         
13        1198                                evpn
```
## show vxlan vtep

```
Remote VTEPS for Vxlan1:

VTEP                 Tunnel Type(s)
-------------------- --------------
192.168.254.13       unicast, flood
192.168.254.15       unicast, flood
192.168.254.17       unicast, flood
192.168.254.18       unicast, flood
192.168.254.21       unicast, flood

Total number of remote VTEPS:  5
```
