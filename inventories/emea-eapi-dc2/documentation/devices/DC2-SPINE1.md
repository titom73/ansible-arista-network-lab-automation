# DC2-SPINE1

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
| Management1 | oob_management | MGMT | 10.73.2.11/16 | 10.73.0.1 |

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
   ip address 10.73.2.11/16
```

## DNS Domain


### DNS domain: eve.emea.lab

### DNS Domain Device Configuration

```eos
dns domain eve.emea.lab
!
```

## Name Servers

### Name Servers Summary

| Name Server | Source VRF |
| ----------- | ---------- |
| 1.1.1.1 | MGMT |

### Name Servers Device Configuration

```eos
ip name-server vrf MGMT 1.1.1.1
```

## Domain Lookup

DNS domain lookup not defined

## NTP

### NTP Summary

Local Interface: Management1

VRF: MGMT


| Node | Primary |
| ---- | ------- |
| fr.pool.ntp.org | true |

### NTP Device Configuration

```eos
!
ntp local-interface vrf MGMT Management1
ntp server vrf MGMT fr.pool.ntp.org prefer
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

### Local Users Device Configuration

```eos
!
username admin privilege 15 role network-admin nopassword
username ansible privilege 15 role network-admin secret sha512 $6$ZMTiXhLqBo7v1si1$sytOdfL9pAFj4paRrqnQeolINyi1zTrBECVQimMvYRAR5wL8RQa02Qet9Jz7D6PXANdb.CEyeVrLbWv8INv7K0
username cvpadmin privilege 15 role network-admin secret sha512 $6$rZKcbIZ7iWGAWTUM$TCgDn1KcavS0s.OV8lacMTUkxTByfzcGlFlYUWroxYuU7M/9bIodhRO7nXGzMweUxvbk8mJmQl8Bh44cRktUj.
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

TerminAttr Daemon not defined

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
| descending | 4000 | 4090 |

### Internal VLAN Allocation Policy Configuration

```eos
!
vlan internal order descending range 4000 4090
```

# VLANs

No VLANs defined

# Interfaces

## Ethernet Interfaces

### Ethernet Interfaces Summary

| Interface | Description | MTU | Type | Mode | Allowed VLANs (Trunk) | Trunk Group | VRF | IP Address | Channel-Group ID | Channel-Group Type |
| --------- | ----------- | --- | ---- | ---- | --------------------- | ----------- | --- | ---------- | ---------------- | ------------------ |
| Ethernet1 | P2P_LINK_TO_DC2-LEAF01A_Ethernet1 | 1500 | routed | access | - | - | - | 172.32.255.4/31 | - | - |
| Ethernet2 | P2P_LINK_TO_DC2-BL01A_Ethernet1 | 1500 | routed | access | - | - | - | 172.32.255.8/31 | - | - |
| Ethernet3 | P2P_LINK_TO_DC2-BL01B_Ethernet1 | 1500 | routed | access | - | - | - | 172.32.255.10/31 | - | - |

*Inherited from Port-Channel Interface

### Ethernet Interfaces Device Configuration

```eos
!
interface Ethernet1
   description P2P_LINK_TO_DC2-LEAF01A_Ethernet1
   no switchport
   ip address 172.32.255.4/31
   isis enable EVPN_UNDERLAY
   isis metric 50
   isis network point-to-point
!
interface Ethernet2
   description P2P_LINK_TO_DC2-BL01A_Ethernet1
   no switchport
   ip address 172.32.255.8/31
   isis enable EVPN_UNDERLAY
   isis metric 50
   isis network point-to-point
!
interface Ethernet3
   description P2P_LINK_TO_DC2-BL01B_Ethernet1
   no switchport
   ip address 172.32.255.10/31
   isis enable EVPN_UNDERLAY
   isis metric 50
   isis network point-to-point
```

## Port-Channel Interfaces

No Port-Channels defined

## Loopback Interfaces

### Loopback Interfaces Summary

IPv4

| Interface | Description | VRF | IP Address |
| --------- | ----------- | --- | ---------- |
| Loopback0 | EVPN_Overlay_Peering | Global Routing Table | 192.168.253.1/32 |

IPv6

| Interface | Description | VRF | IPv6 Address |
| --------- | ----------- | --- | ------------ |
| Loopback0 | EVPN_Overlay_Peering | Global Routing Table | - |

### Loopback Interfaces Device Configuration

```eos
!
interface Loopback0
   description EVPN_Overlay_Peering
   ip address 192.168.253.1/32
   isis enable EVPN_UNDERLAY
   isis passive
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
| MGMT | 0.0.0.0/0 | 10.73.0.1 |

### Static Routes Device Configuration

```eos
!
ip route vrf MGMT 0.0.0.0/0 10.73.0.1
```

## Router ISIS

### Router ISIS Summary

| Settings | Value |
| -------- | ----- |
| Instance | EVPN_UNDERLAY |
| Net-ID | 49.0001.0001.0000.0001.00 |
| Type | level-2 |
| Address Family | ipv4 unicast |

### Router ISIS Device Configuration

```eos
router isis EVPN_UNDERLAY
   net 49.0001.0001.0000.0001.00
   is-type level-2
   router-id ipv4 192.168.253.1
   log-adjacency-changes
   !
   address-family ipv4 unicast
      maximum-paths 1
   !
!
```


# Router BGP

### Router BGP Summary

| BGP AS | Router ID |
| ------ | --------- |
| 65002|  192.168.253.1 |

| BGP Tuning |
| ---------- |
| no bgp default ipv4-unicast |
| distance bgp 20 200 200 |
| graceful-restart restart-time 300 |
| graceful-restart |
| maximum-paths 1 ecmp 1 |

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

### BGP Neighbors

| Neighbor | Remote AS |
| -------- | ---------
| 192.168.253.4 | 65202 |
| 192.168.253.6 | 65201 |
| 192.168.253.7 | 65201 |

### Router BGP EVPN Address Family

#### Router BGP EVPN MAC-VRFs



#### Router BGP EVPN VRFs


### Router BGP Device Configuration

```eos
!
router bgp 65002
   router-id 192.168.253.1
   no bgp default ipv4-unicast
   distance bgp 20 200 200
   graceful-restart restart-time 300
   graceful-restart
   maximum-paths 1 ecmp 1
   neighbor EVPN-OVERLAY-PEERS peer group
   neighbor EVPN-OVERLAY-PEERS next-hop-unchanged
   neighbor EVPN-OVERLAY-PEERS update-source Loopback0
   neighbor EVPN-OVERLAY-PEERS bfd
   neighbor EVPN-OVERLAY-PEERS ebgp-multihop 3
   neighbor EVPN-OVERLAY-PEERS password 7 q+VNViP5i4rVjW1cxFv2wA==
   neighbor EVPN-OVERLAY-PEERS send-community
   neighbor EVPN-OVERLAY-PEERS maximum-routes 0
   neighbor 192.168.253.4 peer group EVPN-OVERLAY-PEERS
   neighbor 192.168.253.4 remote-as 65202
   neighbor 192.168.253.6 peer group EVPN-OVERLAY-PEERS
   neighbor 192.168.253.6 remote-as 65201
   neighbor 192.168.253.7 peer group EVPN-OVERLAY-PEERS
   neighbor 192.168.253.7 remote-as 65201
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
| 10 | as-range 65200-65232 result accept |

### Peer Filters Device Configuration

```eos
!
peer-filter LEAF-AS-RANGE
   10 match as-range 65200-65232 result accept
```

## Prefix Lists

### Prefix Lists Summary

**PL-LOOPBACKS-EVPN-OVERLAY:**

| Sequence | Action |
| -------- | ------ |
| 10 | permit 192.168.253.0/24 le 32 |

### Prefix Lists Device Configuration

```eos
!
ip prefix-list PL-LOOPBACKS-EVPN-OVERLAY
   seq 10 permit 192.168.253.0/24 le 32
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
