# EAPI-BL01A

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
  - [Router ISIS](#router-isis)
  - [Router BGP](#router-bgp)
  - [Router BFD](#router-bfd)
- [Multicast](#multicast)
  - [IP IGMP Snooping](#ip-igmp-snooping)
  - [Router Multicast](#router-multicast)
  - [Router PIM Sparse Mode](#router-pim-sparse-mode)
- [Filters](#filters)
  - [Community Lists](#community-lists)
  - [Peer Filters](#peer-filters)
  - [Prefix Lists](#prefix-lists)
  - [IPv6 Prefix Lists](#ipv6-prefix-lists)
  - [Route Maps](#route-maps)
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

IPv4

| Management Interface | description | VRF | IP Address | Gateway |
| -------------------- | ----------- | --- | ---------- | ------- |
| Management1 | oob_management | MGMT | 10.73.254.15/24 | 10.73.254.253 |

IPv6

| Management Interface | description | VRF | IPv6 Address | IPv6 Gateway |
| -------------------- | ----------- | --- | ------------ | ------------ |
| Management1 | oob_management | MGMT | not configured  | not configured |

### Management Interfaces Device Configuration

```eos
!
interface Management1
   description oob_management
   vrf MGMT
   ip address 10.73.254.15/24
```

## DNS Domain

DNS domain not defined

## Domain-List

Domain-list not defined

## Name Servers

### Name Servers Summary

| Name Server | Source VRF |
| ----------- | ---------- |
| 10.73.254.253 | MGMT |
| 10.73.1.254 | MGMT |

### Name Servers Device Configuration

```eos
ip name-server vrf MGMT 10.73.1.254
ip name-server vrf MGMT 10.73.254.253
```

## Domain Lookup

DNS domain lookup not defined

## NTP

### NTP Summary

Local Interface: Management1

VRF: MGMT

| Node | Primary |
| ---- | ------- |
| 10.73.254.253 | true |
| 10.73.1.254 | - |

### NTP Device Configuration

```eos
!
ntp local-interface vrf MGMT Management1
ntp server vrf MGMT 10.73.254.253 prefer
ntp server vrf MGMT 10.73.1.254
```

## Management SSH

Management SSH is not defined

## Management API GNMI

Management API gnmi is not defined
  
## Management API HTTP


### Management API HTTP Summary

| HTTP | HTTPS |
| ---------- | ---------- |
|  default  |  True  |

### Management API VRF Access

| VRF Name | IPv4 ACL | IPv6 ACL |
| -------- | -------- | -------- |
| MGMT |  Not defined  |  Not defined  |

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

| User | Privilege | role |
| ---- | --------- | ---- |
| admin | 15 | network-admin |
| ansible | 15 | network-admin |
| cvpadmin | 15 | network-admin |
| demo | 15 | network-admin |

### Local Users Device Configuration

```eos
!
username admin privilege 15 role network-admin nopassword
username ansible privilege 15 role network-admin secret sha512 $6$Dzu11L7yp9j3nCM9$FSptxMPyIL555OMO.ldnjDXgwZmrfMYwHSr0uznE5Qoqvd9a6UdjiFcJUhGLtvXVZR1r.A/iF5aAt50hf/EK4/
username cvpadmin privilege 15 role network-admin secret sha512 $6$rZKcbIZ7iWGAWTUM$TCgDn1KcavS0s.OV8lacMTUkxTByfzcGlFlYUWroxYuU7M/9bIodhRO7nXGzMweUxvbk8mJmQl8Bh44cRktUj.
username demo privilege 15 role network-admin secret sha512 $6$Dzu11L7yp9j3nCM9$FSptxMPyIL555OMO.ldnjDXgwZmrfMYwHSr0uznE5Qoqvd9a6UdjiFcJUhGLtvXVZR1r.A/iF5aAt50hf/EK4/
```

## TACACS Servers

TACACS servers not configured

## IP TACACS Source Interfaces

IP TACACS source interfaces not defined

## RADIUS Servers

RADIUS servers not configured

## AAA Server Groups

AAA server groups not defined

## AAA Authentication

AAA authentication not defined

## AAA Authorization

AAA authorization not defined

## AAA Accounting

AAA accounting not defined

# Management Security

Management Security not defined

# Aliases

Aliases not defined

# Monitoring

## TerminAttr Daemon

### TerminAttr Daemon Summary

| CV Compression | Ingest gRPC URL | Ingest Authentication Key | Smash Excludes | Ingest Exclude | Ingest VRF |  NTP VRF |
| -------------- | --------------- | ------------------------- | -------------- | -------------- | ---------- | -------- |
| gzip | 10.73.254.1:9910 |  | ale,flexCounter,hardware,kni,pulse,strata | /Sysdb/cell/1/agent,/Sysdb/cell/2/agent | MGMT | MGMT |

### TerminAttr Daemon Device Configuration

```eos
!
daemon TerminAttr
   exec /usr/bin/TerminAttr -ingestgrpcurl=10.73.254.1:9910 -cvcompression=gzip -ingestauth=key, -smashexcludes=ale,flexCounter,hardware,kni,pulse,strata -ingestexclude=/Sysdb/cell/1/agent,/Sysdb/cell/2/agent -ingestvrf=MGMT -taillogs
   no shutdown
```

## Logging

No logging settings defined

## SFlow

No sFlow defined

## Hardware Counters

No Hardware Counters defined

## VM Tracer Sessions

No VM tracer session defined

## Event Handler

No Event Handler Defined

# MLAG

## MLAG Summary

| domain-id | local-interface | peer-address | peer-link |
| --------- | --------------- | ------------ | --------- |
| EAPI_BL01 | Vlan4094 | 10.255.252.13 | Port-Channel3 |

Dual primary detection is enabled. The detection delay is 5 seconds.

## MLAG Device Configuration

```eos
!
mlag configuration
   domain-id EAPI_BL01
   local-interface Vlan4094
   peer-address 10.255.252.13
   peer-address heartbeat 10.73.254.16 vrf MGMT
   peer-link Port-Channel3
   dual-primary detection delay 5 action errdisable all-interfaces
   reload-delay mlag 300
   reload-delay non-mlag 330
```

# Spanning Tree

## Spanning Tree Summary

Mode: mstp

**MSTP Instance and Priority**:

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
| 4093 | LEAF_PEER_L3 | LEAF_PEER_L3  |
| 4094 | MLAG_PEER | MLAG  |

## VLANs Device Configuration

```eos
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
| Ethernet1 | P2P_LINK_TO_EAPI-SPINE1_Ethernet5 | 1500 | routed | access | - | - | - | 172.31.255.25/31 | - | - |
| Ethernet2 | P2P_LINK_TO_EAPI-SPINE2_Ethernet5 | 1500 | routed | access | - | - | - | 172.31.255.27/31 | - | - |
| Ethernet3 | MLAG_PEER_EAPI-BL01B_Ethernet3 | *1500 | *switched | *trunk | *2-4094 | *LEAF_PEER_L3<br> *MLAG | - | - | 3 | active |
| Ethernet4 | MLAG_PEER_EAPI-BL01B_Ethernet4 | *1500 | *switched | *trunk | *2-4094 | *LEAF_PEER_L3<br> *MLAG | - | - | 3 | active |

*Inherited from Port-Channel Interface

### Ethernet Interfaces Device Configuration

```eos
!
interface Ethernet1
   description P2P_LINK_TO_EAPI-SPINE1_Ethernet5
   no switchport
   ip address 172.31.255.25/31
   isis enable EVPN_UNDERLAY
   isis metric 50
   isis network point-to-point
!
interface Ethernet2
   description P2P_LINK_TO_EAPI-SPINE2_Ethernet5
   no switchport
   ip address 172.31.255.27/31
   isis enable EVPN_UNDERLAY
   isis metric 50
   isis network point-to-point
!
interface Ethernet3
   description MLAG_PEER_EAPI-BL01B_Ethernet3
   channel-group 3 mode active
!
interface Ethernet4
   description MLAG_PEER_EAPI-BL01B_Ethernet4
   channel-group 3 mode active
```

## Port-Channel Interfaces

### Port-Channel Interfaces Summary

| Interface | Description | MTU | Type | Mode | Allowed VLANs (trunk) | Trunk Group | LACP Fallback Timeout | LACP Fallback Mode | MLAG ID | EVPN ESI | VRF | IP Address | IPv6 Address |
| --------- | ----------- | --- | ---- | ---- | --------------------- | ----------- | --------------------- ! ------------------ | ------- | -------- | --- | ---------- | ------------ |
| Port-Channel3 | MLAG_PEER_EAPI-BL01B_Po3 | 1500 | switched | trunk | 2-4094 | LEAF_PEER_L3<br> MLAG | - | - | - | - | - | - | - |

### Port-Channel Interfaces Device Configuration

```eos
!
interface Port-Channel3
   description MLAG_PEER_EAPI-BL01B_Po3
   switchport trunk allowed vlan 2-4094
   switchport mode trunk
   switchport trunk group LEAF_PEER_L3
   switchport trunk group MLAG
```

## Loopback Interfaces

### Loopback Interfaces Summary

IPv4

| Interface | Description | VRF | IP Address |
| --------- | ----------- | --- | ---------- |
| Loopback0 | EVPN_Overlay_Peering | Global Routing Table | 192.168.255.9/32 |
| Loopback1 | VTEP_VXLAN_Tunnel_Source | Global Routing Table | 192.168.254.9/32 |

IPv6

| Interface | Description | VRF | IPv6 Address |
| --------- | ----------- | --- | ------------ |
| Loopback0 | EVPN_Overlay_Peering | Global Routing Table | - |
| Loopback1 | VTEP_VXLAN_Tunnel_Source | Global Routing Table | - |

### Loopback Interfaces Device Configuration

```eos
!
interface Loopback0
   description EVPN_Overlay_Peering
   ip address 192.168.255.9/32
   isis enable EVPN_UNDERLAY
   isis passive
!
interface Loopback1
   description VTEP_VXLAN_Tunnel_Source
   ip address 192.168.254.9/32
   isis enable EVPN_UNDERLAY
   isis passive
```

## VLAN Interfaces

### VLAN Interfaces Summary

| Interface | Description | VRF | IP Address | IP Address Virtual | IP Router Virtual Address (vARP) |
| --------- | ----------- | --- | ---------- | ------------------ | -------------------------------- |
| Vlan4093 | MLAG_PEER_L3_PEERING | Global Routing Table | 10.255.251.12/31 | - | - |
| Vlan4094 | MLAG_PEER | Global Routing Table | 10.255.252.12/31 | - | - |

### VLAN Interfaces Device Configuration

```eos
!
interface Vlan4093
   description MLAG_PEER_L3_PEERING
   ip address 10.255.251.12/31
   isis enable EVPN_UNDERLAY
   isis metric 50
   isis network point-to-point
!
interface Vlan4094
   description MLAG_PEER
   no autostate
   ip address 10.255.252.12/31
```

## VXLAN Interface

### VXLAN Interface Summary

**Source Interface:** Loopback1
**UDP port:** 4789

**VLAN to VNI Mappings:**

| VLAN | VNI |
| ---- | --- |
| N/A | N/A |

### VXLAN Interface Device Configuration

```eos
!
interface Vxlan1
   vxlan source-interface Loopback1
   vxlan virtual-router encapsulation mac-address mlag-system-id
   vxlan udp-port 4789
```

# Routing

## Virtual Router MAC Address


### Virtual Router MAC Address Summary

**Virtual Router MAC Address:** 00:1c:73:00:dc:01

### Virtual Router MAC Address Configuration

```eos
!
ip virtual-router mac-address 00:1c:73:00:dc:01
```

## IP Routing

### IP Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default |  True| | MGMT | False |


### IP Routing Device Configuration

```eos
!
ip routing
no ip routing vrf MGMT
```
## IPv6 Routing

### IPv6 Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default |  False | | MGMT | False |


## Static Routes


### Static Routes Summary

| VRF | Destination Prefix | Next Hop IP             | Exit interface      | Administrative Distance       | Tag               | Route Name                    | Metric         |
| --- | ------------------ | ----------------------- | ------------------- | ----------------------------- | ----------------- | ----------------------------- | -------------- |
| MGMT  | 0.0.0.0/0 |  10.73.254.253  |  -  |  Default  |  -  |  -  |  - |

### Static Routes Device Configuration

```eos
!
ip route vrf MGMT 0.0.0.0/0 10.73.254.253
```

## IPv6 Static Routes


## Router ISIS

### Router ISIS Summary

| Settings | Value |
| -------- | ----- |
| Instance | EVPN_UNDERLAY |
| Net-ID | 49.0001.0001.0001.0007.00 |
| Type | level-2 |
| Address Family | ipv4 unicast |

### Router ISIS Device Configuration

```eos
router isis EVPN_UNDERLAY
   net 49.0001.0001.0001.0007.00
   is-type level-2
   router-id ipv4 192.168.255.9
   log-adjacency-changes
   !
   address-family ipv4 unicast
      maximum-paths 2
   !
!
```


## Router BGP

### Router BGP Summary

| BGP AS | Router ID |
| ------ | --------- |
| 65105|  192.168.255.9 |

| BGP Tuning |
| ---------- |
| no bgp default ipv4-unicast |
| distance bgp 20 200 200 |
| graceful-restart restart-time 300 |
| graceful-restart |
| maximum-paths 2 ecmp 2 |

### Router BGP Peer Groups

**EVPN-OVERLAY-PEERS**:

| Settings | Value |
| -------- | ----- |
| Address Family | evpn |
| remote_as | 65001 |
| source | Loopback0 |
| bfd | true |
| ebgp multihop | 3 |
| send community | true |
| maximum routes | 0 (no limit) |

### BGP Neighbors

| Neighbor | Remote AS |
| -------- | ---------
| 192.168.255.1 | Inherited from peer group EVPN-OVERLAY-PEERS |
| 192.168.255.2 | Inherited from peer group EVPN-OVERLAY-PEERS |

### Router BGP EVPN Address Family

#### Router BGP EVPN MAC-VRFs

#### Router BGP EVPN VRFs

### Router BGP Device Configuration

```eos
!
router bgp 65105
   router-id 192.168.255.9
   no bgp default ipv4-unicast
   distance bgp 20 200 200
   graceful-restart restart-time 300
   graceful-restart
   maximum-paths 2 ecmp 2
   neighbor EVPN-OVERLAY-PEERS peer group
   neighbor EVPN-OVERLAY-PEERS remote-as 65001
   neighbor EVPN-OVERLAY-PEERS update-source Loopback0
   neighbor EVPN-OVERLAY-PEERS bfd
   neighbor EVPN-OVERLAY-PEERS ebgp-multihop 3
   neighbor EVPN-OVERLAY-PEERS password 7 q+VNViP5i4rVjW1cxFv2wA==
   neighbor EVPN-OVERLAY-PEERS send-community
   neighbor EVPN-OVERLAY-PEERS maximum-routes 0
   neighbor 192.168.255.1 peer group EVPN-OVERLAY-PEERS
   neighbor 192.168.255.2 peer group EVPN-OVERLAY-PEERS
   !
   address-family evpn
      neighbor EVPN-OVERLAY-PEERS activate
   !
   address-family ipv4
      no neighbor EVPN-OVERLAY-PEERS activate
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

## Community Lists

Community Lists not defined

## Peer Filters

No Peer Filters defined

## Prefix Lists

Prefix lists not defined

## IPv6 Prefix Lists

IPv6 Prefix lists not defined

## Route Maps

No route maps defined

## IP Extended Communities

No Extended community defined

# ACL

## Standard Access-lists

Standard Access-lists not defined

## Extended Access-lists

Extended Access-lists not defined

## IPv6 Standard Access-lists

IPv6 Standard Access-lists not defined

## IPv6 Extended Access-lists

IPv6 Extended Access-lists not defined

# VRF Instances

## VRF Instances Summary

| VRF Name | IP Routing |
| -------- | ---------- |
| MGMT |  disabled |

## VRF Instances Device Configuration

```eos
!
vrf instance MGMT
```

# Virtual Source NAT

Virtual Source NAT is not defined

# Platform

No Platform parameters defined

# Router L2 VPN

Router L2 VPN not defined

# IP DHCP Relay

IP DHCP Relay not defined

# Custom Templates

No Custom Templates Defined
