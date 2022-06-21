# avd-leaf3a Commands Output

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
192.168.0.26  598766040 1898005246                  NA multihop 06/21/22 12:34 
192.168.0.27 3746663976  200945400                  NA multihop 06/21/22 12:34 

   LastDown            LastDiag    State
-------------- ------------------- -----
         NA       No Diagnostic       Up
         NA       No Diagnostic       Up
```
## show bgp evpn summary

```
BGP summary information for VRF default
Router identifier 192.168.255.17, local AS number 65103
Neighbor Status Codes: m - Under maintenance
  Description              Neighbor     V AS           MsgRcvd   MsgSent  InQ OutQ  Up/Down State   PfxRcd PfxAcc
  avd-rs01                 192.168.0.26 4 65000            323       296    0    0 03:27:46 Estab   84     84
  avd-rs02                 192.168.0.27 4 65000            330       303    0    0 03:27:46 Estab   84     84
```
## show bgp evpn

```
BGP routing table information for VRF default
Router identifier 192.168.255.17, local AS number 65103
Route status codes: s - suppressed, * - valid, > - active, E - ECMP head, e - ECMP
                    S - Stale, c - Contributing to ECMP, b - backup
                    % - Pending BGP convergence
Origin codes: i - IGP, e - EGP, ? - incomplete
AS Path Attributes: Or-ID - Originator ID, C-LST - Cluster List, LL Nexthop - Link Local Nexthop

          Network                Next Hop              Metric  LocPref Weight  Path
 * >     RD: 192.168.255.17:11 auto-discovery 10110 0000:0000:0303:0202:0101
                                 -                     -       -       0       i
 * >Ec   RD: 192.168.255.18:11 auto-discovery 10110 0000:0000:0303:0202:0101
                                 192.168.254.18        -       100     0       65000 65104 i
 *  ec   RD: 192.168.255.18:11 auto-discovery 10110 0000:0000:0303:0202:0101
                                 192.168.254.18        -       100     0       65000 65104 i
 * >     RD: 192.168.255.17:11 auto-discovery 10113 0000:0000:0303:0202:0101
                                 -                     -       -       0       i
 * >Ec   RD: 192.168.255.18:11 auto-discovery 10113 0000:0000:0303:0202:0101
                                 192.168.254.18        -       100     0       65000 65104 i
 *  ec   RD: 192.168.255.18:11 auto-discovery 10113 0000:0000:0303:0202:0101
                                 192.168.254.18        -       100     0       65000 65104 i
 * >     RD: 192.168.255.17:20201 auto-discovery 20201 0000:0000:0303:0202:0101
                                 -                     -       -       0       i
 * >Ec   RD: 192.168.255.18:20201 auto-discovery 20201 0000:0000:0303:0202:0101
                                 192.168.254.18        -       100     0       65000 65104 i
 *  ec   RD: 192.168.255.18:20201 auto-discovery 20201 0000:0000:0303:0202:0101
                                 192.168.254.18        -       100     0       65000 65104 i
 * >     RD: 192.168.254.17:1 auto-discovery 0000:0000:0303:0202:0101
                                 -                     -       -       0       i
 * >Ec   RD: 192.168.254.18:1 auto-discovery 0000:0000:0303:0202:0101
                                 192.168.254.18        -       100     0       65000 65104 i
 *  ec   RD: 192.168.254.18:1 auto-discovery 0000:0000:0303:0202:0101
                                 192.168.254.18        -       100     0       65000 65104 i
 * >     RD: 192.168.255.17:11 mac-ip 10110 001c.73a4.f92c
                                 -                     -       -       0       i
 * >     RD: 192.168.255.17:11 mac-ip 10110 001c.73a4.f92c 10.1.10.3
                                 -                     -       -       0       i
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
 * >     RD: 192.168.255.17:11 imet 10110 192.168.254.17
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
 * >Ec   RD: 192.168.255.18:11 imet 10113 192.168.254.18
                                 192.168.254.18        -       100     0       65000 65104 i
 *  ec   RD: 192.168.255.18:11 imet 10113 192.168.254.18
                                 192.168.254.18        -       100     0       65000 65104 i
 * >     RD: 192.168.255.17:11 imet 10113 192.168.254.17
                                 -                     -       -       0       i
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
 * >     RD: 192.168.255.17:20201 imet 20201 192.168.254.17
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
 * >     RD: 192.168.254.17:1 ethernet-segment 0000:0000:0303:0202:0101 192.168.254.17
                                 -                     -       -       0       i
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
 * >     RD: 192.168.255.17:11 ip-prefix 10.1.10.0/24
                                 -                     -       -       0       i
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
 * >     RD: 192.168.255.17:11 ip-prefix 10.1.13.0/24
                                 -                     -       -       0       i
 * >Ec   RD: 192.168.255.18:11 ip-prefix 10.1.13.0/24
                                 192.168.254.18        -       100     0       65000 65104 i
 *  ec   RD: 192.168.255.18:11 ip-prefix 10.1.13.0/24
                                 192.168.254.18        -       100     0       65000 65104 i
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
 * >Ec   RD: 192.168.255.19:11 ip-prefix 172.31.253.34/31
                                 192.168.254.19        -       100     0       65000 65105 i
 *  ec   RD: 192.168.255.19:11 ip-prefix 172.31.253.34/31
                                 192.168.254.19        -       100     0       65000 65105 i
 * >Ec   RD: 192.168.255.20:11 ip-prefix 172.31.253.34/31
                                 192.168.254.19        -       100     0       65000 65105 i
 *  ec   RD: 192.168.255.20:11 ip-prefix 172.31.253.34/31
                                 192.168.254.19        -       100     0       65000 65105 i
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
Et1                            up             up                 P2P_LINK_TO_AVD-SPINE1_Ethernet7
Et2                            up             up                 P2P_LINK_TO_AVD-SPINE2_Ethernet7
Et5                            up             up                 srv-pod03_Ethernet1
Et7                            up             up                 
Et8                            up             up                 
Lo0                            up             up                 EVPN_Overlay_Peering
Lo1                            up             up                 VTEP_VXLAN_Tunnel_Source
Ma0                            up             up                 oob_management
Po5                            up             up                 srv-pod03_portchanne1
Vl110                          up             up                 pr01-demo
Vl113                          up             up                 pr01-dmz
Vl1198                         up             up                 
Vl1199                         up             up                 
Vx1                            up             up                 avd-leaf3a_VTEP
```
## show ip bgp summary vrf all

```
BGP summary information for VRF default
Router identifier 192.168.255.17, local AS number 65103
Neighbor Status Codes: m - Under maintenance
  Description              Neighbor      V AS           MsgRcvd   MsgSent  InQ OutQ  Up/Down State   PfxRcd PfxAcc
  avd-spine1_Ethernet7     172.31.255.56 4 65001            265       255    0    0 03:27:45 Estab   20     20
  avd-spine2_Ethernet7     172.31.255.58 4 65001            262       260    0    0 03:27:44 Estab   20     20

BGP summary information for VRF tenant_a_project01
Router identifier 192.168.255.17, local AS number 65103
Neighbor Status Codes: m - Under maintenance
  Neighbor V AS           MsgRcvd   MsgSent  InQ OutQ  Up/Down State   PfxRcd PfxAcc
```
## show ip interface brief

```
Address
Interface       IP Address            Status     Protocol         MTU   Owner  
--------------- --------------------- ---------- ------------ --------- -------
Ethernet1       172.31.255.57/31      up         up              1500          
Ethernet2       172.31.255.59/31      up         up              1500          
Loopback0       192.168.255.17/32     up         up             65535          
Loopback1       192.168.254.17/32     up         up             65535          
Management0     10.73.252.17/24       up         up              1500          
Vlan110         10.1.10.254/24        up         up              1500          
Vlan113         10.1.13.254/24        up         up              1500          
Vlan1198        unassigned            up         up              9164          
Vlan1199        unassigned            up         up              9164
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

 C        172.31.255.56/31 is directly connected, Ethernet1
 C        172.31.255.58/31 is directly connected, Ethernet2
 B E      192.168.0.26/32 [20/0] via 172.31.255.56, Ethernet1
 B E      192.168.0.27/32 [20/0] via 172.31.255.58, Ethernet2
 B E      192.168.1.1/32 [20/0] via 172.31.255.56, Ethernet1
 B E      192.168.1.2/32 [20/0] via 172.31.255.58, Ethernet2
 B E      192.168.252.22/32 [20/0] via 172.31.255.56, Ethernet1
                                   via 172.31.255.58, Ethernet2
 B E      192.168.252.23/32 [20/0] via 172.31.255.56, Ethernet1
                                   via 172.31.255.58, Ethernet2
 B E      192.168.253.22/32 [20/0] via 172.31.255.56, Ethernet1
                                   via 172.31.255.58, Ethernet2
 B E      192.168.253.23/32 [20/0] via 172.31.255.56, Ethernet1
                                   via 172.31.255.58, Ethernet2
 B E      192.168.254.13/32 [20/0] via 172.31.255.56, Ethernet1
                                   via 172.31.255.58, Ethernet2
 B E      192.168.254.15/32 [20/0] via 172.31.255.56, Ethernet1
                                   via 172.31.255.58, Ethernet2
 C        192.168.254.17/32 is directly connected, Loopback1
 B E      192.168.254.18/32 [20/0] via 172.31.255.56, Ethernet1
                                   via 172.31.255.58, Ethernet2
 B E      192.168.254.19/32 [20/0] via 172.31.255.56, Ethernet1
                                   via 172.31.255.58, Ethernet2
 B E      192.168.254.21/32 [20/0] via 172.31.255.56, Ethernet1
                                   via 172.31.255.58, Ethernet2
 B E      192.168.255.13/32 [20/0] via 172.31.255.56, Ethernet1
                                   via 172.31.255.58, Ethernet2
 B E      192.168.255.14/32 [20/0] via 172.31.255.56, Ethernet1
                                   via 172.31.255.58, Ethernet2
 B E      192.168.255.15/32 [20/0] via 172.31.255.56, Ethernet1
                                   via 172.31.255.58, Ethernet2
 B E      192.168.255.16/32 [20/0] via 172.31.255.56, Ethernet1
                                   via 172.31.255.58, Ethernet2
 C        192.168.255.17/32 is directly connected, Loopback0
 B E      192.168.255.18/32 [20/0] via 172.31.255.56, Ethernet1
                                   via 172.31.255.58, Ethernet2
 B E      192.168.255.19/32 [20/0] via 172.31.255.56, Ethernet1
                                   via 172.31.255.58, Ethernet2
 B E      192.168.255.20/32 [20/0] via 172.31.255.56, Ethernet1
                                   via 172.31.255.58, Ethernet2
 B E      192.168.255.21/32 [20/0] via 172.31.255.56, Ethernet1
                                   via 172.31.255.58, Ethernet2
 B E      192.168.255.22/32 [20/0] via 172.31.255.56, Ethernet1
                                   via 172.31.255.58, Ethernet2


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

 C        10.1.10.0/24 is directly connected, Vlan110
 B E      10.1.11.0/24 [20/0] via VTEP 192.168.254.13 VNI 11 router-mac 02:1c:73:0e:77:9e local-interface Vxlan1
                              via VTEP 192.168.254.15 VNI 11 router-mac 02:1c:73:6d:9c:01 local-interface Vxlan1
 B E      10.1.12.2/32 [20/0] via VTEP 192.168.254.15 VNI 11 router-mac 02:1c:73:6d:9c:01 local-interface Vxlan1
 B E      10.1.12.0/24 [20/0] via VTEP 192.168.254.13 VNI 11 router-mac 02:1c:73:0e:77:9e local-interface Vxlan1
                              via VTEP 192.168.254.15 VNI 11 router-mac 02:1c:73:6d:9c:01 local-interface Vxlan1
 C        10.1.13.0/24 is directly connected, Vlan113
 B E      172.31.253.22/31 [20/0] via VTEP 192.168.254.13 VNI 11 router-mac 02:1c:73:0e:77:9e local-interface Vxlan1
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
Et1           avd-spine1               Ethernet7           120
Et2           avd-spine2               Ethernet7           120
Et5           srv-pod03                Ethernet1           120
Et7           avd-leaf4a               Ethernet7           120
Et8           avd-leaf4a               Ethernet8           120
Ma0           avd-cl01b                Management0         120
Ma0           avd-agg02                Management0         120
Ma0           srv-pod03                Management0         120
Ma0           srv-pod01                Management0         120
Ma0           avd-agg01                Management0         120
Ma0           srv-pod02                Management0         120
Ma0           avd-l2leaf01             Management0         120
Ma0           avd-rs01                 Management0         120
Ma0           avd-spine2               Management0         120
Ma0           avd-leaf1a               Management0         120
Ma0           avd-leaf4a               Management0         120
Ma0           avd-rs02                 Management0         120
Ma0           avd-l2leaf02             Management0         120
Ma0           avd-cl01a                Management0         120
Ma0           avd-spine1               Management0         120
Ma0           avd-bl01a                Management0         120
```
## show mac address-table

```
Mac Address Table
------------------------------------------------------------------

Vlan    Mac Address       Type        Ports      Moves   Last Move
----    -----------       ----        -----      -----   ---------
 110    001c.73a4.f92c    DYNAMIC     Po5        1       0:16:21 ago
1198    021c.730e.779e    DYNAMIC     Vx1        1       3:28:05 ago
1198    021c.736d.9c01    DYNAMIC     Vx1        1       3:27:56 ago
1198    021c.7375.ed7d    DYNAMIC     Vx1        1       3:28:09 ago
1199    001c.732a.2e9d    DYNAMIC     Vx1        1       3:28:09 ago
1199    021c.730e.779e    DYNAMIC     Vx1        1       3:28:05 ago
1199    021c.7317.766b    DYNAMIC     Vx1        1       3:27:57 ago
1199    021c.736d.9c01    DYNAMIC     Vx1        1       3:27:56 ago
1199    021c.7375.ed7d    DYNAMIC     Vx1        1       3:28:09 ago
Total Mac Addresses for this criterion: 9

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
Serial number: 85CD01069848D332216CF4A43C8B0664
Hardware MAC address: 001c.7370.81be
System MAC address: 001c.7370.81be

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
Free memory: 8189136 kB
```
## show vlan

```
VLAN  Name                             Status    Ports
----- -------------------------------- --------- -------------------------------
1     default                          active    Et7, Et8, Po5
110   pr01-demo                        active    Cpu, Po5, Vx1
113   pr01-dmz                         active    Cpu, Po5, Vx1
201   b-elan-201                       active    Po5, Vx1
1198* VLAN1198                         active    Cpu, Vx1
1199* VLAN1199                         active    Cpu, Vx1

* indicates a Dynamic VLAN
```
## show vxlan address-table

```
Vxlan Mac Address Table
----------------------------------------------------------------------

VLAN  Mac Address     Type      Prt  VTEP             Moves   Last Move
----  -----------     ----      ---  ----             -----   ---------
1198  021c.730e.779e  EVPN      Vx1  192.168.254.13   1       3:27:55 ago
1198  021c.736d.9c01  EVPN      Vx1  192.168.254.15   1       3:27:47 ago
1198  021c.7375.ed7d  EVPN      Vx1  192.168.254.21   1       3:27:59 ago
1199  001c.732a.2e9d  EVPN      Vx1  192.168.254.18   1       3:27:59 ago
1199  021c.730e.779e  EVPN      Vx1  192.168.254.13   1       3:27:55 ago
1199  021c.7317.766b  EVPN      Vx1  192.168.254.19   1       3:27:47 ago
1199  021c.736d.9c01  EVPN      Vx1  192.168.254.15   1       3:27:47 ago
1199  021c.7375.ed7d  EVPN      Vx1  192.168.254.21   1       3:27:59 ago
Total Remote Mac Addresses for this criterion: 8
```
## show vxlan vni

```
VNI to VLAN Mapping for Vxlan1
VNI         VLAN       Source       Interface           802.1Q Tag
----------- ---------- ------------ ------------------- ----------
10110       110        static       Port-Channel5       110       
                                    Vxlan1              110       
10113       113        static       Port-Channel5       113       
                                    Vxlan1              113       
20201       201        static       Port-Channel5       201       
                                    Vxlan1              201       

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
192.168.254.13       flood, unicast
192.168.254.15       flood, unicast
192.168.254.18       flood, unicast
192.168.254.19       flood, unicast
192.168.254.21       flood, unicast

Total number of remote VTEPS:  5
```
