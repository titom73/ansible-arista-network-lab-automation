# EAPI-BL01B Commands Output

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
192.168.0.2  610680788 4101335904                  NA multihop  01/05/22 17:02 
192.168.0.3 3536543968  789280225                  NA multihop  01/05/22 17:02 

   LastDown            LastDiag    State
-------------- ------------------- -----
         NA       No Diagnostic       Up
         NA       No Diagnostic       Up
```
## show bgp evpn summary

```
BGP summary information for VRF default
Router identifier 192.168.255.10, local AS number 65105
Neighbor Status Codes: m - Under maintenance
  Description              Neighbor         V AS           MsgRcvd   MsgSent  InQ OutQ  Up/Down State   PfxRcd PfxAcc
  EAPI-RS01                192.168.0.2      4 65000             70        42    0    0 00:14:05 Estab   71     71
  EAPI-RS02                192.168.0.3      4 65000             69        62    0    0 00:14:07 Estab   71     71
```
## show bgp evpn

```
BGP routing table information for VRF default
Router identifier 192.168.255.10, local AS number 65105
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
 * >     RD: 192.168.255.10:11 imet 10110 192.168.254.9
                                 -                     -       -       0       i
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
 * >     RD: 192.168.255.10:20201 imet 20201 192.168.254.9
                                 -                     -       -       0       i
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
 * >     RD: 192.168.255.10:11 ip-prefix 10.1.10.0/24
                                 -                     -       -       0       i
 *       RD: 192.168.255.10:11 ip-prefix 10.1.10.0/24
                                 -                     -       100     0       ?
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
 * >     RD: 192.168.255.10:11 ip-prefix 10.1.11.0/24
                                 -                     -       100     0       65000 65102 ?
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
 * >     RD: 192.168.255.10:11 ip-prefix 10.1.12.0/24
                                 -                     -       100     0       65000 65102 ?
 * >Ec   RD: 192.168.255.7:11 ip-prefix 10.1.13.0/24
                                 192.168.254.7         -       100     0       65000 65103 i
 *  ec   RD: 192.168.255.7:11 ip-prefix 10.1.13.0/24
                                 192.168.254.7         -       100     0       65000 65103 i
 * >Ec   RD: 192.168.255.8:11 ip-prefix 10.1.13.0/24
                                 192.168.254.8         -       100     0       65000 65104 i
 *  ec   RD: 192.168.255.8:11 ip-prefix 10.1.13.0/24
                                 192.168.254.8         -       100     0       65000 65104 i
 * >     RD: 192.168.255.10:11 ip-prefix 10.1.13.0/24
                                 -                     -       100     0       65000 65104 ?
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
 * >     RD: 192.168.255.10:11 ip-prefix 172.31.253.2/31
                                 -                     -       100     0       65000 65101 ?
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
 * >     RD: 192.168.255.10:11 ip-prefix 172.31.253.6/31
                                 -                     -       100     0       65000 65102 ?
 * >     RD: 192.168.255.10:11 ip-prefix 172.31.253.14/31
                                 -                     -       -       0       i
 *       RD: 192.168.255.10:11 ip-prefix 172.31.253.14/31
                                 -                     -       100     0       ?
 * >     RD: 192.168.255.10:11 ip-prefix 172.31.253.18/31
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
Et1                            up             up                 P2P_LINK_TO_EAPI-SPINE1_Ethernet6
Et2                            up             up                 P2P_LINK_TO_EAPI-SPINE2_Ethernet6
Et3                            up             up                 MLAG_PEER_EAPI-BL01A_Ethernet3
Et4                            up             up                 MLAG_PEER_EAPI-BL01A_Ethernet4
Et5                            up             up                 
Et6                            up             up                 
Et7                            up             up                 
Et8                            up             up                 
Lo0                            up             up                 EVPN_Overlay_Peering
Lo1                            up             up                 VTEP_VXLAN_Tunnel_Source
Ma1                            up             up                 oob_management
Po3                            up             up                 MLAG_PEER_EAPI-BL01A_Po3
Vl110                          up             up                 PR01-DEMO
Vl1197                         up             up                 
Vl1198                         up             up                 
Vl3010                         up             up                 MLAG_PEER_L3_iBGP: vrf TENANT_A_PROJECT01
Vl4093                         up             up                 MLAG_PEER_L3_PEERING
Vl4094                         up             up                 MLAG_PEER
Vx1                            up             up                 EAPI-BL01B_VTEP
```
## show ip bgp summary vrf all

```
BGP summary information for VRF default
Router identifier 192.168.255.10, local AS number 65105
Neighbor Status Codes: m - Under maintenance
  Description              Neighbor         V AS           MsgRcvd   MsgSent  InQ OutQ  Up/Down State   PfxRcd PfxAcc
  EAPI-BL01A               172.31.253.14    4 65105             36        33    0    0 00:13:54 Estab   23     23
  EAPI-SPINE1_Ethernet6    172.31.255.28    4 65001             31        30    0    0 00:14:07 Estab   19     19
  EAPI-SPINE2_Ethernet6    172.31.255.30    4 65001             33        27    0    0 00:14:07 Estab   19     19

BGP summary information for VRF TENANT_A_PROJECT01
Router identifier 192.168.255.10, local AS number 65105
Neighbor Status Codes: m - Under maintenance
  Neighbor         V AS           MsgRcvd   MsgSent  InQ OutQ  Up/Down State   PfxRcd PfxAcc
  172.31.253.14    4 65105             25        25    0    0 00:13:54 Estab   8      8
```
## show ip interface brief

```
Address
Interface       IP Address            Status     Protocol         MTU   Owner  
--------------- --------------------- ---------- ------------ --------- -------
Ethernet1       172.31.255.29/31      up         up              1500          
Ethernet2       172.31.255.31/31      up         up              1500          
Loopback0       192.168.255.10/32     up         up             65535          
Loopback1       192.168.254.9/32      up         up             65535          
Management1     10.73.254.16/24       up         up              1500          
Vlan110         10.1.10.254/24        up         up              1500          
Vlan1197        unassigned            up         up              9164          
Vlan1198        unassigned            up         up              9164          
Vlan3010        172.31.253.15/31      up         up              1500          
Vlan4093        172.31.253.15/31      up         up              1500          
Vlan4094        172.31.253.13/31      up         up              1500
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

 C        172.31.253.12/31 is directly connected, Vlan4094
 C        172.31.253.14/31 is directly connected, Vlan4093
 C        172.31.255.28/31 is directly connected, Ethernet1
 C        172.31.255.30/31 is directly connected, Ethernet2
 B E      192.168.0.2/32 [20/0] via 172.31.255.28, Ethernet1
 B E      192.168.0.3/32 [20/0] via 172.31.255.30, Ethernet2
 B E      192.168.1.1/32 [20/0] via 172.31.255.28, Ethernet1
 B E      192.168.1.2/32 [20/0] via 172.31.255.30, Ethernet2
 B E      192.168.252.2/32 [20/0] via 172.31.255.28, Ethernet1
                                  via 172.31.255.30, Ethernet2
 B E      192.168.252.3/32 [20/0] via 172.31.255.28, Ethernet1
                                  via 172.31.255.30, Ethernet2
 B E      192.168.253.2/32 [20/0] via 172.31.255.28, Ethernet1
                                  via 172.31.255.30, Ethernet2
 B E      192.168.253.3/32 [20/0] via 172.31.255.28, Ethernet1
                                  via 172.31.255.30, Ethernet2
 B E      192.168.254.3/32 [20/0] via 172.31.255.28, Ethernet1
                                  via 172.31.255.30, Ethernet2
 B E      192.168.254.5/32 [20/0] via 172.31.255.28, Ethernet1
                                  via 172.31.255.30, Ethernet2
 B E      192.168.254.7/32 [20/0] via 172.31.255.28, Ethernet1
                                  via 172.31.255.30, Ethernet2
 B E      192.168.254.8/32 [20/0] via 172.31.255.28, Ethernet1
                                  via 172.31.255.30, Ethernet2
 C        192.168.254.9/32 is directly connected, Loopback1
 B E      192.168.254.11/32 [20/0] via 172.31.255.28, Ethernet1
                                   via 172.31.255.30, Ethernet2
 B E      192.168.255.3/32 [20/0] via 172.31.255.28, Ethernet1
                                  via 172.31.255.30, Ethernet2
 B E      192.168.255.4/32 [20/0] via 172.31.255.28, Ethernet1
                                  via 172.31.255.30, Ethernet2
 B E      192.168.255.5/32 [20/0] via 172.31.255.28, Ethernet1
                                  via 172.31.255.30, Ethernet2
 B E      192.168.255.6/32 [20/0] via 172.31.255.28, Ethernet1
                                  via 172.31.255.30, Ethernet2
 B E      192.168.255.7/32 [20/0] via 172.31.255.28, Ethernet1
                                  via 172.31.255.30, Ethernet2
 B E      192.168.255.8/32 [20/0] via 172.31.255.28, Ethernet1
                                  via 172.31.255.30, Ethernet2
 B I      192.168.255.9/32 [200/0] via 172.31.253.14, Vlan4093
 C        192.168.255.10/32 is directly connected, Loopback0
 B E      192.168.255.11/32 [20/0] via 172.31.255.28, Ethernet1
                                   via 172.31.255.30, Ethernet2
 B E      192.168.255.12/32 [20/0] via 172.31.255.28, Ethernet1
                                   via 172.31.255.30, Ethernet2


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
 B E      10.1.11.0/24 [20/0] via VTEP 192.168.254.5 VNI 11 router-mac 0e:1d:c0:a3:43:e0 local-interface Vxlan1
                              via VTEP 192.168.254.3 VNI 11 router-mac 0e:1d:c0:f0:bd:d1 local-interface Vxlan1
 B E      10.1.12.0/24 [20/0] via VTEP 192.168.254.5 VNI 11 router-mac 0e:1d:c0:a3:43:e0 local-interface Vxlan1
                              via VTEP 192.168.254.3 VNI 11 router-mac 0e:1d:c0:f0:bd:d1 local-interface Vxlan1
 B E      10.1.13.0/24 [20/0] via VTEP 192.168.254.8 VNI 11 router-mac 0c:1d:c0:d2:9e:98 local-interface Vxlan1
                              via VTEP 192.168.254.7 VNI 11 router-mac 0c:1d:c0:e4:77:7b local-interface Vxlan1
 B E      172.31.253.2/31 [20/0] via VTEP 192.168.254.3 VNI 11 router-mac 0e:1d:c0:f0:bd:d1 local-interface Vxlan1
 B E      172.31.253.6/31 [20/0] via VTEP 192.168.254.5 VNI 11 router-mac 0e:1d:c0:a3:43:e0 local-interface Vxlan1
 C        172.31.253.14/31 is directly connected, Vlan3010
 B E      172.31.253.18/31 [20/0] via VTEP 192.168.254.11 VNI 11 router-mac 52:01:00:68:b4:46 local-interface Vxlan1
```
## show lldp neighbors

```
Last table change time   : 0:13:14 ago
Number of table inserts  : 4
Number of table deletes  : 0
Number of table drops    : 0
Number of table age-outs : 0

Port          Neighbor Device ID       Neighbor Port ID    TTL
---------- ------------------------ ---------------------- ---
Et1           EAPI-SPINE1              Ethernet6           120
Et2           EAPI-SPINE2              Ethernet6           120
Et3           EAPI-BL01A               Ethernet3           120
Et4           EAPI-BL01A               Ethernet4           120
```
## show mac address-table

```
Mac Address Table
------------------------------------------------------------------

Vlan    Mac Address       Type        Ports      Moves   Last Move
----    -----------       ----        -----      -----   ---------
 110    0c1d.c025.6541    STATIC      Po3
1197    0c1d.c025.6541    STATIC      Po3
1197    0e1d.c0a3.43e0    DYNAMIC     Vx1        1       0:14:07 ago
1197    0e1d.c0f0.bdd1    DYNAMIC     Vx1        1       0:14:05 ago
1197    5201.0068.b446    DYNAMIC     Vx1        1       0:07:14 ago
1198    0c1d.c025.6541    STATIC      Po3
1198    0c1d.c0d2.9e98    DYNAMIC     Vx1        1       0:14:26 ago
1198    0c1d.c0e4.777b    DYNAMIC     Vx1        1       0:14:26 ago
1198    0e1d.c0a3.43e0    DYNAMIC     Vx1        1       0:14:08 ago
1198    0e1d.c0f0.bdd1    DYNAMIC     Vx1        1       0:14:05 ago
1198    5201.0068.b446    DYNAMIC     Vx1        1       0:07:14 ago
3010    0c1d.c025.6541    STATIC      Po3
4093    0c1d.c025.6541    STATIC      Po3
4094    0c1d.c025.6541    STATIC      Po3
Total Mac Addresses for this criterion: 14

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
domain-id                          :           EAPI_BL01
local-interface                    :            Vlan4094
peer-address                       :       172.31.253.12
peer-link                          :       Port-Channel3
peer-config                        :          consistent
                                                       
MLAG Status:                     
state                              :              Active
negotiation status                 :           Connected
peer-link status                   :                  Up
local-int status                   :                  Up
system-id                          :   0e:1d:c0:25:65:41
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
Last state change time          :         0:14:37 ago
Hardware ready                  :                True
Failover                        :               False
Failover Cause(s)               :             Unknown
Last failover change time       :               never
Secondary from failover         :               False
Peer MAC address                :   0c:1d:c0:25:65:41
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
Heartbeats sent/received        :             246/222
Peer monotonic clock offset     :   -5.344179 seconds
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
Serial number: E4331D3FF0AE3345592E44E84CE16637
Hardware MAC address: 0c1d.c0f5.1c0d
System MAC address: 0c1d.c0f5.1c0d

Software image version: 4.27.0F
Architecture: i686
Internal build version: 4.27.0F-24305004.4270F
Internal build ID: fed9e33b-669e-42ea-bee6-c7bf3cca1a73
Image format version: 1.0

Uptime: 19 minutes
Total memory: 2006636 kB
Free memory: 1016936 kB
```
## show vlan

```
VLAN  Name                             Status    Ports
----- -------------------------------- --------- -------------------------------
1     default                          active    Et5, Et6, Et7, Et8, PEt5, PEt6
                                                 PEt7, PEt8
110   PR01-DEMO                        active    Cpu, Po3, Vx1
201   B-ELAN-201                       active    Po3, Vx1
1197* VLAN1197                         active    Cpu, Po3, Vx1
1198* VLAN1198                         active    Cpu, Po3, Vx1
3010  MLAG_iBGP_TENANT_A_PROJECT01     active    Cpu, Po3
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
1197  0e1d.c0a3.43e0  EVPN      Vx1  192.168.254.5    1       0:13:59 ago
1197  0e1d.c0f0.bdd1  EVPN      Vx1  192.168.254.3    1       0:13:57 ago
1197  5201.0068.b446  EVPN      Vx1  192.168.254.11   1       0:07:06 ago
1198  0c1d.c0d2.9e98  EVPN      Vx1  192.168.254.8    1       0:14:18 ago
1198  0c1d.c0e4.777b  EVPN      Vx1  192.168.254.7    1       0:14:18 ago
1198  0e1d.c0a3.43e0  EVPN      Vx1  192.168.254.5    1       0:14:00 ago
1198  0e1d.c0f0.bdd1  EVPN      Vx1  192.168.254.3    1       0:13:57 ago
1198  5201.0068.b446  EVPN      Vx1  192.168.254.11   1       0:07:06 ago
Total Remote Mac Addresses for this criterion: 8
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
11        1198       TENANT_A_PROJECT01       evpn         
13        1197                                evpn
```
## show vxlan vtep

```
Remote VTEPS for Vxlan1:

VTEP                 Tunnel Type(s)
-------------------- --------------
192.168.254.3        unicast, flood
192.168.254.5        unicast, flood
192.168.254.7        unicast, flood
192.168.254.8        unicast, flood
192.168.254.11       unicast, flood

Total number of remote VTEPS:  5
```
