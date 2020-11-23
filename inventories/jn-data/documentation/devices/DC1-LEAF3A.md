# DC1-LEAF3A

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
| Management1 | oob_management | MGMT | 10.73.1.21/16 | 10.73.0.1 |

IPv6

| Management Interface | description | VRF | IPv6 Address | IPv6 Gateway |
| -------------------- | ----------- | --- | ------------ | ------------ |
| Management1 | oob_management | MGMT | ||

### Management Interfaces Device Configuration

```eos
!
interface Management1
   description oob_management
   vrf MGMT
   ip address 10.73.1.21/16
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

### TerminAttr Daemon Summary

| CV Compression | Ingest gRPC URL | Ingest Authentication Key | Smash Excludes | Ingest Exclude | Ingest VRF |  NTP VRF |
| -------------- | --------------- | ------------------------- | -------------- | -------------- | ---------- | -------- |
| gzip | 10.83.28.164:9910 |  | ale,flexCounter,hardware,kni,pulse,strata | /Sysdb/cell/1/agent,/Sysdb/cell/2/agent | MGMT | MGMT |

### TerminAttr Daemon Device Configuration

```eos
!
daemon TerminAttr
   exec /usr/bin/TerminAttr -ingestgrpcurl=10.83.28.164:9910 -cvcompression=gzip -ingestauth=key, -smashexcludes=ale,flexCounter,hardware,kni,pulse,strata -ingestexclude=/Sysdb/cell/1/agent,/Sysdb/cell/2/agent -ingestvrf=MGMT -taillogs
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

Mode: mstp

**MSTP Instance and Priority**:

| Instance | Priority |
| -------- | -------- |
| 0 | 4096 |

### Spanning Tree Device Configuration

```eos
!
spanning-tree mode mstp
spanning-tree mst 0 priority 4096
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

### VLANs Summary

| VLAN ID | Name | Trunk Groups |
| ------- | ---- | ------------ |
| 110 | Tenant_A_OP_Zone_1 | none  |
| 111 | Tenant_A_OP_Zone_2 | none  |
| 114 | Tenant_A_OP_Zone_3 | none  |
| 411 | Tenant_D_OP_Zone_1 | none  |
| 412 | Tenant_D_OP_Zone_2 | none  |

### VLANs Device Configuration

```eos
!
vlan 110
   name Tenant_A_OP_Zone_1
!
vlan 111
   name Tenant_A_OP_Zone_2
!
vlan 114
   name Tenant_A_OP_Zone_3
!
vlan 411
   name Tenant_D_OP_Zone_1
!
vlan 412
   name Tenant_D_OP_Zone_2
```

# Interfaces

## Ethernet Interfaces

### Ethernet Interfaces Summary

| Interface | Description | MTU | Type | Mode | Allowed VLANs (Trunk) | Trunk Group | VRF | IP Address | Channel-Group ID | Channel-Group Type |
| --------- | ----------- | --- | ---- | ---- | --------------------- | ----------- | --- | ---------- | ---------------- | ------------------ |
| Ethernet1 | P2P_LINK_TO_DC1-SPINE1_Ethernet5 | 1500 | routed | access | - | - | - | 172.31.255.17/31 | - | - |
| Ethernet2 | P2P_LINK_TO_DC1-SPINE2_Ethernet5 | 1500 | routed | access | - | - | - | 172.31.255.19/31 | - | - |
| Ethernet7 | POD03-ESI_Eth0 | *1500 | *switched | *trunk | *110-114,210,211 | - | - | - | 7 | active |

*Inherited from Port-Channel Interface

### Ethernet Interfaces Device Configuration

```eos
!
interface Ethernet1
   description P2P_LINK_TO_DC1-SPINE1_Ethernet5
   no switchport
   ip address 172.31.255.17/31
!
interface Ethernet2
   description P2P_LINK_TO_DC1-SPINE2_Ethernet5
   no switchport
   ip address 172.31.255.19/31
!
interface Ethernet7
   description POD03-ESI_Eth0
   channel-group 7 mode active
```

## Port-Channel Interfaces

### Port-Channel Interfaces Summary

| Interface | Description | MTU | Type | Mode | Allowed VLANs (trunk) | Trunk Group | MLAG ID | EVPN ESI | VRF | IP Address | IPv6 Address |
| --------- | ----------- | --- | ---- | ---- | --------------------- | ----------- | ------- | -------- | --- | ---------- | ------------ |
| Port-Channel7 | POD03-ESI_data | 1500 | switched | trunk | 110-114,210,211 | - | - | 0000:0000:0303:0202:0101 | - | - | - |

### Port-Channel Interfaces Device Configuration

```eos
!
interface Port-Channel7
   description POD03-ESI_data
   switchport trunk allowed vlan 110-114,210,211
   switchport mode trunk
   !
    evpn ethernet-segment
       identifier 0000:0000:0303:0202:0101
       route-target import 03:03:02:02:01:01
   !
   lacp system-id 0303.0202.0101
```

## Loopback Interfaces

### Loopback Interfaces Summary

IPv4

| Interface | Description | VRF | IP Address |
| --------- | ----------- | --- | ---------- |
| Loopback0 | EVPN_Overlay_Peering | Global Routing Table | 192.168.255.7/32 |
| Loopback1 | VTEP_VXLAN_Tunnel_Source | Global Routing Table | 192.168.254.7/32 |
| Loopback100 | Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | Tenant_A_OP_Zone | 10.255.1.7/32 |

IPv6

| Interface | Description | VRF | IPv6 Address |
| --------- | ----------- | --- | ------------ |
| Loopback0 | EVPN_Overlay_Peering | Global Routing Table | - |
| Loopback1 | VTEP_VXLAN_Tunnel_Source | Global Routing Table | - |
| Loopback100 | Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | Tenant_A_OP_Zone | - |

### Loopback Interfaces Device Configuration

```eos
!
interface Loopback0
   description EVPN_Overlay_Peering
   ip address 192.168.255.7/32
!
interface Loopback1
   description VTEP_VXLAN_Tunnel_Source
   ip address 192.168.254.7/32
!
interface Loopback100
   description Tenant_A_OP_Zone_VTEP_DIAGNOSTICS
   vrf Tenant_A_OP_Zone
   ip address 10.255.1.7/32
```

## VLAN Interfaces

### VLAN Interfaces Summary

| Interface | Description | VRF | IP Address | IP Address Virtual | IP Router Virtual Address (vARP) |
| --------- | ----------- | --- | ---------- | ------------------ | -------------------------------- |
| Vlan110 | Tenant_A_OP_Zone_1 | Tenant_A_OP_Zone | - | 10.1.10.254/24 | - |
| Vlan111 | Tenant_A_OP_Zone_2 | Tenant_A_OP_Zone | - | 10.1.11.254/24 | - |
| Vlan114 | Tenant_A_OP_Zone_3 | Tenant_A_OP_Zone | - | 10.1.14.254/24 | - |

### VLAN Interfaces Device Configuration

```eos
!
interface Vlan110
   description Tenant_A_OP_Zone_1
   vrf Tenant_A_OP_Zone
   ip address virtual 10.1.10.254/24
!
interface Vlan111
   description Tenant_A_OP_Zone_2
   vrf Tenant_A_OP_Zone
   ip address virtual 10.1.11.254/24
!
interface Vlan114
   description Tenant_A_OP_Zone_3
   vrf Tenant_A_OP_Zone
   ip address virtual 10.1.14.254/24
```

## VXLAN Interface

### VXLAN Interface Summary

**Source Interface:** Loopback1
**UDP port:** 4789

**VLAN to VNI Mappings:**

| VLAN | VNI |
| ---- | --- |
| 110 | 10110 |
| 111 | 50111 |
| 114 | 50114 |
| 411 | 40411 |
| 412 | 40412 |

**VRF to VNI Mappings:**

| VLAN | VNI |
| ---- | --- |
| Tenant_A_OP_Zone | 10 |

### VXLAN Interface Device Configuration

```eos
!
interface Vxlan1
   vxlan source-interface Loopback1
   vxlan udp-port 4789
   vxlan vlan 110 vni 10110
   vxlan vlan 111 vni 50111
   vxlan vlan 114 vni 50114
   vxlan vlan 411 vni 40411
   vxlan vlan 412 vni 40412
   vxlan vrf Tenant_A_OP_Zone vni 10
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
| default |  True | 
| MGMT | False |
| Tenant_A_OP_Zone | True |

### IP Routing Device Configuration

```eos
!
ip routing
no ip routing vrf MGMT
ip routing vrf Tenant_A_OP_Zone
```
## IPv6 Routing

### IPv6 Routing Summary

| VRF | IPv6 Routing Enabled |
| --- | -------------------- |
| MGMT | False |
| Tenant_A_OP_Zone | False |

### IPv6 Routing Device Configuration

```eos
```

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

Router ISIS not defined

# Router BGP

### Router BGP Summary

| BGP AS | Router ID |
| ------ | --------- |
| 65103|  192.168.255.7 |

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

**IPv4-UNDERLAY-PEERS**:

| Settings | Value |
| -------- | ----- |
| Address Family | ipv4 |
| remote_as | 65001 |
| send community | true |
| maximum routes | 12000 |

### BGP Neighbors

| Neighbor | Remote AS |
| -------- | ---------
| 172.31.255.16 | Inherited from peer group IPv4-UNDERLAY-PEERS |
| 172.31.255.18 | Inherited from peer group IPv4-UNDERLAY-PEERS |
| 192.168.255.1 | Inherited from peer group EVPN-OVERLAY-PEERS |
| 192.168.255.2 | Inherited from peer group EVPN-OVERLAY-PEERS |

### Router BGP EVPN Address Family

#### Router BGP EVPN MAC-VRFs

**VLAN aware bundles:**

| VLAN Aware Bundle | Route-Distinguisher | Both Route-Target | Import Route Target | Export Route-Target | Redistribute | VLANs |
| ----------------- | ------------------- | ----------------- | ------------------- | ------------------- | ------------ | ----- |
| Tenant_A_OP_Zone | 192.168.255.7:10 |  10:10  |  |  | learned | 110-111,114 |
| Tenant_D_OP_Zone_1 | 192.168.255.7:40411 |  40411:40411  |  |  | learned | 411 |
| Tenant_D_OP_Zone_2 | 192.168.255.7:40412 |  40412:40412  |  |  | learned | 412 |


#### Router BGP EVPN VRFs

| VRF | Route-Distinguisher | Redistribute |
| --- | ------------------- | ------------ |
| Tenant_A_OP_Zone | 192.168.255.7:10 | connected  |

### Router BGP Device Configuration

```eos
!
router bgp 65103
   router-id 192.168.255.7
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
   neighbor IPv4-UNDERLAY-PEERS peer group
   neighbor IPv4-UNDERLAY-PEERS remote-as 65001
   neighbor IPv4-UNDERLAY-PEERS password 7 AQQvKeimxJu+uGQ/yYvv9w==
   neighbor IPv4-UNDERLAY-PEERS send-community
   neighbor IPv4-UNDERLAY-PEERS maximum-routes 12000
   neighbor 172.31.255.16 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.18 peer group IPv4-UNDERLAY-PEERS
   neighbor 192.168.255.1 peer group EVPN-OVERLAY-PEERS
   neighbor 192.168.255.2 peer group EVPN-OVERLAY-PEERS
   redistribute connected route-map RM-CONN-2-BGP
   !
   vlan-aware-bundle Tenant_A_OP_Zone
      rd 192.168.255.7:10
      route-target both 10:10
      redistribute learned
      vlan 110-111,114
   !
   vlan-aware-bundle Tenant_D_OP_Zone_1
      rd 192.168.255.7:40411
      route-target both 40411:40411
      redistribute learned
      vlan 411
   !
   vlan-aware-bundle Tenant_D_OP_Zone_2
      rd 192.168.255.7:40412
      route-target both 40412:40412
      redistribute learned
      vlan 412
   !
   address-family evpn
      neighbor EVPN-OVERLAY-PEERS activate
      no neighbor IPv4-UNDERLAY-PEERS activate
   !
   address-family ipv4
      no neighbor EVPN-OVERLAY-PEERS activate
      neighbor IPv4-UNDERLAY-PEERS activate
   !
   vrf Tenant_A_OP_Zone
      rd 192.168.255.7:10
      route-target import evpn 10:10
      route-target export evpn 10:10
      router-id 192.168.255.7
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

### Prefix Lists Summary

**PL-LOOPBACKS-EVPN-OVERLAY:**

| Sequence | Action |
| -------- | ------ |
| 10 | permit 192.168.255.0/24 eq 32 |
| 20 | permit 192.168.254.0/24 eq 32 |

**PL-P2P-UNDERLAY:**

| Sequence | Action |
| -------- | ------ |
| 10 | permit 172.31.255.0/24 le 31 |

### Prefix Lists Device Configuration

```eos
!
ip prefix-list PL-LOOPBACKS-EVPN-OVERLAY
   seq 10 permit 192.168.255.0/24 eq 32
   seq 20 permit 192.168.254.0/24 eq 32
!
ip prefix-list PL-P2P-UNDERLAY
   seq 10 permit 172.31.255.0/24 le 31
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
| Tenant_A_OP_Zone |  enabled |

### VRF Instances Device Configuration

```eos
!
vrf instance MGMT
!
vrf instance Tenant_A_OP_Zone
```

# Virtual Source NAT


### Virtual Source NAT Summary

| Source NAT VRF | Source NAT IP Address |
| -------------- | --------------------- |
| Tenant_A_OP_Zone | 10.255.1.7 |

### Virtual Source NAT Configuration

```eos
!
ip address virtual source-nat vrf Tenant_A_OP_Zone address 10.255.1.7
```

# Platform

No Platform parameters defined

# Router L2 VPN

Router L2 VPN not defined

# IP DHCP Relay

IP DHCP Relay not defined
