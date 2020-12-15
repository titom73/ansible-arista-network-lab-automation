# DC1-POD2-LEAF1B

# Table of Contents

- [Management](#management)
  - [Management Interfaces](#management-interfaces)
  - [DNS Domain](#dns-domain)
  - [Name Servers](#name-servers)
  - [Domain Lookup](#domain-lookup)
  - [NTP](#ntp)
  - [Management SSH](#management-ssh)
  - [Management GNMI](#management-api-gnmi)
  - [Management API](#Management-api-http)
- [Authentication](#authentication)
  - [Local Users](#local-users)
  - [TACACS Servers](#tacacs-servers)
  - [IP TACACS Source Interfaces](#ip-tacacs-source-interfaces)
  - [RADIUS Servers](#radius-servers)
  - [AAA Server Groups](#aaa-server-groups)
  - [AAA Authentication](#aaa-authentication)
  - [AAA Authorization](#aaa-authorization)
  - [AAA Accounting](#aaa-accounting)
- [Management Security](#management-security)
- [Aliases](#aliases)
- [Monitoring](#monitoring)
  - [TerminAttr Daemon](#terminattr-daemon)
  - [Logging](#logging)
  - [SNMP](#snmp)
  - [SFlow](#sflow)
  - [Hardware Counters](#hardware-counters)
  - [VM Tracer Sessions](#vm-tracer-sessions)
  - [Event Handler](#event-handler)
- [MLAG](#mlag)
- [Spanning Tree](#spanning-tree)
- [Internal VLAN Allocation Policy](#internal-vlan-allocation-policy)
- [VLANs](#vlans)
- [Interfaces](#interfaces)
  - [Ethernet Interfaces](#ethernet-interfaces)
  - [Port-Channel Interfaces](#port-channel-interfaces)
  - [Loopback Interfaces](#loopback-interfaces)
  - [VLAN Interfaces](#vlan-interfaces)
  - [VXLAN Interface](#vxlan-interface)
- [Routing](#routing)
  - [Virtual Router MAC Address](#virtual-router-mac-address)
  - [IP Routing](#ip-routing)
  - [IPv6 Routing](#ipv6-routing)
  - [Static Routes](#static-routes)
  - [IPv6 Static Routes](#ipv6-static-routes)
  - [Router ISIS](#router-isis)
  - [Router BGP](#router-bgp)
  - [Router BFD](#router-bfd)
- [Multicast](#multicast)
  - [IP IGMP Snooping](#ip-igmp-snooping)
  - [Router Multicast](#router-multicast)
  - [Router PIM Sparse Mode](#router-pim-sparse-mode)
- [Filters](#filters)
  - [Community-lists](#community-lists)
  - [Peer Filters](#peer-filters)
  - [Prefix-lists](#prefix-lists)
  - [IPv6 Prefix-lists](#ipv6-prefix-lists)
  - [Route-maps](#route-maps)
  - [IP Extended Communities](#ip-extended-communities)
- [ACL](#acl)
  - [Standard Access-lists](#standard-access-lists)
  - [Extended Access-lists](#extended-access-lists)
  - [IPv6 Standard Access-lists](#ipv6-standard-access-lists)
  - [IPv6 Extended Access-lists](#ipv6-extended-access-lists)
- [VRF Instances](#vrf-instances)
- [Virtual Source NAT](#virtual-source-nat)
- [Platform](#platform)
- [Router L2 VPN](#router-l2-vpn)
- [IP DHCP Relay](#ip-dhcp-relay)

# Management

## Management Interfaces

### Management Interfaces Summary

#### IPv4

| Management Interface | description | VRF | IP Address | Gateway |
| -------------------- | ----------- | --- | ---------- | ------- |
| Management1 | oob_management | MGMT | 192.169.0.13/24 | 192.168.200.1 |

#### IPv6

| Management Interface | description | VRF | IPv6 Address | IPv6 Gateway |
| -------------------- | ----------- | --- | ------------ | ------------ |
| Management1 | oob_management | MGMT | -  | - |

### Management Interfaces Device Configuration

```eos
!
interface Management1
   description oob_management
   vrf MGMT
   ip address 192.169.0.13/24
```

## DNS Domain

DNS domain not defined

## Domain-list

Domain-list not defined

## Name Servers

### Name Servers Summary

| Name Server | Source VRF |
| ----------- | ---------- |
| 1.1.1.1 | MGMT |
| 8.8.8.8 | MGMT |

### Name Servers Device Configuration

```eos
ip name-server vrf MGMT 1.1.1.1
ip name-server vrf MGMT 8.8.8.8
```

## Domain Lookup

DNS domain lookup not defined

## NTP

### NTP Summary

- Local Interface: Management1

- VRF: MGMT

| Node | Primary |
| ---- | ------- |
| uk.pool.ntp.org | true |
| fr.pool.ntp.org | - |

### NTP Device Configuration

```eos
!
ntp local-interface vrf MGMT Management1
ntp server vrf MGMT uk.pool.ntp.org prefer
ntp server vrf MGMT fr.pool.ntp.org
```

## Management SSH

Management SSH not defined

## Management API GNMI

Management API gnmi is not defined

## Management API HTTP

### Management API HTTP Summary

| HTTP | HTTPS |
| ---------- | ---------- |
|  default  |  true  |

### Management API VRF Access

| VRF Name | IPv4 ACL | IPv6 ACL |
| -------- | -------- | -------- |
| MGMT |  -  |  -  |

### Management API HTTP Configuration

```eos
!
management api http-commands
   no shutdown
   !
   vrf MGMT
      no shutdown
```

# Authentication

## Local Users

### Local Users Summary

| User | Privilege | Role |
| ---- | --------- | ---- |
| admin | 15 | network-admin |
| demo | 15 | network-admin |

### Local Users Device Configuration

```eos
!
username admin privilege 15 role network-admin nopassword
username demo privilege 15 role network-admin secret sha512 < Provide SHA512 HASH for password >
```

## TACACS Servers

TACACS servers not defined

## IP TACACS Source Interfaces

IP TACACS source interfaces not defined

## RADIUS Servers

RADIUS servers not defined

## AAA Server Groups

AAA server groups not defined

## AAA Authentication

AAA authentication not defined

## AAA Authorization

AAA authorization not defined

## AAA Accounting

AAA accounting not defined

# Management Security

Management security not defined

# Aliases

Aliases not defined

# Monitoring

## TerminAttr Daemon

TerminAttr daemon not defined

## Logging

No logging settings defined

## SNMP

No SNMP settings defined

## SFlow

No sFlow defined

## Hardware Counters

No hardware counters defined

## VM Tracer Sessions

No VM tracer sessions defined

## Event Handler

No event handler defined

# MLAG

## MLAG Summary

| Domain-id | Local-interface | Peer-address | Peer-link |
| --------- | --------------- | ------------ | --------- |
| DC1_POD2_LEAF1 | Vlan4094 | 10.254.252.0 | Port-Channel1 |

Dual primary detection is enabled. The detection delay is 5 seconds.

## MLAG Device Configuration

```eos
!
mlag configuration
   domain-id DC1_POD2_LEAF1
   local-interface Vlan4094
   peer-address 10.254.252.0
   peer-address heartbeat 192.169.0.12 vrf MGMT
   peer-link Port-Channel1
   dual-primary detection delay 5 action errdisable all-interfaces
   reload-delay mlag 300
   reload-delay non-mlag 330
```

# Spanning Tree

## Spanning Tree Summary

Mode: mstp

### MSTP Instance and Priority

| Instance | Priority |
| -------- | -------- |
| 0 | 4096 |

## Spanning Tree Device Configuration

```eos
!
spanning-tree mode mstp
no spanning-tree vlan-id 4093-4094
spanning-tree mst 0 priority 4096
```

# Internal VLAN Allocation Policy

## Internal VLAN Allocation Policy Summary

| Policy Allocation | Range Beginning | Range Ending |
| ------------------| --------------- | ------------ |
| ascending | 1006 | 1199 |

## Internal VLAN Allocation Policy Configuration

```eos
!
vlan internal order ascending range 1006 1199
```

# VLANs

## VLANs Summary

| VLAN ID | Name | Trunk Groups |
| ------- | ---- | ------------ |
| 12 | Tenant_A_OP_Zone_Test | none  |
| 110 | Tenant_A_OP_Zone_1 | none  |
| 111 | Tenant_A_OP_Zone_2 | none  |
| 112 | Tenant_A_OP_Zone_3 | none  |
| 120 | Tenant_A_WEB_Zone_1 | none  |
| 121 | Tenant_A_WEBZone_2 | none  |
| 130 | Tenant_A_APP_Zone_1 | none  |
| 131 | Tenant_A_APP_Zone_2 | none  |
| 140 | Tenant_A_DB_BZone_1 | none  |
| 141 | Tenant_A_DB_Zone_2 | none  |
| 150 | Tenant_A_WAN_Zone_1 | none  |
| 160 | Tenant_A_VMOTION | none  |
| 161 | Tenant_A_NFS | none  |
| 3010 | MLAG_iBGP_Tenant_A_WEB_Zone | LEAF_PEER_L3  |
| 4093 | LEAF_PEER_L3 | LEAF_PEER_L3  |
| 4094 | MLAG_PEER | MLAG  |

## VLANs Device Configuration

```eos
!
vlan 12
   name Tenant_A_OP_Zone_Test
!
vlan 110
   name Tenant_A_OP_Zone_1
!
vlan 111
   name Tenant_A_OP_Zone_2
!
vlan 112
   name Tenant_A_OP_Zone_3
!
vlan 120
   name Tenant_A_WEB_Zone_1
!
vlan 121
   name Tenant_A_WEBZone_2
!
vlan 130
   name Tenant_A_APP_Zone_1
!
vlan 131
   name Tenant_A_APP_Zone_2
!
vlan 140
   name Tenant_A_DB_BZone_1
!
vlan 141
   name Tenant_A_DB_Zone_2
!
vlan 150
   name Tenant_A_WAN_Zone_1
!
vlan 160
   name Tenant_A_VMOTION
!
vlan 161
   name Tenant_A_NFS
!
vlan 3010
   name MLAG_iBGP_Tenant_A_WEB_Zone
   trunk group LEAF_PEER_L3
!
vlan 4093
   name LEAF_PEER_L3
   trunk group LEAF_PEER_L3
!
vlan 4094
   name MLAG_PEER
   trunk group MLAG
```

# Interfaces

## Ethernet Interfaces

### Ethernet Interfaces Summary

| Interface | Description | MTU | Type | Mode | Allowed VLANs (Trunk) | Trunk Group | VRF | IP Address | Channel-Group ID | Channel-Group Type |
| --------- | ----------- | --- | ---- | ---- | --------------------- | ----------- | --- | ---------- | ---------------- | ------------------ |
| Ethernet1 | MLAG_PEER_DC1-POD2-LEAF1A_Ethernet1 | *1500 | *switched | *trunk | *2-4094 | *LEAF_PEER_L3<br> *MLAG | - | - | 1 | active |
| Ethernet2 | P2P_LINK_TO_DC1-POD2-SPINE1_Ethernet3 | 1500 | routed | access | - | - | - | 172.32.255.5/31 | - | - |
| Ethernet3 | P2P_LINK_TO_DC1-POD2-SPINE2_Ethernet3 | 1500 | routed | access | - | - | - | 172.32.255.7/31 | - | - |
| Ethernet6 | MLAG_PEER_DC1-POD2-LEAF1A_Ethernet6 | *1500 | *switched | *trunk | *2-4094 | *LEAF_PEER_L3<br> *MLAG | - | - | 1 | active |
| Ethernet7 | DC1-POD2-L2LEAF1A_Ethernet2 | *1500 | *switched | *trunk | *12,110-112,120-121,130-131 | - | - | - | 7 | active |
| Ethernet20 | P2P_LINK_TO_DC1-POD2-LEAF1B_Ethernet2 | 1500 | routed | access | - | - | - | 172.32.255.6/31 | - | - |

*Inherited from Port-Channel Interface


### Ethernet Interfaces Device Configuration

```eos
!
interface Ethernet1
   description MLAG_PEER_DC1-POD2-LEAF1A_Ethernet1
   channel-group 1 mode active
!
interface Ethernet2
   description P2P_LINK_TO_DC1-POD2-SPINE1_Ethernet3
   no switchport
   ip address 172.32.255.5/31
!
interface Ethernet3
   description P2P_LINK_TO_DC1-POD2-SPINE2_Ethernet3
   no switchport
   ip address 172.32.255.7/31
!
interface Ethernet6
   description MLAG_PEER_DC1-POD2-LEAF1A_Ethernet6
   channel-group 1 mode active
!
interface Ethernet7
   description DC1-POD2-L2LEAF1A_Ethernet2
   channel-group 7 mode active
!
interface Ethernet20
   description P2P_LINK_TO_DC1-POD2-LEAF1B_Ethernet2
   no switchport
   ip address 172.32.255.6/31
```

## Port-Channel Interfaces

### Port-Channel Interfaces Summary

| Interface | Description | MTU | Type | Mode | Allowed VLANs (trunk) | Trunk Group | LACP Fallback Timeout | LACP Fallback Mode | MLAG ID | EVPN ESI | VRF | IP Address | IPv6 Address |
| --------- | ----------- | --- | ---- | ---- | --------------------- | ----------- | --------------------- ! ------------------ | ------- | -------- | --- | ---------- | ------------ |
| Port-Channel1 | MLAG_PEER_DC1-POD2-LEAF1A_Po1 | 1500 | switched | trunk | 2-4094 | LEAF_PEER_L3<br> MLAG | - | - | - | - | - | - | - |
| Port-Channel7 | DC1_POD2_L2LEAF1_Po1 | 1500 | switched | trunk | 12,110-112,120-121,130-131 | - | - | - | 7 | - | - | - | - |

### Port-Channel Interfaces Device Configuration

```eos
!
interface Port-Channel1
   description MLAG_PEER_DC1-POD2-LEAF1A_Po1
   switchport trunk allowed vlan 2-4094
   switchport mode trunk
   switchport trunk group LEAF_PEER_L3
   switchport trunk group MLAG
!
interface Port-Channel7
   description DC1_POD2_L2LEAF1_Po1
   switchport trunk allowed vlan 12,110-112,120-121,130-131
   switchport mode trunk
   mlag 7
```

## Loopback Interfaces

### Loopback Interfaces Summary

#### IPv4

| Interface | Description | VRF | IP Address |
| --------- | ----------- | --- | ---------- |
| Loopback0 | EVPN_Overlay_Peering | default | 192.169.255.4/32 |
| Loopback1 | VTEP_VXLAN_Tunnel_Source | default | 192.169.254.3/32 |
| Loopback100 | Common_VRF_VTEP_DIAGNOSTICS | Common_VRF | 10.255.1.4/32 |

#### IPv6

| Interface | Description | VRF | IPv6 Address |
| --------- | ----------- | --- | ------------ |
| Loopback0 | EVPN_Overlay_Peering | default | - |
| Loopback1 | VTEP_VXLAN_Tunnel_Source | default | - |
| Loopback100 | Common_VRF_VTEP_DIAGNOSTICS | Common_VRF | - |


### Loopback Interfaces Device Configuration

```eos
!
interface Loopback0
   description EVPN_Overlay_Peering
   ip address 192.169.255.4/32
!
interface Loopback1
   description VTEP_VXLAN_Tunnel_Source
   ip address 192.169.254.3/32
!
interface Loopback100
   description Common_VRF_VTEP_DIAGNOSTICS
   vrf Common_VRF
   ip address 10.255.1.4/32
```

## VLAN Interfaces

### VLAN Interfaces Summary

| Interface | Description | VRF | IP Address | IP Address Virtual | IP Router Virtual Address (vARP) |
| --------- | ----------- | --- | ---------- | ------------------ | -------------------------------- |
| Vlan12 | Tenant_A_OP_Zone_Test | Common_VRF | - | - | - |
| Vlan110 | Tenant_A_OP_Zone_1 | Common_VRF | - | - | - |
| Vlan111 | Tenant_A_OP_Zone_2 | Common_VRF | - | - | - |
| Vlan112 | Tenant_A_OP_Zone_3 | Common_VRF | - | - | - |
| Vlan120 | Tenant_A_WEB_Zone_1 | Tenant_A_WEB_Zone | - | - | - |
| Vlan121 | Tenant_A_WEBZone_2 | Tenant_A_WEB_Zone | - | - | - |
| Vlan130 | Tenant_A_APP_Zone_1 | Tenant_A_APP_Zone | - | - | - |
| Vlan131 | Tenant_A_APP_Zone_2 | Tenant_A_APP_Zone | - | - | - |
| Vlan140 | Tenant_A_DB_BZone_1 | Tenant_A_DB_Zone | - | - | - |
| Vlan141 | Tenant_A_DB_Zone_2 | Tenant_A_DB_Zone | - | - | - |
| Vlan150 | Tenant_A_WAN_Zone_1 | Tenant_A_WAN_Zone | - | - | - |
| Vlan3010 | MLAG_PEER_L3_iBGP: vrf Tenant_A_WEB_Zone | Tenant_A_WEB_Zone | 10.254.254.1/31 | - | - |
| Vlan4093 | MLAG_PEER_L3_PEERING | default | 10.254.254.1/31 | - | - |
| Vlan4094 | MLAG_PEER | default | 10.254.252.1/31 | - | - |


### VLAN Interfaces Device Configuration

```eos
!
interface Vlan12
   description Tenant_A_OP_Zone_Test
   mtu 9000
   vrf Common_VRF
!
interface Vlan110
   description Tenant_A_OP_Zone_1
   vrf Common_VRF
!
interface Vlan111
   description Tenant_A_OP_Zone_2
   vrf Common_VRF
!
interface Vlan112
   description Tenant_A_OP_Zone_3
   vrf Common_VRF
!
interface Vlan120
   description Tenant_A_WEB_Zone_1
   vrf Tenant_A_WEB_Zone
!
interface Vlan121
   description Tenant_A_WEBZone_2
   vrf Tenant_A_WEB_Zone
!
interface Vlan130
   description Tenant_A_APP_Zone_1
   vrf Tenant_A_APP_Zone
!
interface Vlan131
   description Tenant_A_APP_Zone_2
   vrf Tenant_A_APP_Zone
!
interface Vlan140
   description Tenant_A_DB_BZone_1
   vrf Tenant_A_DB_Zone
!
interface Vlan141
   description Tenant_A_DB_Zone_2
   vrf Tenant_A_DB_Zone
!
interface Vlan150
   description Tenant_A_WAN_Zone_1
   vrf Tenant_A_WAN_Zone
!
interface Vlan3010
   description MLAG_PEER_L3_iBGP: vrf Tenant_A_WEB_Zone
   vrf Tenant_A_WEB_Zone
   ip address 10.254.254.1/31
!
interface Vlan4093
   description MLAG_PEER_L3_PEERING
   ip address 10.254.254.1/31
!
interface Vlan4094
   description MLAG_PEER
   no autostate
   ip address 10.254.252.1/31
```

## VXLAN Interface

### VXLAN Interface Summary

#### Source Interface: Loopback1

#### UDP port: 4789

#### VLAN to VNI Mappings

| VLAN | VNI |
| ---- | --- |
| 12 | 10012 |
| 110 | 10110 |
| 111 | 50111 |
| 112 | 50112 |
| 120 | 10120 |
| 121 | 10121 |
| 130 | 10130 |
| 131 | 10131 |
| 140 | 10140 |
| 141 | 10141 |
| 150 | 10150 |
| 160 | 55160 |
| 161 | 10161 |

#### VRF to VNI Mappings

| VLAN | VNI |
| ---- | --- |
| Common_VRF | 1025 |
| Tenant_A_APP_Zone | 12 |
| Tenant_A_DB_Zone | 1300 |
| Tenant_A_WAN_Zone | 14 |
| Tenant_A_WEB_Zone | 11 |

### VXLAN Interface Device Configuration

```eos
!
interface Vxlan1
   vxlan source-interface Loopback1
   vxlan virtual-router encapsulation mac-address mlag-system-id
   vxlan udp-port 4789
   vxlan vlan 12 vni 10012
   vxlan vlan 110 vni 10110
   vxlan vlan 111 vni 50111
   vxlan vlan 112 vni 50112
   vxlan vlan 120 vni 10120
   vxlan vlan 121 vni 10121
   vxlan vlan 130 vni 10130
   vxlan vlan 131 vni 10131
   vxlan vlan 140 vni 10140
   vxlan vlan 141 vni 10141
   vxlan vlan 150 vni 10150
   vxlan vlan 160 vni 55160
   vxlan vlan 161 vni 10161
   vxlan vrf Common_VRF vni 1025
   vxlan vrf Tenant_A_APP_Zone vni 12
   vxlan vrf Tenant_A_DB_Zone vni 1300
   vxlan vrf Tenant_A_WAN_Zone vni 14
   vxlan vrf Tenant_A_WEB_Zone vni 11
```

# Routing

## Virtual Router MAC Address


### Virtual Router MAC Address Summary

#### Virtual Router MAC Address: 00:1c:73:00:dc:01

### Virtual Router MAC Address Configuration

```eos
!
ip virtual-router mac-address 00:1c:73:00:dc:01
```

## IP Routing

### IP Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default | true| | Common_VRF | true |
| MGMT | false |
| Tenant_A_APP_Zone | true |
| Tenant_A_DB_Zone | true |
| Tenant_A_WAN_Zone | true |
| Tenant_A_WEB_Zone | true |

### IP Routing Device Configuration

```eos
!
ip routing
ip routing vrf Common_VRF
no ip routing vrf MGMT
ip routing vrf Tenant_A_APP_Zone
ip routing vrf Tenant_A_DB_Zone
ip routing vrf Tenant_A_WAN_Zone
ip routing vrf Tenant_A_WEB_Zone
```

## IPv6 Routing

### IPv6 Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default | false || Common_VRF | false |
| MGMT | false |
| Tenant_A_APP_Zone | false |
| Tenant_A_DB_Zone | false |
| Tenant_A_WAN_Zone | false |
| Tenant_A_WEB_Zone | false |


## Static Routes

### Static Routes Summary

| VRF | Destination Prefix | Next Hop IP             | Exit interface      | Administrative Distance       | Tag               | Route Name                    | Metric         |
| --- | ------------------ | ----------------------- | ------------------- | ----------------------------- | ----------------- | ----------------------------- | -------------- |
| MGMT  | 192.168.200.0/24 |  192.168.200.1  |  -  |  1  |  -  |  -  |  - |
| MGMT  | 0.0.0.0/0 |  192.168.200.1  |  -  |  1  |  -  |  -  |  - |

### Static Routes Device Configuration

```eos
!
ip route vrf MGMT 192.168.200.0/24 192.168.200.1
ip route vrf MGMT 0.0.0.0/0 192.168.200.1
```

## IPv6 Static Routes

IPv6 static routes not defined

## Router ISIS

Router ISIS not defined

## Router BGP

### Router BGP Summary

| BGP AS | Router ID |
| ------ | --------- |
| 65201|  192.169.255.4 |

| BGP Tuning |
| ---------- |
| no bgp default ipv4-unicast |
| distance bgp 20 200 200 |
| graceful-restart restart-time 300 |
| graceful-restart |
| maximum-paths 2 ecmp 2 |

### Router BGP Peer Groups

#### EVPN-OVERLAY-PEERS

| Settings | Value |
| -------- | ----- |
| Address Family | evpn |
| Remote_as | 65200 |
| Source | Loopback0 |
| Bfd | true |
| Ebgp multihop | 15 |
| Send community | true |
| Maximum routes | 0 (no limit) |

#### IPv4-UNDERLAY-PEERS

| Settings | Value |
| -------- | ----- |
| Address Family | ipv4 |
| Remote_as | 65200 |
| Send community | true |
| Maximum routes | 12000 |

#### MLAG-IPv4-UNDERLAY-PEER

| Settings | Value |
| -------- | ----- |
| Address Family | ipv4 |
| Remote_as | 65201 |
| Next-hop self | True |
| Send community | true |
| Maximum routes | 12000 |

### BGP Neighbors

| Neighbor | Remote AS |
| -------- | ---------
| 10.254.254.0 | Inherited from peer group MLAG-IPv4-UNDERLAY-PEER |
| 172.32.250.1 | 65100 |
| 172.32.250.2 | 65100 |
| 172.32.255.4 | Inherited from peer group IPv4-UNDERLAY-PEERS |
| 172.32.255.6 | Inherited from peer group IPv4-UNDERLAY-PEERS |

### Router BGP EVPN Address Family

#### Router BGP EVPN MAC-VRFs

##### VLAN Based

| VLAN | Route-Distinguisher | Both Route-Target | Import Route Target | Export Route-Target | Redistribute |
| ---- | ------------------- | ----------------- | ------------------- | ------------------- | ------------ |
| 12 | 65201:10012 |  65000:10012 |  -  | -  | learned |
| 110 | 65201:10110 |  65000:10110 |  -  | -  | learned |
| 111 | 65201:50111 |  65000:50111 |  -  | -  | learned |
| 112 | 65201:50112 |  65000:50112 |  -  | -  | learned |
| 120 | 65201:10120 |  65000:10120 |  -  | -  | learned |
| 121 | 65201:10121 |  65000:10121 |  -  | -  | learned |
| 130 | 65201:10130 |  65000:10130 |  -  | -  | learned |
| 131 | 65201:10131 |  65000:10131 |  -  | -  | learned |
| 140 | 65201:10140 |  65000:10140 |  -  | -  | learned |
| 141 | 65201:10141 |  65000:10141 |  -  | -  | learned |
| 150 | 65201:10150 |  65000:10150 |  -  | -  | learned |
| 160 | 65201:55160 |  65000:55160 |  -  | -  | learned |
| 161 | 65201:10161 |  65000:10161 |  -  | -  | learned |

#### Router BGP EVPN VRFs

| VRF | Route-Distinguisher | Redistribute |
| --- | ------------------- | ------------ |
| Common_VRF | 65201:1025 | connected |
| Tenant_A_APP_Zone | 65201:12 | connected |
| Tenant_A_DB_Zone | 65201:1300 | connected |
| Tenant_A_WAN_Zone | 65201:14 | connected |
| Tenant_A_WEB_Zone | 65201:11 | connected |

### Router BGP Device Configuration

```eos
!
router bgp 65201
   router-id 192.169.255.4
   no bgp default ipv4-unicast
   distance bgp 20 200 200
   graceful-restart restart-time 300
   graceful-restart
   maximum-paths 2 ecmp 2
   neighbor EVPN-OVERLAY-PEERS peer group
   neighbor EVPN-OVERLAY-PEERS remote-as 65200
   neighbor EVPN-OVERLAY-PEERS update-source Loopback0
   neighbor EVPN-OVERLAY-PEERS bfd
   neighbor EVPN-OVERLAY-PEERS ebgp-multihop 15
   neighbor EVPN-OVERLAY-PEERS password 7 q+VNViP5i4rVjW1cxFv2wA==
   neighbor EVPN-OVERLAY-PEERS send-community
   neighbor EVPN-OVERLAY-PEERS maximum-routes 0
   neighbor IPv4-UNDERLAY-PEERS peer group
   neighbor IPv4-UNDERLAY-PEERS remote-as 65200
   neighbor IPv4-UNDERLAY-PEERS password 7 AQQvKeimxJu+uGQ/yYvv9w==
   neighbor IPv4-UNDERLAY-PEERS send-community
   neighbor IPv4-UNDERLAY-PEERS maximum-routes 12000
   neighbor MLAG-IPv4-UNDERLAY-PEER peer group
   neighbor MLAG-IPv4-UNDERLAY-PEER remote-as 65201
   neighbor MLAG-IPv4-UNDERLAY-PEER next-hop-self
   neighbor MLAG-IPv4-UNDERLAY-PEER password 7 vnEaG8gMeQf3d3cN6PktXQ==
   neighbor MLAG-IPv4-UNDERLAY-PEER send-community
   neighbor MLAG-IPv4-UNDERLAY-PEER maximum-routes 12000
   neighbor 10.254.254.0 peer group MLAG-IPv4-UNDERLAY-PEER
   neighbor 172.32.250.1 peer group EVPN-OVERLAY-PEERS
   neighbor 172.32.250.1 remote-as 65100
   neighbor 172.32.250.1 description DC1-RS1
   neighbor 172.32.250.2 peer group EVPN-OVERLAY-PEERS
   neighbor 172.32.250.2 remote-as 65100
   neighbor 172.32.250.2 description DC1-RS2
   neighbor 172.32.255.4 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.32.255.6 peer group IPv4-UNDERLAY-PEERS
   redistribute connected route-map RM-CONN-2-BGP
   !
   vlan 12
      rd 65201:10012
      route-target both 65000:10012
      redistribute learned
   !
   vlan 110
      rd 65201:10110
      route-target both 65000:10110
      redistribute learned
   !
   vlan 111
      rd 65201:50111
      route-target both 65000:50111
      redistribute learned
   !
   vlan 112
      rd 65201:50112
      route-target both 65000:50112
      redistribute learned
   !
   vlan 120
      rd 65201:10120
      route-target both 65000:10120
      redistribute learned
   !
   vlan 121
      rd 65201:10121
      route-target both 65000:10121
      redistribute learned
   !
   vlan 130
      rd 65201:10130
      route-target both 65000:10130
      redistribute learned
   !
   vlan 131
      rd 65201:10131
      route-target both 65000:10131
      redistribute learned
   !
   vlan 140
      rd 65201:10140
      route-target both 65000:10140
      redistribute learned
   !
   vlan 141
      rd 65201:10141
      route-target both 65000:10141
      redistribute learned
   !
   vlan 150
      rd 65201:10150
      route-target both 65000:10150
      redistribute learned
   !
   vlan 160
      rd 65201:55160
      route-target both 65000:55160
      redistribute learned
   !
   vlan 161
      rd 65201:10161
      route-target both 65000:10161
      redistribute learned
   !
   address-family evpn
      neighbor EVPN-OVERLAY-PEERS activate
      no neighbor IPv4-UNDERLAY-PEERS activate
      no neighbor MLAG-IPv4-UNDERLAY-PEER activate
   !
   address-family ipv4
      no neighbor EVPN-OVERLAY-PEERS activate
      neighbor IPv4-UNDERLAY-PEERS activate
      neighbor MLAG-IPv4-UNDERLAY-PEER activate
   !
   vrf Common_VRF
      rd 65201:1025
      route-target import evpn 65000:1025
      route-target export evpn 65000:1025
      router-id 192.169.255.4
      redistribute connected
   !
   vrf Tenant_A_APP_Zone
      rd 65201:12
      route-target import evpn 65000:12
      route-target export evpn 65000:12
      router-id 192.169.255.4
      redistribute connected
   !
   vrf Tenant_A_DB_Zone
      rd 65201:1300
      route-target import evpn 65000:1300
      route-target export evpn 65000:1300
      router-id 192.169.255.4
      redistribute connected
   !
   vrf Tenant_A_WAN_Zone
      rd 65201:14
      route-target import evpn 65000:14
      route-target export evpn 65000:14
      router-id 192.169.255.4
      redistribute connected
   !
   vrf Tenant_A_WEB_Zone
      rd 65201:11
      route-target import evpn 65000:11
      route-target export evpn 65000:11
      router-id 192.169.255.4
      neighbor 10.254.254.0 peer group MLAG-IPv4-UNDERLAY-PEER
      redistribute connected
```

## Router BFD

### Router BFD Multihop Summary

| Interval | Minimum RX | Multiplier |
| -------- | ---------- | ---------- |
| 1200 | 1200 | 3 |

### Router BFD Multihop Device Configuration

```eos
!
router bfd
   multihop interval 1200 min-rx 1200 multiplier 3
```

# Multicast

## IP IGMP Snooping

### IP IGMP Snooping Summary

## Router Multicast

Routing multicast not defined

## Router PIM Sparse Mode

Router PIM sparse mode not defined

# Filters

## Community-lists

Community-lists not defined

## Peer Filters

No peer filters defined

## Prefix-lists

### Prefix-lists Summary

#### PL-LOOPBACKS-EVPN-OVERLAY

| Sequence | Action |
| -------- | ------ |
| 10 | permit 192.169.255.0/24 eq 32 |
| 20 | permit 192.169.254.0/24 eq 32 |

### Prefix-lists Device Configuration

```eos
!
ip prefix-list PL-LOOPBACKS-EVPN-OVERLAY
   seq 10 permit 192.169.255.0/24 eq 32
   seq 20 permit 192.169.254.0/24 eq 32
```

## IPv6 Prefix-lists

IPv6 prefix-lists not defined

## Route-maps

### Route-maps Summary

#### RM-CONN-2-BGP

| Sequence | Type | Match and/or Set |
| -------- | ---- | ---------------- |
| 10 | permit | match ip address prefix-list PL-LOOPBACKS-EVPN-OVERLAY |

### Route-maps Device Configuration

```eos
!
route-map RM-CONN-2-BGP permit 10
   match ip address prefix-list PL-LOOPBACKS-EVPN-OVERLAY
```

## IP Extended Communities

No extended community defined

# ACL

## Standard Access-lists

Standard access-lists not defined

## Extended Access-lists

Extended access-lists not defined

## IPv6 Standard Access-lists

IPv6 standard access-lists not defined

## IPv6 Extended Access-lists

IPv6 extended access-lists not defined

# VRF Instances

## VRF Instances Summary

| VRF Name | IP Routing |
| -------- | ---------- |
| Common_VRF | enabled |
| MGMT | disabled |
| Tenant_A_APP_Zone | enabled |
| Tenant_A_DB_Zone | enabled |
| Tenant_A_WAN_Zone | enabled |
| Tenant_A_WEB_Zone | enabled |

## VRF Instances Device Configuration

```eos
!
vrf instance Common_VRF
!
vrf instance MGMT
!
vrf instance Tenant_A_APP_Zone
!
vrf instance Tenant_A_DB_Zone
!
vrf instance Tenant_A_WAN_Zone
!
vrf instance Tenant_A_WEB_Zone
```

# Virtual Source NAT

## Virtual Source NAT Summary

| Source NAT VRF | Source NAT IP Address |
| -------------- | --------------------- |
| Common_VRF | 10.255.1.4 |

## Virtual Source NAT Configuration

```eos
!
ip address virtual source-nat vrf Common_VRF address 10.255.1.4
```

# Platform

No platform parameters defined

# Router L2 VPN

Router L2 VPN not defined

# IP DHCP Relay

IP DHCP relay not defined

# Custom Templates

No custom templates defined
