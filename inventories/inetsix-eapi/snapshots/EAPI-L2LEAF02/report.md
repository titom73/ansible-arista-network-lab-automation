# EAPI-L2LEAF02 Commands Output

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
192.168.0.2 3293828058  770581673                  NA multihop  01/05/22 17:05 
192.168.0.3  363161197 1174676794                  NA multihop  01/05/22 17:05 

   LastDown            LastDiag    State
-------------- ------------------- -----
         NA       No Diagnostic       Up
         NA       No Diagnostic       Up
```
## show bgp evpn summary

```
BGP summary information for VRF default
Router identifier 192.168.253.3, local AS number 65108
Neighbor Status Codes: m - Under maintenance
  Description              Neighbor         V AS           MsgRcvd   MsgSent  InQ OutQ  Up/Down State   PfxRcd PfxAcc
  EAPI-RS01                192.168.0.2      4 65000             54        21    0    0 00:12:07 Estab   78     78
  EAPI-RS02                192.168.0.3      4 65000             55        58    0    0 00:12:07 Estab   78     78
```
## show bgp evpn

```
BGP routing table information for VRF default
Router identifier 192.168.253.3, local AS number 65108
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
 * >Ec   RD: 192.168.255.5:11 imet 10110 192.168.254.5
                                 192.168.254.5         -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.5:11 imet 10110 192.168.254.5
                                 192.168.254.5         -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.6:11 imet 10110 192.168.254.5
                                 192.168.254.5         -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.6:11 imet 10110 192.168.254.5
                                 192.168.254.5         -       100     0       65000 65102 i
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
 * >Ec   RD: 192.168.255.5:11 imet 10111 192.168.254.5
                                 192.168.254.5         -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.5:11 imet 10111 192.168.254.5
                                 192.168.254.5         -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.6:11 imet 10111 192.168.254.5
                                 192.168.254.5         -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.6:11 imet 10111 192.168.254.5
                                 192.168.254.5         -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.3:11 imet 10112 192.168.254.3
                                 192.168.254.3         -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.3:11 imet 10112 192.168.254.3
                                 192.168.254.3         -       100     0       65000 65101 i
 * >Ec   RD: 192.168.255.4:11 imet 10112 192.168.254.3
                                 192.168.254.3         -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.4:11 imet 10112 192.168.254.3
                                 192.168.254.3         -       100     0       65000 65101 i
 * >Ec   RD: 192.168.255.5:11 imet 10112 192.168.254.5
                                 192.168.254.5         -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.5:11 imet 10112 192.168.254.5
                                 192.168.254.5         -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.6:11 imet 10112 192.168.254.5
                                 192.168.254.5         -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.6:11 imet 10112 192.168.254.5
                                 192.168.254.5         -       100     0       65000 65102 i
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
 * >Ec   RD: 192.168.255.5:20201 imet 20201 192.168.254.5
                                 192.168.254.5         -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.5:20201 imet 20201 192.168.254.5
                                 192.168.254.5         -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.6:20201 imet 20201 192.168.254.5
                                 192.168.254.5         -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.6:20201 imet 20201 192.168.254.5
                                 192.168.254.5         -       100     0       65000 65102 i
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
 * >     RD: 192.168.253.3:13 imet 30302 192.168.252.3
                                 -                     -       -       0       i
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
 * >Ec   RD: 192.168.255.5:11 ip-prefix 10.1.10.0/24
                                 192.168.254.5         -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.5:11 ip-prefix 10.1.10.0/24
                                 192.168.254.5         -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.6:11 ip-prefix 10.1.10.0/24
                                 192.168.254.5         -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.6:11 ip-prefix 10.1.10.0/24
                                 192.168.254.5         -       100     0       65000 65102 i
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
 * >Ec   RD: 192.168.255.5:11 ip-prefix 10.1.11.0/24
                                 192.168.254.5         -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.5:11 ip-prefix 10.1.11.0/24
                                 192.168.254.5         -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.6:11 ip-prefix 10.1.11.0/24
                                 192.168.254.5         -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.6:11 ip-prefix 10.1.11.0/24
                                 192.168.254.5         -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.3:11 ip-prefix 10.1.12.0/24
                                 192.168.254.3         -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.3:11 ip-prefix 10.1.12.0/24
                                 192.168.254.3         -       100     0       65000 65101 i
 * >Ec   RD: 192.168.255.4:11 ip-prefix 10.1.12.0/24
                                 192.168.254.3         -       100     0       65000 65101 i
 *  ec   RD: 192.168.255.4:11 ip-prefix 10.1.12.0/24
                                 192.168.254.3         -       100     0       65000 65101 i
 * >Ec   RD: 192.168.255.5:11 ip-prefix 10.1.12.0/24
                                 192.168.254.5         -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.5:11 ip-prefix 10.1.12.0/24
                                 192.168.254.5         -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.6:11 ip-prefix 10.1.12.0/24
                                 192.168.254.5         -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.6:11 ip-prefix 10.1.12.0/24
                                 192.168.254.5         -       100     0       65000 65102 i
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
 * >Ec   RD: 192.168.255.5:13 ip-prefix 10.1.32.0/24
                                 192.168.254.5         -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.5:13 ip-prefix 10.1.32.0/24
                                 192.168.254.5         -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.6:13 ip-prefix 10.1.32.0/24
                                 192.168.254.5         -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.6:13 ip-prefix 10.1.32.0/24
                                 192.168.254.5         -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.11:13 ip-prefix 10.3.1.0/24
                                 192.168.254.11        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.11:13 ip-prefix 10.3.1.0/24
                                 192.168.254.11        -       100     0       65000 65106 i
 * >Ec   RD: 192.168.255.12:13 ip-prefix 10.3.1.0/24
                                 192.168.254.11        -       100     0       65000 65106 i
 *  ec   RD: 192.168.255.12:13 ip-prefix 10.3.1.0/24
                                 192.168.254.11        -       100     0       65000 65106 i
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
 * >Ec   RD: 192.168.255.5:11 ip-prefix 172.31.253.6/31
                                 192.168.254.5         -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.5:11 ip-prefix 172.31.253.6/31
                                 192.168.254.5         -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.5:13 ip-prefix 172.31.253.6/31
                                 192.168.254.5         -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.5:13 ip-prefix 172.31.253.6/31
                                 192.168.254.5         -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.6:11 ip-prefix 172.31.253.6/31
                                 192.168.254.5         -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.6:11 ip-prefix 172.31.253.6/31
                                 192.168.254.5         -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.6:13 ip-prefix 172.31.253.6/31
                                 192.168.254.5         -       100     0       65000 65102 i
 *  ec   RD: 192.168.255.6:13 ip-prefix 172.31.253.6/31
                                 192.168.254.5         -       100     0       65000 65102 i
 * >Ec   RD: 192.168.255.9:11 ip-prefix 172.31.253.14/31
                                 192.168.254.9         -       100     0       65000 65105 i
 *  ec   RD: 192.168.255.9:11 ip-prefix 172.31.253.14/31
                                 192.168.254.9         -       100     0       65000 65105 i
 * >Ec   RD: 192.168.255.10:11 ip-prefix 172.31.253.14/31
                                 192.168.254.9         -       100     0       65000 65105 i
 *  ec   RD: 192.168.255.10:11 ip-prefix 172.31.253.14/31
                                 192.168.254.9         -       100     0       65000 65105 i
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
Et1                            up             up                 P2P_LINK_TO_EAPI-SPINE1_Ethernet12
Et2                            up             up                 P2P_LINK_TO_EAPI-SPINE2_Ethernet12
Et3                            up             up                 
Et4                            up             up                 
Et5                            up             up                 SRV-POD05-24_Eth1
Et6                            up             up                 
Et7                            up             up                 
Et8                            up             up                 
Lo0                            up             up                 EVPN_Overlay_Peering
Lo1                            up             up                 VTEP_VXLAN_Tunnel_Source
Ma1                            up             up                 oob_management
Vl1198                         up             up                 
Vl1199                         up             up                 
Vx1                            up             up                 EAPI-L2LEAF02_VTEP
```
## show ip bgp summary vrf all

```
BGP summary information for VRF default
Router identifier 192.168.253.3, local AS number 65108
Neighbor Status Codes: m - Under maintenance
  Description              Neighbor         V AS           MsgRcvd   MsgSent  InQ OutQ  Up/Down State   PfxRcd PfxAcc
  EAPI-SPINE1_Ethernet12   172.31.251.4     4 65001             31        22    0    0 00:12:08 Estab   20     20
  EAPI-SPINE2_Ethernet12   172.31.251.6     4 65001             31        28    0    0 00:12:07 Estab   20     20
```
## show ip interface brief

```
Address
Interface       IP Address           Status     Protocol         MTU    Owner  
--------------- -------------------- ---------- ------------ ---------- -------
Ethernet1       172.31.251.5/31      up         up              1500           
Ethernet2       172.31.251.7/31      up         up              1500           
Loopback0       192.168.253.3/32     up         up             65535           
Loopback1       192.168.252.3/32     up         up             65535           
Management1     10.73.254.32/24      up         up              1500           
Vlan1198        unassigned           up         up              9164           
Vlan1199        unassigned           up         up              9164
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

 C        172.31.251.4/31 is directly connected, Ethernet1
 C        172.31.251.6/31 is directly connected, Ethernet2
 B E      192.168.0.2/32 [20/0] via 172.31.251.4, Ethernet1
 B E      192.168.0.3/32 [20/0] via 172.31.251.6, Ethernet2
 B E      192.168.1.1/32 [20/0] via 172.31.251.4, Ethernet1
 B E      192.168.1.2/32 [20/0] via 172.31.251.6, Ethernet2
 B E      192.168.252.2/32 [20/0] via 172.31.251.4, Ethernet1
                                  via 172.31.251.6, Ethernet2
 C        192.168.252.3/32 is directly connected, Loopback1
 B E      192.168.253.2/32 [20/0] via 172.31.251.4, Ethernet1
                                  via 172.31.251.6, Ethernet2
 C        192.168.253.3/32 is directly connected, Loopback0
 B E      192.168.254.3/32 [20/0] via 172.31.251.4, Ethernet1
                                  via 172.31.251.6, Ethernet2
 B E      192.168.254.5/32 [20/0] via 172.31.251.4, Ethernet1
                                  via 172.31.251.6, Ethernet2
 B E      192.168.254.7/32 [20/0] via 172.31.251.4, Ethernet1
                                  via 172.31.251.6, Ethernet2
 B E      192.168.254.8/32 [20/0] via 172.31.251.4, Ethernet1
                                  via 172.31.251.6, Ethernet2
 B E      192.168.254.9/32 [20/0] via 172.31.251.4, Ethernet1
                                  via 172.31.251.6, Ethernet2
 B E      192.168.254.11/32 [20/0] via 172.31.251.4, Ethernet1
                                   via 172.31.251.6, Ethernet2
 B E      192.168.255.3/32 [20/0] via 172.31.251.4, Ethernet1
                                  via 172.31.251.6, Ethernet2
 B E      192.168.255.4/32 [20/0] via 172.31.251.4, Ethernet1
                                  via 172.31.251.6, Ethernet2
 B E      192.168.255.5/32 [20/0] via 172.31.251.4, Ethernet1
                                  via 172.31.251.6, Ethernet2
 B E      192.168.255.6/32 [20/0] via 172.31.251.4, Ethernet1
                                  via 172.31.251.6, Ethernet2
 B E      192.168.255.7/32 [20/0] via 172.31.251.4, Ethernet1
                                  via 172.31.251.6, Ethernet2
 B E      192.168.255.8/32 [20/0] via 172.31.251.4, Ethernet1
                                  via 172.31.251.6, Ethernet2
 B E      192.168.255.9/32 [20/0] via 172.31.251.4, Ethernet1
                                  via 172.31.251.6, Ethernet2
 B E      192.168.255.10/32 [20/0] via 172.31.251.4, Ethernet1
                                   via 172.31.251.6, Ethernet2
 B E      192.168.255.11/32 [20/0] via 172.31.251.4, Ethernet1
                                   via 172.31.251.6, Ethernet2
 B E      192.168.255.12/32 [20/0] via 172.31.251.4, Ethernet1
                                   via 172.31.251.6, Ethernet2


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
Last table change time   : 0:12:16 ago
Number of table inserts  : 3
Number of table deletes  : 0
Number of table drops    : 0
Number of table age-outs : 0

Port          Neighbor Device ID       Neighbor Port ID    TTL
---------- ------------------------ ---------------------- ---
Et1           EAPI-SPINE1              Ethernet12          120
Et2           EAPI-SPINE2              Ethernet12          120
Et5           SRV-POD05-24             Ethernet1           120
```
## show mac address-table

```
Mac Address Table
------------------------------------------------------------------

Vlan    Mac Address       Type        Ports      Moves   Last Move
----    -----------       ----        -----      -----   ---------
1198    0c1d.c0d2.9e98    DYNAMIC     Vx1        1       0:12:10 ago
1198    0c1d.c0e4.777b    DYNAMIC     Vx1        1       0:12:10 ago
1198    0e1d.c025.6541    DYNAMIC     Vx1        1       0:12:10 ago
1198    0e1d.c0a3.43e0    DYNAMIC     Vx1        1       0:12:10 ago
1198    0e1d.c0f0.bdd1    DYNAMIC     Vx1        1       0:12:10 ago
1198    5201.0068.b446    DYNAMIC     Vx1        1       0:07:38 ago
1199    0e1d.c0a3.43e0    DYNAMIC     Vx1        1       0:12:09 ago
1199    0e1d.c0f0.bdd1    DYNAMIC     Vx1        1       0:12:10 ago
1199    5201.0068.b446    DYNAMIC     Vx1        1       0:07:38 ago
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
           Config Actual        Speed     Stable
Fan Status  Speed  Speed Uptime Stability Uptime
--- ------ ------ ------ ------ --------- ------
```
## show version

```
Arista vEOS-lab
Hardware version: 
Serial number: B181409FE490443A7A50F5C144FF0585
Hardware MAC address: 5001.001e.cf92
System MAC address: 5001.001e.cf92

Software image version: 4.27.0F
Architecture: i686
Internal build version: 4.27.0F-24305004.4270F
Internal build ID: fed9e33b-669e-42ea-bee6-c7bf3cca1a73
Image format version: 1.0

Uptime: 17 minutes
Total memory: 2006636 kB
Free memory: 1060268 kB
```
## show vlan

```
VLAN  Name                             Status    Ports
----- -------------------------------- --------- -------------------------------
1     default                          active    Et3, Et4, Et5, Et6, Et7, Et8
302   CENTRAL_LAN_02                   active    Et5, Vx1
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
1198  0c1d.c0d2.9e98  EVPN      Vx1  192.168.254.8    1       0:12:07 ago
1198  0c1d.c0e4.777b  EVPN      Vx1  192.168.254.7    1       0:12:08 ago
1198  0e1d.c025.6541  EVPN      Vx1  192.168.254.9    1       0:12:08 ago
1198  0e1d.c0a3.43e0  EVPN      Vx1  192.168.254.5    1       0:12:08 ago
1198  0e1d.c0f0.bdd1  EVPN      Vx1  192.168.254.3    1       0:12:08 ago
1198  5201.0068.b446  EVPN      Vx1  192.168.254.11   1       0:07:35 ago
1199  0e1d.c0a3.43e0  EVPN      Vx1  192.168.254.5    1       0:12:07 ago
1199  0e1d.c0f0.bdd1  EVPN      Vx1  192.168.254.3    1       0:12:08 ago
1199  5201.0068.b446  EVPN      Vx1  192.168.254.11   1       0:07:35 ago
Total Remote Mac Addresses for this criterion: 9
```
## show vxlan vni

```
VNI to VLAN Mapping for Vxlan1
VNI         VLAN       Source       Interface       802.1Q Tag
----------- ---------- ------------ --------------- ----------
30302       302        static       Ethernet5       302       
                                    Vxlan1          302       

VNI to dynamic VLAN Mapping for Vxlan1
VNI       VLAN       VRF                   Source       
--------- ---------- --------------------- ------------ 
11        1198                             evpn         
13        1199       CENTRAL_ROUTING       evpn
```
## show vxlan vtep

```
Remote VTEPS for Vxlan1:

VTEP                 Tunnel Type(s)
-------------------- --------------
192.168.252.2        flood         
192.168.254.3        unicast       
192.168.254.5        unicast       
192.168.254.7        unicast       
192.168.254.8        unicast       
192.168.254.9        unicast       
192.168.254.11       flood, unicast

Total number of remote VTEPS:  7
```
