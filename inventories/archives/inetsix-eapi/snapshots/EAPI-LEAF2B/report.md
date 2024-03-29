# EAPI-LEAF2B Commands Output

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
DstAddr         MyDisc   YourDisc Interface/Transport     Type          LastUp 
----------- ---------- ---------- ------------------- --------- ---------------
192.168.0.2 1019355365 1274088557                  NA multihop  01/05/22 17:03 
192.168.0.3 1169922648  482523720                  NA multihop  01/05/22 17:03 

   LastDown            LastDiag    State
-------------- ------------------- -----
         NA       No Diagnostic       Up
         NA       No Diagnostic       Up
```
## show bgp evpn summary

```
BGP summary information for VRF default
Router identifier 192.168.255.6, local AS number 65102
Neighbor Status Codes: m - Under maintenance
  Description              Neighbor         V AS           MsgRcvd   MsgSent  InQ OutQ  Up/Down State   PfxRcd PfxAcc
  EAPI-RS01                192.168.0.2      4 65000             60        48    0    0 00:13:39 Estab   59     59
  EAPI-RS02                192.168.0.3      4 65000             57        47    0    0 00:13:42 Estab   59     59
```
## show bgp evpn

```
BGP routing table information for VRF default
Router identifier 192.168.255.6, local AS number 65102
Route status codes: s - suppressed, * - valid, > - active, E - ECMP head, e - ECMP
                    S - Stale, c - Contributing to ECMP, b - backup
                    % - Pending BGP convergence
Origin codes: i - IGP, e - EGP, ? - incomplete
AS Path Attributes: Or-ID - Originator ID, C-LST - Cluster List, LL Nexthop - Link Local Nexthop

          Network                Next Hop              Metric  LocPref Weight  Path
 * >Ec   RD: 192.168.255.3:11 imet 10110 192.168.254.3
                                 192.168.254.3         -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.3:11 imet 10110 192.168.254.3
                                 192.168.254.3         -       100     0       65000 65101 i
 * >Ec   RD: 192.168.255.4:11 imet 10110 192.168.254.3
                                 192.168.254.3         -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.4:11 imet 10110 192.168.254.3
                                 192.168.254.3         -       100     0       65000 65101 i
 * >     RD: 192.168.255.6:11 imet 10110 192.168.254.5
                                 -                     -       -       0       i
 * >Ec   RD: 192.168.255.7:11 imet 10110 192.168.254.7
                                 192.168.254.7         -       100     0       65000 65103 i
 *  ec   RD: 192.168.255.7:11 imet 10110 192.168.254.7
                                 192.168.254.7         -       100     0       65000 65103 i
 * >Ec   RD: 192.168.255.8:11 imet 10110 192.168.254.8
                                 192.168.254.8         -       100     0       65000 65104 i
 *  ec   RD: 192.168.255.8:11 imet 10110 192.168.254.8
                                 192.168.254.8         -       100     0       65000 65104 i
 * >Ec   RD: 192.168.255.9:11 imet 10110 192.168.254.9
                                 192.168.254.9         -       100     0       65000 65105 i
 *  ec   RD: 192.168.255.9:11 imet 10110 192.168.254.9
                                 192.168.254.9         -       100     0       65000 65105 i
 * >Ec   RD: 192.168.255.10:11 imet 10110 192.168.254.9
                                 192.168.254.9         -       100     0       65000 65105 i
 *  ec   RD: 192.168.255.10:11 imet 10110 192.168.254.9
                                 192.168.254.9         -       100     0       65000 65105 i
 * >Ec   RD: 192.168.255.11:11 imet 10110 192.168.254.11
                                 192.168.254.11        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.11:11 imet 10110 192.168.254.11
                                 192.168.254.11        -       100     0       65000 65106 i
 * >Ec   RD: 192.168.255.12:11 imet 10110 192.168.254.11
                                 192.168.254.11        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.12:11 imet 10110 192.168.254.11
                                 192.168.254.11        -       100     0       65000 65106 i
 * >Ec   RD: 192.168.255.3:11 imet 10111 192.168.254.3
                                 192.168.254.3         -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.3:11 imet 10111 192.168.254.3
                                 192.168.254.3         -       100     0       65000 65101 i
 * >Ec   RD: 192.168.255.4:11 imet 10111 192.168.254.3
                                 192.168.254.3         -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.4:11 imet 10111 192.168.254.3
                                 192.168.254.3         -       100     0       65000 65101 i
 * >     RD: 192.168.255.6:11 imet 10111 192.168.254.5
                                 -                     -       -       0       i
 * >Ec   RD: 192.168.255.3:11 imet 10112 192.168.254.3
                                 192.168.254.3         -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.3:11 imet 10112 192.168.254.3
                                 192.168.254.3         -       100     0       65000 65101 i
 * >Ec   RD: 192.168.255.4:11 imet 10112 192.168.254.3
                                 192.168.254.3         -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.4:11 imet 10112 192.168.254.3
                                 192.168.254.3         -       100     0       65000 65101 i
 * >     RD: 192.168.255.6:11 imet 10112 192.168.254.5
                                 -                     -       -       0       i
 * >Ec   RD: 192.168.255.7:11 imet 10113 192.168.254.7
                                 192.168.254.7         -       100     0       65000 65103 i
 *  ec   RD: 192.168.255.7:11 imet 10113 192.168.254.7
                                 192.168.254.7         -       100     0       65000 65103 i
 * >Ec   RD: 192.168.255.8:11 imet 10113 192.168.254.8
                                 192.168.254.8         -       100     0       65000 65104 i
 *  ec   RD: 192.168.255.8:11 imet 10113 192.168.254.8
                                 192.168.254.8         -       100     0       65000 65104 i
 * >Ec   RD: 192.168.255.3:20201 imet 20201 192.168.254.3
                                 192.168.254.3         -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.3:20201 imet 20201 192.168.254.3
                                 192.168.254.3         -       100     0       65000 65101 i
 * >Ec   RD: 192.168.255.4:20201 imet 20201 192.168.254.3
                                 192.168.254.3         -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.4:20201 imet 20201 192.168.254.3
                                 192.168.254.3         -       100     0       65000 65101 i
 * >     RD: 192.168.255.6:20201 imet 20201 192.168.254.5
                                 -                     -       -       0       i
 * >Ec   RD: 192.168.255.7:20201 imet 20201 192.168.254.7
                                 192.168.254.7         -       100     0       65000 65103 i
 *  ec   RD: 192.168.255.7:20201 imet 20201 192.168.254.7
                                 192.168.254.7         -       100     0       65000 65103 i
 * >Ec   RD: 192.168.255.8:20201 imet 20201 192.168.254.8
                                 192.168.254.8         -       100     0       65000 65104 i
 *  ec   RD: 192.168.255.8:20201 imet 20201 192.168.254.8
                                 192.168.254.8         -       100     0       65000 65104 i
 * >Ec   RD: 192.168.255.9:20201 imet 20201 192.168.254.9
                                 192.168.254.9         -       100     0       65000 65105 i
 *  ec   RD: 192.168.255.9:20201 imet 20201 192.168.254.9
                                 192.168.254.9         -       100     0       65000 65105 i
 * >Ec   RD: 192.168.255.10:20201 imet 20201 192.168.254.9
                                 192.168.254.9         -       100     0       65000 65105 i
 *  ec   RD: 192.168.255.10:20201 imet 20201 192.168.254.9
                                 192.168.254.9         -       100     0       65000 65105 i
 * >Ec   RD: 192.168.255.11:20201 imet 20201 192.168.254.11
                                 192.168.254.11        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.11:20201 imet 20201 192.168.254.11
                                 192.168.254.11        -       100     0       65000 65106 i
 * >Ec   RD: 192.168.255.12:20201 imet 20201 192.168.254.11
                                 192.168.254.11        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.12:20201 imet 20201 192.168.254.11
                                 192.168.254.11        -       100     0       65000 65106 i
 * >Ec   RD: 192.168.253.2:13 imet 30301 192.168.252.2
                                 192.168.252.2         -       100     0       65000 65107 i
 *  ec   RD: 192.168.253.2:13 imet 30301 192.168.252.2
                                 192.168.252.2         -       100     0       65000 65107 i
 * >Ec   RD: 192.168.255.11:13 imet 30301 192.168.254.11
                                 192.168.254.11        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.11:13 imet 30301 192.168.254.11
                                 192.168.254.11        -       100     0       65000 65106 i
 * >Ec   RD: 192.168.255.12:13 imet 30301 192.168.254.11
                                 192.168.254.11        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.12:13 imet 30301 192.168.254.11
                                 192.168.254.11        -       100     0       65000 65106 i
 * >Ec   RD: 192.168.253.2:13 imet 30302 192.168.252.2
                                 192.168.252.2         -       100     0       65000 65107 i
 *  ec   RD: 192.168.253.2:13 imet 30302 192.168.252.2
                                 192.168.252.2         -       100     0       65000 65107 i
 * >Ec   RD: 192.168.253.3:13 imet 30302 192.168.252.3
                                 192.168.252.3         -       100     0       65000 65108 i
 *  ec   RD: 192.168.253.3:13 imet 30302 192.168.252.3
                                 192.168.252.3         -       100     0       65000 65108 i
 * >Ec   RD: 192.168.255.11:13 imet 30302 192.168.254.11
                                 192.168.254.11        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.11:13 imet 30302 192.168.254.11
                                 192.168.254.11        -       100     0       65000 65106 i
 * >Ec   RD: 192.168.255.12:13 imet 30302 192.168.254.11
                                 192.168.254.11        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.12:13 imet 30302 192.168.254.11
                                 192.168.254.11        -       100     0       65000 65106 i
 * >Ec   RD: 192.168.255.3:11 ip-prefix 10.1.10.0/24
                                 192.168.254.3         -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.3:11 ip-prefix 10.1.10.0/24
                                 192.168.254.3         -       100     0       65000 65101 i
 * >Ec   RD: 192.168.255.4:11 ip-prefix 10.1.10.0/24
                                 192.168.254.3         -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.4:11 ip-prefix 10.1.10.0/24
                                 192.168.254.3         -       100     0       65000 65101 i
 * >     RD: 192.168.255.6:11 ip-prefix 10.1.10.0/24
                                 -                     -       -       0       i
 *       RD: 192.168.255.6:11 ip-prefix 10.1.10.0/24
                                 -                     -       100     0       ?
 * >Ec   RD: 192.168.255.7:11 ip-prefix 10.1.10.0/24
                                 192.168.254.7         -       100     0       65000 65103 i
 *  ec   RD: 192.168.255.7:11 ip-prefix 10.1.10.0/24
                                 192.168.254.7         -       100     0       65000 65103 i
 * >Ec   RD: 192.168.255.8:11 ip-prefix 10.1.10.0/24
                                 192.168.254.8         -       100     0       65000 65104 i
 *  ec   RD: 192.168.255.8:11 ip-prefix 10.1.10.0/24
                                 192.168.254.8         -       100     0       65000 65104 i
 * >Ec   RD: 192.168.255.9:11 ip-prefix 10.1.10.0/24
                                 192.168.254.9         -       100     0       65000 65105 i
 *  ec   RD: 192.168.255.9:11 ip-prefix 10.1.10.0/24
                                 192.168.254.9         -       100     0       65000 65105 i
 * >Ec   RD: 192.168.255.10:11 ip-prefix 10.1.10.0/24
                                 192.168.254.9         -       100     0       65000 65105 i
 *  ec   RD: 192.168.255.10:11 ip-prefix 10.1.10.0/24
                                 192.168.254.9         -       100     0       65000 65105 i
 * >Ec   RD: 192.168.255.11:11 ip-prefix 10.1.10.0/24
                                 192.168.254.11        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.11:11 ip-prefix 10.1.10.0/24
                                 192.168.254.11        -       100     0       65000 65106 i
 * >Ec   RD: 192.168.255.12:11 ip-prefix 10.1.10.0/24
                                 192.168.254.11        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.12:11 ip-prefix 10.1.10.0/24
                                 192.168.254.11        -       100     0       65000 65106 i
 * >Ec   RD: 192.168.255.3:11 ip-prefix 10.1.11.0/24
                                 192.168.254.3         -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.3:11 ip-prefix 10.1.11.0/24
                                 192.168.254.3         -       100     0       65000 65101 i
 * >Ec   RD: 192.168.255.4:11 ip-prefix 10.1.11.0/24
                                 192.168.254.3         -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.4:11 ip-prefix 10.1.11.0/24
                                 192.168.254.3         -       100     0       65000 65101 i
 * >     RD: 192.168.255.6:11 ip-prefix 10.1.11.0/24
                                 -                     -       -       0       i
 *       RD: 192.168.255.6:11 ip-prefix 10.1.11.0/24
                                 -                     -       100     0       ?
 * >Ec   RD: 192.168.255.3:11 ip-prefix 10.1.12.0/24
                                 192.168.254.3         -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.3:11 ip-prefix 10.1.12.0/24
                                 192.168.254.3         -       100     0       65000 65101 i
 * >Ec   RD: 192.168.255.4:11 ip-prefix 10.1.12.0/24
                                 192.168.254.3         -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.4:11 ip-prefix 10.1.12.0/24
                                 192.168.254.3         -       100     0       65000 65101 i
 * >     RD: 192.168.255.6:11 ip-prefix 10.1.12.0/24
                                 -                     -       -       0       i
 *       RD: 192.168.255.6:11 ip-prefix 10.1.12.0/24
                                 -                     -       100     0       ?
 * >     RD: 192.168.255.6:11 ip-prefix 10.1.13.0/24
                                 -                     -       100     0       65000 65104 ?
 * >Ec   RD: 192.168.255.7:11 ip-prefix 10.1.13.0/24
                                 192.168.254.7         -       100     0       65000 65103 i
 *  ec   RD: 192.168.255.7:11 ip-prefix 10.1.13.0/24
                                 192.168.254.7         -       100     0       65000 65103 i
 * >Ec   RD: 192.168.255.8:11 ip-prefix 10.1.13.0/24
                                 192.168.254.8         -       100     0       65000 65104 i
 *  ec   RD: 192.168.255.8:11 ip-prefix 10.1.13.0/24
                                 192.168.254.8         -       100     0       65000 65104 i
 * >Ec   RD: 192.168.255.3:13 ip-prefix 10.1.31.0/24
                                 192.168.254.3         -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.3:13 ip-prefix 10.1.31.0/24
                                 192.168.254.3         -       100     0       65000 65101 i
 * >Ec   RD: 192.168.255.4:13 ip-prefix 10.1.31.0/24
                                 192.168.254.3         -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.4:13 ip-prefix 10.1.31.0/24
                                 192.168.254.3         -       100     0       65000 65101 i
 * >     RD: 192.168.255.6:13 ip-prefix 10.1.31.0/24
                                 -                     -       100     0       65000 65101 ?
 * >     RD: 192.168.255.6:13 ip-prefix 10.1.32.0/24
                                 -                     -       -       0       i
 *       RD: 192.168.255.6:13 ip-prefix 10.1.32.0/24
                                 -                     -       100     0       ?
 * >     RD: 192.168.255.6:13 ip-prefix 10.3.1.0/24
                                 -                     -       100     0       65000 65106 ?
 * >Ec   RD: 192.168.255.11:13 ip-prefix 10.3.1.0/24
                                 192.168.254.11        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.11:13 ip-prefix 10.3.1.0/24
                                 192.168.254.11        -       100     0       65000 65106 i
 * >Ec   RD: 192.168.255.12:13 ip-prefix 10.3.1.0/24
                                 192.168.254.11        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.12:13 ip-prefix 10.3.1.0/24
                                 192.168.254.11        -       100     0       65000 65106 i
 * >     RD: 192.168.255.6:13 ip-prefix 10.3.2.0/24
                                 -                     -       100     0       65000 65106 ?
 * >Ec   RD: 192.168.255.11:13 ip-prefix 10.3.2.0/24
                                 192.168.254.11        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.11:13 ip-prefix 10.3.2.0/24
                                 192.168.254.11        -       100     0       65000 65106 i
 * >Ec   RD: 192.168.255.12:13 ip-prefix 10.3.2.0/24
                                 192.168.254.11        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.12:13 ip-prefix 10.3.2.0/24
                                 192.168.254.11        -       100     0       65000 65106 i
 * >Ec   RD: 192.168.255.3:11 ip-prefix 172.31.253.2/31
                                 192.168.254.3         -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.3:11 ip-prefix 172.31.253.2/31
                                 192.168.254.3         -       100     0       65000 65101 i
 * >Ec   RD: 192.168.255.3:13 ip-prefix 172.31.253.2/31
                                 192.168.254.3         -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.3:13 ip-prefix 172.31.253.2/31
                                 192.168.254.3         -       100     0       65000 65101 i
 * >Ec   RD: 192.168.255.4:11 ip-prefix 172.31.253.2/31
                                 192.168.254.3         -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.4:11 ip-prefix 172.31.253.2/31
                                 192.168.254.3         -       100     0       65000 65101 i
 * >Ec   RD: 192.168.255.4:13 ip-prefix 172.31.253.2/31
                                 192.168.254.3         -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.4:13 ip-prefix 172.31.253.2/31
                                 192.168.254.3         -       100     0       65000 65101 i
 * >     RD: 192.168.255.6:11 ip-prefix 172.31.253.2/31
                                 -                     -       100     0       65000 65101 ?
 * >     RD: 192.168.255.6:13 ip-prefix 172.31.253.2/31
                                 -                     -       100     0       65000 65101 ?
 * >     RD: 192.168.255.6:11 ip-prefix 172.31.253.6/31
                                 -                     -       -       0       i
 *       RD: 192.168.255.6:11 ip-prefix 172.31.253.6/31
                                 -                     -       100     0       ?
 * >     RD: 192.168.255.6:13 ip-prefix 172.31.253.6/31
                                 -                     -       -       0       i
 *       RD: 192.168.255.6:13 ip-prefix 172.31.253.6/31
                                 -                     -       100     0       ?
 * >     RD: 192.168.255.6:11 ip-prefix 172.31.253.14/31
                                 -                     -       100     0       65000 65105 ?
 * >Ec   RD: 192.168.255.9:11 ip-prefix 172.31.253.14/31
                                 192.168.254.9         -       100     0       65000 65105 i
 *  ec   RD: 192.168.255.9:11 ip-prefix 172.31.253.14/31
                                 192.168.254.9         -       100     0       65000 65105 i
 * >Ec   RD: 192.168.255.10:11 ip-prefix 172.31.253.14/31
                                 192.168.254.9         -       100     0       65000 65105 i
 *  ec   RD: 192.168.255.10:11 ip-prefix 172.31.253.14/31
                                 192.168.254.9         -       100     0       65000 65105 i
 * >     RD: 192.168.255.6:11 ip-prefix 172.31.253.18/31
                                 -                     -       100     0       65000 65106 ?
 * >     RD: 192.168.255.6:13 ip-prefix 172.31.253.18/31
                                 -                     -       100     0       65000 65106 ?
 * >Ec   RD: 192.168.255.11:11 ip-prefix 172.31.253.18/31
                                 192.168.254.11        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.11:11 ip-prefix 172.31.253.18/31
                                 192.168.254.11        -       100     0       65000 65106 i
 * >Ec   RD: 192.168.255.11:13 ip-prefix 172.31.253.18/31
                                 192.168.254.11        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.11:13 ip-prefix 172.31.253.18/31
                                 192.168.254.11        -       100     0       65000 65106 i
 * >Ec   RD: 192.168.255.12:11 ip-prefix 172.31.253.18/31
                                 192.168.254.11        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.12:11 ip-prefix 172.31.253.18/31
                                 192.168.254.11        -       100     0       65000 65106 i
 * >Ec   RD: 192.168.255.12:13 ip-prefix 172.31.253.18/31
                                 192.168.254.11        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.12:13 ip-prefix 172.31.253.18/31
                                 192.168.254.11        -       100     0       65000 65106 i
```
## show interfaces description

```
Interface                      Status         Protocol           Description
Et1                            up             up                 P2P_LINK_TO_EAPI-SPINE1_Ethernet4
Et2                            up             up                 P2P_LINK_TO_EAPI-SPINE2_Ethernet4
Et3                            up             up                 MLAG_PEER_EAPI-LEAF2A_Ethernet3
Et4                            up             up                 MLAG_PEER_EAPI-LEAF2A_Ethernet4
Et5                            up             up                 EAPI-AGG02_Ethernet2
Et6                            up             up                 
Et7                            up             up                 
Et8                            up             up                 
Lo0                            up             up                 EVPN_Overlay_Peering
Lo1                            up             up                 VTEP_VXLAN_Tunnel_Source
Ma1                            up             up                 oob_management
Po3                            up             up                 MLAG_PEER_EAPI-LEAF2A_Po3
Po5                            up             up                 EAPI-AGG02_Po1
Vl110                          up             up                 PR01-DEMO
Vl111                          up             up                 PR01-TRUST
Vl112                          up             up                 PR01-TRUST
Vl132                          up             up                 vl132_no_vni
Vl1197                         up             up                 
Vl1198                         up             up                 
Vl3010                         up             up                 MLAG_PEER_L3_iBGP: vrf TENANT_A_PROJECT01
Vl3012                         up             up                 MLAG_PEER_L3_iBGP: vrf PURE_TYPE5
Vl4093                         up             up                 MLAG_PEER_L3_PEERING
Vl4094                         up             up                 MLAG_PEER
Vx1                            up             up                 EAPI-LEAF2B_VTEP
```
## show ip bgp summary vrf all

```
BGP summary information for VRF default
Router identifier 192.168.255.6, local AS number 65102
Neighbor Status Codes: m - Under maintenance
  Description              Neighbor         V AS           MsgRcvd   MsgSent  InQ OutQ  Up/Down State   PfxRcd PfxAcc
  EAPI-LEAF2A              172.31.253.6     4 65102             31        31    0    0 00:13:36 Estab   23     23
  EAPI-SPINE1_Ethernet4    172.31.255.12    4 65001             33        28    0    0 00:13:39 Estab   19     19
  EAPI-SPINE2_Ethernet4    172.31.255.14    4 65001             32        27    0    0 00:13:41 Estab   19     19

BGP summary information for VRF PURE_TYPE5
Router identifier 192.168.255.6, local AS number 65102
Neighbor Status Codes: m - Under maintenance
  Neighbor         V AS           MsgRcvd   MsgSent  InQ OutQ  Up/Down State   PfxRcd PfxAcc
  172.31.253.6     4 65102             22        22    0    0 00:13:36 Estab   7      7

BGP summary information for VRF TENANT_A_PROJECT01
Router identifier 192.168.255.6, local AS number 65102
Neighbor Status Codes: m - Under maintenance
  Neighbor         V AS           MsgRcvd   MsgSent  InQ OutQ  Up/Down State   PfxRcd PfxAcc
  172.31.253.6     4 65102             24        24    0    0 00:13:36 Estab   8      8
```
## show ip interface brief

```
Address
Interface       IP Address           Status     Protocol         MTU    Owner  
--------------- -------------------- ---------- ------------ ---------- -------
Ethernet1       172.31.255.13/31     up         up              1500           
Ethernet2       172.31.255.15/31     up         up              1500           
Loopback0       192.168.255.6/32     up         up             65535           
Loopback1       192.168.254.5/32     up         up             65535           
Management1     10.73.254.14/24      up         up              1500           
Vlan110         10.1.10.254/24       up         up              1500           
Vlan111         10.1.11.254/24       up         up              1500           
Vlan112         10.1.12.254/24       up         up              1500           
Vlan132         10.1.32.254/24       up         up              1500           
Vlan1197        unassigned           up         up              9164           
Vlan1198        unassigned           up         up              9164           
Vlan3010        172.31.253.7/31      up         up              1500           
Vlan3012        172.31.253.7/31      up         up              1500           
Vlan4093        172.31.253.7/31      up         up              1500           
Vlan4094        172.31.253.5/31      up         up              1500
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

 C        172.31.253.4/31 is directly connected, Vlan4094
 C        172.31.253.6/31 is directly connected, Vlan4093
 C        172.31.255.12/31 is directly connected, Ethernet1
 C        172.31.255.14/31 is directly connected, Ethernet2
 B E      192.168.0.2/32 [20/0] via 172.31.255.12, Ethernet1
 B E      192.168.0.3/32 [20/0] via 172.31.255.14, Ethernet2
 B E      192.168.1.1/32 [20/0] via 172.31.255.12, Ethernet1
 B E      192.168.1.2/32 [20/0] via 172.31.255.14, Ethernet2
 B E      192.168.252.2/32 [20/0] via 172.31.255.12, Ethernet1
                                  via 172.31.255.14, Ethernet2
 B E      192.168.252.3/32 [20/0] via 172.31.255.12, Ethernet1
                                  via 172.31.255.14, Ethernet2
 B E      192.168.253.2/32 [20/0] via 172.31.255.12, Ethernet1
                                  via 172.31.255.14, Ethernet2
 B E      192.168.253.3/32 [20/0] via 172.31.255.12, Ethernet1
                                  via 172.31.255.14, Ethernet2
 B E      192.168.254.3/32 [20/0] via 172.31.255.12, Ethernet1
                                  via 172.31.255.14, Ethernet2
 C        192.168.254.5/32 is directly connected, Loopback1
 B E      192.168.254.7/32 [20/0] via 172.31.255.12, Ethernet1
                                  via 172.31.255.14, Ethernet2
 B E      192.168.254.8/32 [20/0] via 172.31.255.12, Ethernet1
                                  via 172.31.255.14, Ethernet2
 B E      192.168.254.9/32 [20/0] via 172.31.255.12, Ethernet1
                                  via 172.31.255.14, Ethernet2
 B E      192.168.254.11/32 [20/0] via 172.31.255.12, Ethernet1
                                   via 172.31.255.14, Ethernet2
 B E      192.168.255.3/32 [20/0] via 172.31.255.12, Ethernet1
                                  via 172.31.255.14, Ethernet2
 B E      192.168.255.4/32 [20/0] via 172.31.255.12, Ethernet1
                                  via 172.31.255.14, Ethernet2
 B I      192.168.255.5/32 [200/0] via 172.31.253.6, Vlan4093
 C        192.168.255.6/32 is directly connected, Loopback0
 B E      192.168.255.7/32 [20/0] via 172.31.255.12, Ethernet1
                                  via 172.31.255.14, Ethernet2
 B E      192.168.255.8/32 [20/0] via 172.31.255.12, Ethernet1
                                  via 172.31.255.14, Ethernet2
 B E      192.168.255.9/32 [20/0] via 172.31.255.12, Ethernet1
                                  via 172.31.255.14, Ethernet2
 B E      192.168.255.10/32 [20/0] via 172.31.255.12, Ethernet1
                                   via 172.31.255.14, Ethernet2
 B E      192.168.255.11/32 [20/0] via 172.31.255.12, Ethernet1
                                   via 172.31.255.14, Ethernet2
 B E      192.168.255.12/32 [20/0] via 172.31.255.12, Ethernet1
                                   via 172.31.255.14, Ethernet2


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

VRF: PURE_TYPE5
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

 B E      10.1.31.0/24 [20/0] via VTEP 192.168.254.3 VNI 13 router-mac 0e:1d:c0:f0:bd:d1 local-interface Vxlan1
 C        10.1.32.0/24 is directly connected, Vlan132
 B E      10.3.1.0/24 [20/0] via VTEP 192.168.254.11 VNI 13 router-mac 52:01:00:68:b4:46 local-interface Vxlan1
 B E      10.3.2.0/24 [20/0] via VTEP 192.168.254.11 VNI 13 router-mac 52:01:00:68:b4:46 local-interface Vxlan1
 B E      172.31.253.2/31 [20/0] via VTEP 192.168.254.3 VNI 13 router-mac 0e:1d:c0:f0:bd:d1 local-interface Vxlan1
 C        172.31.253.6/31 is directly connected, Vlan3012
 B E      172.31.253.18/31 [20/0] via VTEP 192.168.254.11 VNI 13 router-mac 52:01:00:68:b4:46 local-interface Vxlan1


VRF: TENANT_A_PROJECT01
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

 C        10.1.10.0/24 is directly connected, Vlan110
 C        10.1.11.0/24 is directly connected, Vlan111
 C        10.1.12.0/24 is directly connected, Vlan112
 B E      10.1.13.0/24 [20/0] via VTEP 192.168.254.8 VNI 11 router-mac 0c:1d:c0:d2:9e:98 local-interface Vxlan1
                              via VTEP 192.168.254.7 VNI 11 router-mac 0c:1d:c0:e4:77:7b local-interface Vxlan1
 B E      172.31.253.2/31 [20/0] via VTEP 192.168.254.3 VNI 11 router-mac 0e:1d:c0:f0:bd:d1 local-interface Vxlan1
 C        172.31.253.6/31 is directly connected, Vlan3010
 B E      172.31.253.14/31 [20/0] via VTEP 192.168.254.9 VNI 11 router-mac 0e:1d:c0:25:65:41 local-interface Vxlan1
 B E      172.31.253.18/31 [20/0] via VTEP 192.168.254.11 VNI 11 router-mac 52:01:00:68:b4:46 local-interface Vxlan1
```
## show lldp neighbors

```
Last table change time   : 0:13:31 ago
Number of table inserts  : 5
Number of table deletes  : 0
Number of table drops    : 0
Number of table age-outs : 0

Port          Neighbor Device ID       Neighbor Port ID    TTL
---------- ------------------------ ---------------------- ---
Et1           EAPI-SPINE1              Ethernet4           120
Et2           EAPI-SPINE2              Ethernet4           120
Et3           EAPI-LEAF2A              Ethernet3           120
Et4           EAPI-LEAF2A              Ethernet4           120
Et5           EAPI-AGG02               Ethernet2           120
```
## show mac address-table

```
Mac Address Table
------------------------------------------------------------------

Vlan    Mac Address       Type        Ports      Moves   Last Move
----    -----------       ----        -----      -----   ---------
 110    0c1d.c0a3.43e0    STATIC      Po3
 111    0c1d.c0a3.43e0    STATIC      Po3
 112    0c1d.c0a3.43e0    STATIC      Po3
 132    0c1d.c0a3.43e0    STATIC      Po3
1197    0c1d.c0a3.43e0    STATIC      Po3
1197    0c1d.c0d2.9e98    DYNAMIC     Vx1        1       0:14:00 ago
1197    0c1d.c0e4.777b    DYNAMIC     Vx1        1       0:13:59 ago
1197    0e1d.c025.6541    DYNAMIC     Vx1        1       0:14:00 ago
1197    0e1d.c0f0.bdd1    DYNAMIC     Vx1        1       0:14:00 ago
1197    5201.0068.b446    DYNAMIC     Vx1        1       0:07:13 ago
1198    0c1d.c0a3.43e0    STATIC      Po3
1198    0e1d.c0f0.bdd1    DYNAMIC     Vx1        1       0:13:59 ago
1198    5201.0068.b446    DYNAMIC     Vx1        1       0:07:13 ago
3010    0c1d.c0a3.43e0    STATIC      Po3
3012    0c1d.c0a3.43e0    STATIC      Po3
4093    0c1d.c0a3.43e0    STATIC      Po3
4094    0c1d.c0a3.43e0    STATIC      Po3
Total Mac Addresses for this criterion: 17

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
domain-id                          :          EAPI_LEAF2
local-interface                    :            Vlan4094
peer-address                       :        172.31.253.4
peer-link                          :       Port-Channel3
peer-config                        :          consistent
                                                       
MLAG Status:                     
state                              :              Active
negotiation status                 :           Connected
peer-link status                   :                  Up
local-int status                   :                  Up
system-id                          :   0e:1d:c0:a3:43:e0
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
Last state change time          :         0:14:21 ago
Hardware ready                  :                True
Failover                        :               False
Failover Cause(s)               :             Unknown
Last failover change time       :               never
Secondary from failover         :               False
Peer MAC address                :   0c:1d:c0:a3:43:e0
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
Heartbeats sent/received        :             227/218
Peer monotonic clock offset     :   -1.685075 seconds
Agent should be running         :                True
P2p mount state changes         :                   1
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
Serial number: C95B443BCD7ED4C7D56A9D2B708BE61B
Hardware MAC address: 0c1d.c0aa.3444
System MAC address: 0c1d.c0aa.3444

Software image version: 4.27.0F
Architecture: i686
Internal build version: 4.27.0F-24305004.4270F
Internal build ID: fed9e33b-669e-42ea-bee6-c7bf3cca1a73
Image format version: 1.0

Uptime: 19 minutes
Total memory: 2006636 kB
Free memory: 1004592 kB
```
## show vlan

```
VLAN  Name                             Status    Ports
----- -------------------------------- --------- -------------------------------
1     default                          active    Et6, Et7, Et8, PEt6, PEt7, PEt8
110   PR01-DEMO                        active    Cpu, Po3, Po5, Vx1
111   PR01-TRUST                       active    Cpu, Po3, Po5, Vx1
112   PR01-TRUST                       active    Cpu, Po3, Po5, Vx1
132   vl132_no_vni                     active    Cpu, Po3, Po5
201   B-ELAN-201                       active    Po3, Po5, Vx1
1197* VLAN1197                         active    Cpu, Po3, Vx1
1198* VLAN1198                         active    Cpu, Po3, Vx1
3010  MLAG_iBGP_TENANT_A_PROJECT01     active    Cpu, Po3
3012  MLAG_iBGP_PURE_TYPE5             active    Cpu, Po3
4093  LEAF_PEER_L3                     active    Cpu, Po3
4094  MLAG_PEER                        active    Cpu, Po3

* indicates a Dynamic VLAN
```
## show vxlan address-table

```
Vxlan Mac Address Table
----------------------------------------------------------------------

VLAN  Mac Address     Type      Prt  VTEP             Moves   Last Move
----  -----------     ----      ---  ----             -----   ---------
1197  0c1d.c0d2.9e98  EVPN      Vx1  192.168.254.8    1       0:13:51 ago
1197  0c1d.c0e4.777b  EVPN      Vx1  192.168.254.7    1       0:13:51 ago
1197  0e1d.c025.6541  EVPN      Vx1  192.168.254.9    1       0:13:51 ago
1197  0e1d.c0f0.bdd1  EVPN      Vx1  192.168.254.3    1       0:13:51 ago
1197  5201.0068.b446  EVPN      Vx1  192.168.254.11   1       0:07:05 ago
1198  0e1d.c0f0.bdd1  EVPN      Vx1  192.168.254.3    1       0:13:51 ago
1198  5201.0068.b446  EVPN      Vx1  192.168.254.11   1       0:07:05 ago
Total Remote Mac Addresses for this criterion: 7
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
11        1197       TENANT_A_PROJECT01       evpn         
13        1198       PURE_TYPE5               evpn
```
## show vxlan vtep

```
Remote VTEPS for Vxlan1:

VTEP                 Tunnel Type(s)
-------------------- --------------
192.168.254.3        flood, unicast
192.168.254.7        flood, unicast
192.168.254.8        flood, unicast
192.168.254.9        flood, unicast
192.168.254.11       flood, unicast

Total number of remote VTEPS:  5
```
