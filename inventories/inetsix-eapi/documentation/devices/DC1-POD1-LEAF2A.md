# DC1-POD1-LEAF2A

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
| Management1 | oob_management | MGMT | 192.168.0.14/24 | 192.168.200.1 |

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
   ip address 192.168.0.14/24
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
| DC1_POD1_LEAF2 | Vlan4094 | 10.255.252.5 | Port-Channel1 |

Dual primary detection is enabled. The detection delay is 5 seconds.

## MLAG Device Configuration

```eos
!
mlag configuration
   domain-id DC1_POD1_LEAF2
   local-interface Vlan4094
   peer-address 10.255.252.5
   peer-address heartbeat 192.168.0.15 vrf MGMT
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
| 310 | Tenant_C_OP_Zone_1 | none  |
| 311 | Tenant_C_OP_Zone_2 | none  |
| 350 | Tenant_C_WAN_Zone_1 | none  |
| 3030 | MLAG_iBGP_Tenant_C_WAN_Zone | LEAF_PEER_L3  |
| 4025 | MLAG_iBGP_Common_VRF | LEAF_PEER_L3  |
| 4093 | LEAF_PEER_L3 | LEAF_PEER_L3  |
| 4094 | MLAG_PEER | MLAG  |

## VLANs Device Configuration

```eos
!
vlan 310
   name Tenant_C_OP_Zone_1
!
vlan 311
   name Tenant_C_OP_Zone_2
!
vlan 350
   name Tenant_C_WAN_Zone_1
!
vlan 3030
   name MLAG_iBGP_Tenant_C_WAN_Zone
   trunk group LEAF_PEER_L3
!
vlan 4025
   name MLAG_iBGP_Common_VRF
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
| Ethernet1 | MLAG_PEER_DC1-POD1-LEAF2B_Ethernet1 | *1500 | *switched | *trunk | *2-4094 | *LEAF_PEER_L3<br> *MLAG | - | - | 1 | active |
| Ethernet2 | P2P_LINK_TO_DC1-POD1-SPINE1_Ethernet4 | 1500 | routed | access | - | - | - | 172.31.255.9/31 | - | - |
| Ethernet3 | P2P_LINK_TO_DC1-POD1-SPINE2_Ethernet4 | 1500 | routed | access | - | - | - | 172.31.255.11/31 | - | - |
| Ethernet6 | MLAG_PEER_DC1-POD1-LEAF2B_Ethernet6 | *1500 | *switched | *trunk | *2-4094 | *LEAF_PEER_L3<br> *MLAG | - | - | 1 | active |
| Ethernet7 | DC1-POD1-L2LEAF2A_Ethernet1 | *1500 | *switched | *trunk | * | - | - | - | 7 | active |
| Ethernet8 | server-1_Eth2 | *1500 | *switched | *trunk | *120-130,160-161 | - | - | - | 8 | active |

*Inherited from Port-Channel Interface


### Ethernet Interfaces Device Configuration

```eos
!
interface Ethernet1
   description MLAG_PEER_DC1-POD1-LEAF2B_Ethernet1
   channel-group 1 mode active
!
interface Ethernet2
   description P2P_LINK_TO_DC1-POD1-SPINE1_Ethernet4
   no switchport
   ip address 172.31.255.9/31
!
interface Ethernet3
   description P2P_LINK_TO_DC1-POD1-SPINE2_Ethernet4
   no switchport
   ip address 172.31.255.11/31
!
interface Ethernet6
   description MLAG_PEER_DC1-POD1-LEAF2B_Ethernet6
   channel-group 1 mode active
!
interface Ethernet7
   description DC1-POD1-L2LEAF2A_Ethernet1
   channel-group 7 mode active
!
interface Ethernet8
   description server-1_Eth2
   channel-group 8 mode active
```

## Port-Channel Interfaces

### Port-Channel Interfaces Summary

| Interface | Description | MTU | Type | Mode | Allowed VLANs (trunk) | Trunk Group | LACP Fallback Timeout | LACP Fallback Mode | MLAG ID | EVPN ESI | VRF | IP Address | IPv6 Address |
| --------- | ----------- | --- | ---- | ---- | --------------------- | ----------- | --------------------- ! ------------------ | ------- | -------- | --- | ---------- | ------------ |
| Port-Channel1 | MLAG_PEER_DC1-POD1-LEAF2B_Po1 | 1500 | switched | trunk | 2-4094 | LEAF_PEER_L3<br> MLAG | - | - | - | - | - | - | - |
| Port-Channel7 | DC1_POD1_L2LEAF2_Po1 | 1500 | switched | trunk |  | - | - | - | 7 | - | - | - | - |
| Port-Channel8 | server-1_PortChanne1 | 1500 | switched | trunk | 120-130,160-161 | - | - | - | 8 | - | - | - | - |

### Port-Channel Interfaces Device Configuration

```eos
!
interface Port-Channel1
   description MLAG_PEER_DC1-POD1-LEAF2B_Po1
   switchport trunk allowed vlan 2-4094
   switchport mode trunk
   switchport trunk group LEAF_PEER_L3
   switchport trunk group MLAG
!
interface Port-Channel7
   description DC1_POD1_L2LEAF2_Po1
   switchport trunk allowed vlan 
   switchport mode trunk
   mlag 7
!
interface Port-Channel8
   description server-1_PortChanne1
   switchport trunk allowed vlan 120-130,160-161
   switchport mode trunk
   mlag 8
```

## Loopback Interfaces

### Loopback Interfaces Summary

#### IPv4

| Interface | Description | VRF | IP Address |
| --------- | ----------- | --- | ---------- |
| Loopback0 | EVPN_Overlay_Peering | default | 192.168.255.5/32 |
| Loopback1 | VTEP_VXLAN_Tunnel_Source | default | 192.168.254.5/32 |

#### IPv6

| Interface | Description | VRF | IPv6 Address |
| --------- | ----------- | --- | ------------ |
| Loopback0 | EVPN_Overlay_Peering | default | - |
| Loopback1 | VTEP_VXLAN_Tunnel_Source | default | - |


### Loopback Interfaces Device Configuration

```eos
!
interface Loopback0
   description EVPN_Overlay_Peering
   ip address 192.168.255.5/32
!
interface Loopback1
   description VTEP_VXLAN_Tunnel_Source
   ip address 192.168.254.5/32
```

## VLAN Interfaces

### VLAN Interfaces Summary

| Interface | Description | VRF | IP Address | IP Address Virtual | IP Router Virtual Address (vARP) |
| --------- | ----------- | --- | ---------- | ------------------ | -------------------------------- |
| Vlan310 | Tenant_C_OP_Zone_1 | Common_VRF | - | - | - |
| Vlan311 | Tenant_C_OP_Zone_2 | Common_VRF | - | - | - |
| Vlan350 | Tenant_C_WAN_Zone_1 | Tenant_C_WAN_Zone | - | - | - |
| Vlan3030 | MLAG_PEER_L3_iBGP: vrf Tenant_C_WAN_Zone | Tenant_C_WAN_Zone | 10.255.254.4/31 | - | - |
| Vlan4025 | MLAG_PEER_L3_iBGP: vrf Common_VRF | Common_VRF | 10.255.254.4/31 | - | - |
| Vlan4093 | MLAG_PEER_L3_PEERING | default | 10.255.254.4/31 | - | - |
| Vlan4094 | MLAG_PEER | default | 10.255.252.4/31 | - | - |


### VLAN Interfaces Device Configuration

```eos
!
interface Vlan310
   description Tenant_C_OP_Zone_1
   vrf Common_VRF
!
interface Vlan311
   description Tenant_C_OP_Zone_2
   vrf Common_VRF
!
interface Vlan350
   description Tenant_C_WAN_Zone_1
   vrf Tenant_C_WAN_Zone
!
interface Vlan3030
   description MLAG_PEER_L3_iBGP: vrf Tenant_C_WAN_Zone
   vrf Tenant_C_WAN_Zone
   ip address 10.255.254.4/31
!
interface Vlan4025
   description MLAG_PEER_L3_iBGP: vrf Common_VRF
   vrf Common_VRF
   ip address 10.255.254.4/31
!
interface Vlan4093
   description MLAG_PEER_L3_PEERING
   ip address 10.255.254.4/31
!
interface Vlan4094
   description MLAG_PEER
   no autostate
   ip address 10.255.252.4/31
```

## VXLAN Interface

### VXLAN Interface Summary

#### Source Interface: Loopback1

#### UDP port: 4789

#### VLAN to VNI Mappings

| VLAN | VNI |
| ---- | --- |
| 310 | 30310 |
| 311 | 30311 |
| 350 | 30350 |

#### VRF to VNI Mappings

| VLAN | VNI |
| ---- | --- |
| Common_VRF | 1026 |
| Tenant_C_WAN_Zone | 31 |

### VXLAN Interface Device Configuration

```eos
!
interface Vxlan1
   vxlan source-interface Loopback1
   vxlan virtual-router encapsulation mac-address mlag-system-id
   vxlan udp-port 4789
   vxlan vlan 310 vni 30310
   vxlan vlan 311 vni 30311
   vxlan vlan 350 vni 30350
   vxlan vrf Common_VRF vni 1026
   vxlan vrf Tenant_C_WAN_Zone vni 31
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
| Tenant_C_WAN_Zone | true |

### IP Routing Device Configuration

```eos
!
ip routing
ip routing vrf Common_VRF
no ip routing vrf MGMT
ip routing vrf Tenant_C_WAN_Zone
```

## IPv6 Routing

### IPv6 Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default | false || Common_VRF | false |
| MGMT | false |
| Tenant_C_WAN_Zone | false |


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
| 65102|  192.168.255.5 |

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
| Remote_as | 65100 |
| Source | Loopback0 |
| Bfd | true |
| Ebgp multihop | 15 |
| Send community | true |
| Maximum routes | 0 (no limit) |

#### IPv4-UNDERLAY-PEERS

| Settings | Value |
| -------- | ----- |
| Address Family | ipv4 |
| Remote_as | 65100 |
| Send community | true |
| Maximum routes | 12000 |

#### MLAG-IPv4-UNDERLAY-PEER

| Settings | Value |
| -------- | ----- |
| Address Family | ipv4 |
| Remote_as | 65102 |
| Next-hop self | True |
| Send community | true |
| Maximum routes | 12000 |

### BGP Neighbors

| Neighbor | Remote AS |
| -------- | ---------
| 10.255.254.5 | Inherited from peer group MLAG-IPv4-UNDERLAY-PEER |
| 172.31.255.8 | Inherited from peer group IPv4-UNDERLAY-PEERS |
| 172.31.255.10 | Inherited from peer group IPv4-UNDERLAY-PEERS |
| 172.32.250.1 | 65100 |
| 172.32.250.2 | 65100 |

### Router BGP EVPN Address Family

#### Router BGP EVPN MAC-VRFs

##### VLAN Based

| VLAN | Route-Distinguisher | Both Route-Target | Import Route Target | Export Route-Target | Redistribute |
| ---- | ------------------- | ----------------- | ------------------- | ------------------- | ------------ |
| 310 | 65102:30310 |  65000:30310 |  -  | -  | learned |
| 311 | 65102:30311 |  65000:30311 |  -  | -  | learned |
| 350 | 65102:30350 |  65000:30350 |  -  | -  | learned |

#### Router BGP EVPN VRFs

| VRF | Route-Distinguisher | Redistribute |
| --- | ------------------- | ------------ |
| Common_VRF | 65102:1026 | connected |
| Tenant_C_WAN_Zone | 65102:31 | connected |

### Router BGP Device Configuration

```eos
!
router bgp 65102
   router-id 192.168.255.5
   no bgp default ipv4-unicast
   distance bgp 20 200 200
   graceful-restart restart-time 300
   graceful-restart
   maximum-paths 2 ecmp 2
   neighbor EVPN-OVERLAY-PEERS peer group
   neighbor EVPN-OVERLAY-PEERS remote-as 65100
   neighbor EVPN-OVERLAY-PEERS update-source Loopback0
   neighbor EVPN-OVERLAY-PEERS bfd
   neighbor EVPN-OVERLAY-PEERS ebgp-multihop 15
   neighbor EVPN-OVERLAY-PEERS password 7 q+VNViP5i4rVjW1cxFv2wA==
   neighbor EVPN-OVERLAY-PEERS send-community
   neighbor EVPN-OVERLAY-PEERS maximum-routes 0
   neighbor IPv4-UNDERLAY-PEERS peer group
   neighbor IPv4-UNDERLAY-PEERS remote-as 65100
   neighbor IPv4-UNDERLAY-PEERS password 7 AQQvKeimxJu+uGQ/yYvv9w==
   neighbor IPv4-UNDERLAY-PEERS send-community
   neighbor IPv4-UNDERLAY-PEERS maximum-routes 12000
   neighbor MLAG-IPv4-UNDERLAY-PEER peer group
   neighbor MLAG-IPv4-UNDERLAY-PEER remote-as 65102
   neighbor MLAG-IPv4-UNDERLAY-PEER next-hop-self
   neighbor MLAG-IPv4-UNDERLAY-PEER password 7 vnEaG8gMeQf3d3cN6PktXQ==
   neighbor MLAG-IPv4-UNDERLAY-PEER send-community
   neighbor MLAG-IPv4-UNDERLAY-PEER maximum-routes 12000
   neighbor 10.255.254.5 peer group MLAG-IPv4-UNDERLAY-PEER
   neighbor 172.31.255.8 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.10 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.32.250.1 peer group EVPN-OVERLAY-PEERS
   neighbor 172.32.250.1 remote-as 65100
   neighbor 172.32.250.1 description DC1-RS1
   neighbor 172.32.250.2 peer group EVPN-OVERLAY-PEERS
   neighbor 172.32.250.2 remote-as 65100
   neighbor 172.32.250.2 description DC1-RS2
   redistribute connected route-map RM-CONN-2-BGP
   !
   vlan 310
      rd 65102:30310
      route-target both 65000:30310
      redistribute learned
   !
   vlan 311
      rd 65102:30311
      route-target both 65000:30311
      redistribute learned
   !
   vlan 350
      rd 65102:30350
      route-target both 65000:30350
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
      rd 65102:1026
      route-target import evpn 65000:1026
      route-target export evpn 65000:1026
      router-id 192.168.255.5
      neighbor 10.255.254.5 peer group MLAG-IPv4-UNDERLAY-PEER
      redistribute connected
   !
   vrf Tenant_C_WAN_Zone
      rd 65102:31
      route-target import evpn 65000:31
      route-target export evpn 65000:31
      router-id 192.168.255.5
      neighbor 10.255.254.5 peer group MLAG-IPv4-UNDERLAY-PEER
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
| 10 | permit 192.168.255.0/24 eq 32 |
| 20 | permit 192.168.254.0/24 eq 32 |

### Prefix-lists Device Configuration

```eos
!
ip prefix-list PL-LOOPBACKS-EVPN-OVERLAY
   seq 10 permit 192.168.255.0/24 eq 32
   seq 20 permit 192.168.254.0/24 eq 32
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
| Tenant_C_WAN_Zone | enabled |

## VRF Instances Device Configuration

```eos
!
vrf instance Common_VRF
!
vrf instance MGMT
!
vrf instance Tenant_C_WAN_Zone
```

# Virtual Source NAT

Virtual source NAT not defined

# Platform

No platform parameters defined

# Router L2 VPN

Router L2 VPN not defined

# IP DHCP Relay

IP DHCP relay not defined

# Custom Templates

No custom templates defined
