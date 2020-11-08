# DC1-SPINE1

# Table of Contents

- [Management](#management)  
  - [Management Interfaces](#management-interfaces)  
  - [DNS Domain](#dns-domain)  
  - [Name Servers](#name-servers)  
  - [Domain Lookup](#domain-lookup)  
  - [NTP](#ntp) 
  - [Management SSH](#management-ssh) 
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
| Management1 | oob_management | MGMT | 10.73.255.101/24 | 10.73.255.2 |

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
   ip address 10.73.255.101/24
```

## DNS Domain

DNS domain not defined

## Name Servers

### Name Servers Summary

| Name Server | Source VRF |
| ----------- | ---------- |
| 10.73.255.2 | MGMT |

### Name Servers Device Configuration

```eos
ip name-server vrf MGMT 10.73.255.2
```

## Domain Lookup

DNS domain lookup not defined

## NTP

### NTP Summary

Local Interface: Management1

VRF: MGMT


| Node | Primary |
| ---- | ------- |
| 91.224.149.41 | true |
| 37.59.63.125 | - |
| 188.165.240.21 | - |

### NTP Device Configuration

```eos
!
ntp local-interface vrf MGMT Management1
ntp server vrf MGMT 91.224.149.41 prefer
ntp server vrf MGMT 37.59.63.125
ntp server vrf MGMT 188.165.240.21
```

## Management SSH 


Management SSH is not defined

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
| gzip | 10.73.255.1:9910 |  | ale,flexCounter,hardware,kni,pulse,strata | /Sysdb/cell/1/agent,/Sysdb/cell/2/agent | MGMT | MGMT |

### TerminAttr Daemon Device Configuration

```eos
!
daemon TerminAttr
   exec /usr/bin/TerminAttr -ingestgrpcurl=10.73.255.1:9910 -cvcompression=gzip -ingestauth=key, -smashexcludes=ale,flexCounter,hardware,kni,pulse,strata -ingestexclude=/Sysdb/cell/1/agent,/Sysdb/cell/2/agent -ingestvrf=MGMT -taillogs
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

MLAG not defined

# Spanning Tree

### Spanning Tree Summary

Mode: none


### Spanning Tree Device Configuration

```eos
!
spanning-tree mode none
```

# Internal VLAN Allocation Policy

### Internal VLAN Allocation Policy Summary

| Policy Allocation | Range Beginning | Range Ending |
| ------------------| --------------- | ------------ |
| ascending | 1006 | 1199 |

### Internal VLAN Allocation Policy Configuration

```eos
!
vlan internal order ascending range 1006 1199
```

# VLANs

No VLANs defined

# Interfaces

## Ethernet Interfaces

### Ethernet Interfaces Summary

| Interface | Description | MTU | Type | Mode | Allowed VLANs (Trunk) | Trunk Group | VRF | IP Address | Channel-Group ID | Channel-Group Type |
| --------- | ----------- | --- | ---- | ---- | --------------------- | ----------- | --- | ---------- | ---------------- | ------------------ |
| Ethernet1 | P2P_LINK_TO_DC1-LEAF1A_Ethernet1 | 1500 | routed | access | - | - | - | 172.31.255.0/31 | - | - |
| Ethernet2 | P2P_LINK_TO_DC1-LEAF1B_Ethernet1 | 1500 | routed | access | - | - | - | 172.31.255.4/31 | - | - |
| Ethernet3 | P2P_LINK_TO_DC1-LEAF2A_Ethernet1 | 1500 | routed | access | - | - | - | 172.31.255.8/31 | - | - |
| Ethernet4 | P2P_LINK_TO_DC1-LEAF2B_Ethernet1 | 1500 | routed | access | - | - | - | 172.31.255.12/31 | - | - |
| Ethernet5 | P2P_LINK_TO_DC1-BL01A_Ethernet1 | 1500 | routed | access | - | - | - | 172.31.255.24/31 | - | - |
| Ethernet6 | P2P_LINK_TO_DC1-BL01B_Ethernet1 | 1500 | routed | access | - | - | - | 172.31.255.28/31 | - | - |
| Ethernet7 | P2P_LINK_TO_DC1-LEAF3A_Ethernet1 | 1500 | routed | access | - | - | - | 172.31.255.16/31 | - | - |
| Ethernet8 | P2P_LINK_TO_DC1-LEAF4A_Ethernet1 | 1500 | routed | access | - | - | - | 172.31.255.20/31 | - | - |

*Inherited from Port-Channel Interface

### Ethernet Interfaces Device Configuration

```eos
!
interface Ethernet1
   description P2P_LINK_TO_DC1-LEAF1A_Ethernet1
   no switchport
   ip address 172.31.255.0/31
!
interface Ethernet2
   description P2P_LINK_TO_DC1-LEAF1B_Ethernet1
   no switchport
   ip address 172.31.255.4/31
!
interface Ethernet3
   description P2P_LINK_TO_DC1-LEAF2A_Ethernet1
   no switchport
   ip address 172.31.255.8/31
!
interface Ethernet4
   description P2P_LINK_TO_DC1-LEAF2B_Ethernet1
   no switchport
   ip address 172.31.255.12/31
!
interface Ethernet5
   description P2P_LINK_TO_DC1-BL01A_Ethernet1
   no switchport
   ip address 172.31.255.24/31
!
interface Ethernet6
   description P2P_LINK_TO_DC1-BL01B_Ethernet1
   no switchport
   ip address 172.31.255.28/31
!
interface Ethernet7
   description P2P_LINK_TO_DC1-LEAF3A_Ethernet1
   no switchport
   ip address 172.31.255.16/31
!
interface Ethernet8
   description P2P_LINK_TO_DC1-LEAF4A_Ethernet1
   no switchport
   ip address 172.31.255.20/31
```

## Port-Channel Interfaces

No Port-Channels defined

## Loopback Interfaces

### Loopback Interfaces Summary

IPv4

| Interface | Description | VRF | IP Address |
| --------- | ----------- | --- | ---------- |
| Loopback0 | EVPN_Overlay_Peering | Global Routing Table | 192.168.255.1/32 |

IPv6

| Interface | Description | VRF | IPv6 Address |
| --------- | ----------- | --- | ------------ |
| Loopback0 | EVPN_Overlay_Peering | Global Routing Table | - |

### Loopback Interfaces Device Configuration

```eos
!
interface Loopback0
   description EVPN_Overlay_Peering
   ip address 192.168.255.1/32
```

## VLAN Interfaces

No VLAN interfaces defined

## VXLAN Interface

No VXLAN interface defined

# Routing

## Virtual Router MAC Address

IP Virtual Router MAC Address is not defined

## IP Routing

### IP Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default |  True | 
| MGMT | False |

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
| default |  False | 
| MGMT | False |
 


## Static Routes

### Static Routes Summary

| VRF | Destination Prefix | Fowarding Address / Interface |
| --- | ------------------ | ----------------------------- |
| MGMT | 0.0.0.0/0 | 10.73.255.2 |

### Static Routes Device Configuration

```eos
!
ip route vrf MGMT 0.0.0.0/0 10.73.255.2
```

## Router ISIS

Router ISIS not defined

# Router BGP

### Router BGP Summary

| BGP AS | Router ID |
| ------ | --------- |
| 65001|  192.168.255.1 |

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
| next-hop unchanged | true |
| source | Loopback0 |
| bfd | true |
| ebgp multihop | 3 |
| send community | true |
| maximum routes | 0 (no limit) |

**IPv4-UNDERLAY-PEERS**:

| Settings | Value |
| -------- | ----- |
| Address Family | ipv4 |
| maximum routes | 12000 |

### BGP Neighbors

| Neighbor | Remote AS |
| -------- | ---------
| 172.31.255.1 | 65101 |
| 172.31.255.5 | 65101 |
| 172.31.255.9 | 65102 |
| 172.31.255.13 | 65102 |
| 172.31.255.17 | 65103 |
| 172.31.255.21 | 65104 |
| 172.31.255.25 | 65105 |
| 172.31.255.29 | 65105 |
| 192.168.255.3 | 65101 |
| 192.168.255.4 | 65101 |
| 192.168.255.5 | 65102 |
| 192.168.255.6 | 65102 |
| 192.168.255.7 | 65103 |
| 192.168.255.8 | 65104 |
| 192.168.255.9 | 65105 |
| 192.168.255.10 | 65105 |

### Router BGP EVPN Address Family

#### Router BGP EVPN MAC-VRFs



#### Router BGP EVPN VRFs


### Router BGP Device Configuration

```eos
!
router bgp 65001
   router-id 192.168.255.1
   no bgp default ipv4-unicast
   distance bgp 20 200 200
   graceful-restart restart-time 300
   graceful-restart
   maximum-paths 2 ecmp 2
   neighbor EVPN-OVERLAY-PEERS peer group
   neighbor EVPN-OVERLAY-PEERS next-hop-unchanged
   neighbor EVPN-OVERLAY-PEERS update-source Loopback0
   neighbor EVPN-OVERLAY-PEERS bfd
   neighbor EVPN-OVERLAY-PEERS ebgp-multihop 3
   neighbor EVPN-OVERLAY-PEERS password 7 q+VNViP5i4rVjW1cxFv2wA==
   neighbor EVPN-OVERLAY-PEERS send-community
   neighbor EVPN-OVERLAY-PEERS maximum-routes 0
   neighbor IPv4-UNDERLAY-PEERS peer group
   neighbor IPv4-UNDERLAY-PEERS password 7 AQQvKeimxJu+uGQ/yYvv9w==
   neighbor IPv4-UNDERLAY-PEERS maximum-routes 12000
   neighbor 172.31.255.1 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.1 remote-as 65101
   neighbor 172.31.255.5 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.5 remote-as 65101
   neighbor 172.31.255.9 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.9 remote-as 65102
   neighbor 172.31.255.13 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.13 remote-as 65102
   neighbor 172.31.255.17 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.17 remote-as 65103
   neighbor 172.31.255.21 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.21 remote-as 65104
   neighbor 172.31.255.25 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.25 remote-as 65105
   neighbor 172.31.255.29 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.29 remote-as 65105
   neighbor 192.168.255.3 peer group EVPN-OVERLAY-PEERS
   neighbor 192.168.255.3 remote-as 65101
   neighbor 192.168.255.4 peer group EVPN-OVERLAY-PEERS
   neighbor 192.168.255.4 remote-as 65101
   neighbor 192.168.255.5 peer group EVPN-OVERLAY-PEERS
   neighbor 192.168.255.5 remote-as 65102
   neighbor 192.168.255.6 peer group EVPN-OVERLAY-PEERS
   neighbor 192.168.255.6 remote-as 65102
   neighbor 192.168.255.7 peer group EVPN-OVERLAY-PEERS
   neighbor 192.168.255.7 remote-as 65103
   neighbor 192.168.255.8 peer group EVPN-OVERLAY-PEERS
   neighbor 192.168.255.8 remote-as 65104
   neighbor 192.168.255.9 peer group EVPN-OVERLAY-PEERS
   neighbor 192.168.255.9 remote-as 65105
   neighbor 192.168.255.10 peer group EVPN-OVERLAY-PEERS
   neighbor 192.168.255.10 remote-as 65105
   redistribute connected route-map RM-CONN-2-BGP
   !
   address-family evpn
      neighbor EVPN-OVERLAY-PEERS activate
      no neighbor IPv4-UNDERLAY-PEERS activate
   !
   address-family ipv4
      no neighbor EVPN-OVERLAY-PEERS activate
      neighbor IPv4-UNDERLAY-PEERS activate
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


## Router Multicast

Routing multicast not defined

## Router PIM Sparse Mode

Router PIM sparse mode not defined

# Filters

## Community Lists

Community Lists not defined

## Peer Filters

### Peer Filters Summary

**LEAF-AS-RANGE:**

| Sequence | Match |
| -------- | ----- |
| 10 | as-range 65101-65132 result accept |

### Peer Filters Device Configuration

```eos
!
peer-filter LEAF-AS-RANGE
   10 match as-range 65101-65132 result accept
```

## Prefix Lists

### Prefix Lists Summary

**PL-LOOPBACKS-EVPN-OVERLAY:**

| Sequence | Action |
| -------- | ------ |
| 10 | permit 192.168.255.0/24 le 32 |

### Prefix Lists Device Configuration

```eos
!
ip prefix-list PL-LOOPBACKS-EVPN-OVERLAY
   seq 10 permit 192.168.255.0/24 le 32
```

## IPv6 Prefix Lists

IPv6 Prefix lists not defined

## Route Maps

### Route Maps Summary

**RM-CONN-2-BGP:**

| Sequence | Type | Match and/or Set |
| -------- | ---- | ---------------- |
| 10 | permit | match ip address prefix-list PL-LOOPBACKS-EVPN-OVERLAY |

### Route Maps Device Configuration

```eos
!
route-map RM-CONN-2-BGP permit 10
   match ip address prefix-list PL-LOOPBACKS-EVPN-OVERLAY
```

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

### VRF Instances Summary

| VRF Name | IP Routing |
| -------- | ---------- |
| MGMT |  disabled |

### VRF Instances Device Configuration

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
