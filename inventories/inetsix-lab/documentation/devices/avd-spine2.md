# avd-spine2
# Table of Contents

- [Management](#management)
  - [Management Interfaces](#management-interfaces)
  - [Name Servers](#name-servers)
  - [Clock Settings](#clock-settings)
  - [NTP](#ntp)
  - [Management SSH](#management-ssh)
  - [Management API HTTP](#management-api-http)
- [Authentication](#authentication)
  - [Local Users](#local-users)
  - [AAA Authorization](#aaa-authorization)
- [Monitoring](#monitoring)
  - [TerminAttr Daemon](#terminattr-daemon)
  - [SNMP](#snmp)
- [Spanning Tree](#spanning-tree)
  - [Spanning Tree Summary](#spanning-tree-summary)
  - [Spanning Tree Device Configuration](#spanning-tree-device-configuration)
- [Internal VLAN Allocation Policy](#internal-vlan-allocation-policy)
  - [Internal VLAN Allocation Policy Summary](#internal-vlan-allocation-policy-summary)
  - [Internal VLAN Allocation Policy Configuration](#internal-vlan-allocation-policy-configuration)
- [Interfaces](#interfaces)
  - [Ethernet Interfaces](#ethernet-interfaces)
  - [Loopback Interfaces](#loopback-interfaces)
- [Routing](#routing)
  - [Service Routing Protocols Model](#service-routing-protocols-model)
  - [IP Routing](#ip-routing)
  - [IPv6 Routing](#ipv6-routing)
  - [Static Routes](#static-routes)
  - [Router BGP](#router-bgp)
- [Multicast](#multicast)
- [Filters](#filters)
  - [Prefix-lists](#prefix-lists)
  - [Route-maps](#route-maps)
- [ACL](#acl)
- [VRF Instances](#vrf-instances)
  - [VRF Instances Summary](#vrf-instances-summary)
  - [VRF Instances Device Configuration](#vrf-instances-device-configuration)
- [Quality Of Service](#quality-of-service)
- [EOS CLI](#eos-cli)

# Management

## Management Interfaces

### Management Interfaces Summary

#### IPv4

| Management Interface | description | Type | VRF | IP Address | Gateway |
| -------------------- | ----------- | ---- | --- | ---------- | ------- |
| Management0 | oob_management | oob | default | 10.73.254.102/24 | 10.73.254.253 |

#### IPv6

| Management Interface | description | Type | VRF | IPv6 Address | IPv6 Gateway |
| -------------------- | ----------- | ---- | --- | ------------ | ------------ |
| Management0 | oob_management | oob | default | -  | - |

### Management Interfaces Device Configuration

```eos
!
interface Management0
   description oob_management
   no shutdown
   ip address 10.73.254.102/24
```

## Name Servers

### Name Servers Summary

| Name Server | Source VRF |
| ----------- | ---------- |
| 10.73.1.251 | default |

### Name Servers Device Configuration

```eos
ip name-server vrf default 10.73.1.251
```

## Clock Settings

### Clock Timezone Settings

Clock Timezone is set to **Europe/Paris**.

### Clock Configuration

```eos
!
clock timezone Europe/Paris
```

## NTP

### NTP Summary

#### NTP Servers

| Server | VRF | Preferred | Burst | iBurst | Version | Min Poll | Max Poll | Local-interface | Key |
| ------ | --- | --------- | ----- | ------ | ------- | -------- | -------- | --------------- | --- |
| 10.73.1.254 | MGMT | True | - | - | - | - | - | - | - |
| 10.73.254.253 | MGMT | - | - | - | - | - | - | - | - |

### NTP Device Configuration

```eos
!
ntp server vrf MGMT 10.73.1.254 prefer
ntp server vrf MGMT 10.73.254.253
```

## Management SSH


 ### SSH timeout and management

| Idle Timeout | SSH Management |
| ------------ | -------------- |
| 0 |  Enabled  |

### Max number of SSH sessions limit and per-host limit

| Connection Limit | Max from a single Host |
| ---------------- | ---------------------- |
| - | - |

### Ciphers and algorithms

| Ciphers | Key-exchange methods | MAC algorithms | Hostkey server algorithms |
|---------|----------------------|----------------|---------------------------|
| default | default | default | default |


### Management SSH Configuration

```eos
!
management ssh
   idle-timeout 0
   no shutdown
```

## Management API HTTP

### Management API HTTP Summary

| HTTP | HTTPS |
| ---- | ----- |
| False | True |

### Management API VRF Access

| VRF Name | IPv4 ACL | IPv6 ACL |
| -------- | -------- | -------- |
| default | - | - |

### Management API HTTP Configuration

```eos
!
management api http-commands
   protocol https
   no shutdown
   !
   vrf default
      no shutdown
```

# Authentication

## Local Users

### Local Users Summary

| User | Privilege | Role |
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

## AAA Authorization

### AAA Authorization Summary

| Type | User Stores |
| ---- | ----------- |
| Exec | local |

Authorization for configuration commands is disabled.

### AAA Authorization Device Configuration

```eos
!
aaa authorization exec default local
!
```

# Monitoring

## TerminAttr Daemon

### TerminAttr Daemon Summary

| CV Compression | CloudVision Servers | VRF | Authentication | Smash Excludes | Ingest Exclude | Bypass AAA |
| -------------- | ------------------- | --- | -------------- | -------------- | -------------- | ---------- |
| gzip | 10.73.254.254:9910 | default | key,telarista | ale,flexCounter,hardware,kni,pulse,strata | /Sysdb/cell/1/agent,/Sysdb/cell/2/agent | False |

### TerminAttr Daemon Device Configuration

```eos
!
daemon TerminAttr
   exec /usr/bin/TerminAttr -cvaddr=10.73.254.254:9910 -cvauth=key,telarista -cvvrf=default -smashexcludes=ale,flexCounter,hardware,kni,pulse,strata -ingestexclude=/Sysdb/cell/1/agent,/Sysdb/cell/2/agent -taillogs
   no shutdown
```

## SNMP

### SNMP Configuration Summary

| Contact | Location | SNMP Traps | State |
| ------- | -------- | ---------- | ----- |
| - | - | All | Disabled |

### SNMP Communities

| Community | Access | Access List IPv4 | Access List IPv6 | View |
| --------- | ------ | ---------------- | ---------------- | ---- |
| inetsix-ro | rw | inetsix-snmp-acl | - | test |

### SNMP Device Configuration

```eos
!
snmp-server community inetsix-ro view test rw inetsix-snmp-acl
```

# Spanning Tree

## Spanning Tree Summary

STP mode: **none**

## Spanning Tree Device Configuration

```eos
!
spanning-tree mode none
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

# Interfaces

## Ethernet Interfaces

### Ethernet Interfaces Summary

#### L2

| Interface | Description | Mode | VLANs | Native VLAN | Trunk Group | Channel-Group |
| --------- | ----------- | ---- | ----- | ----------- | ----------- | ------------- |

*Inherited from Port-Channel Interface

#### IPv4

| Interface | Description | Type | Channel Group | IP Address | VRF |  MTU | Shutdown | ACL In | ACL Out |
| --------- | ----------- | -----| ------------- | ---------- | ----| ---- | -------- | ------ | ------- |
| Ethernet1 | P2P_LINK_TO_AVD-LEAF1A_Ethernet2 | routed | - | 172.31.255.42/31 | default | 1500 | false | - | - |
| Ethernet2 | P2P_LINK_TO_AVD-LEAF1B_Ethernet2 | routed | - | 172.31.255.46/31 | default | 1500 | false | - | - |
| Ethernet3 | P2P_LINK_TO_AVD-LEAF2A_Ethernet2 | routed | - | 172.31.255.50/31 | default | 1500 | false | - | - |
| Ethernet4 | P2P_LINK_TO_AVD-LEAF2B_Ethernet2 | routed | - | 172.31.255.54/31 | default | 1500 | false | - | - |
| Ethernet5 | P2P_LINK_TO_AVD-BL01A_Ethernet2 | routed | - | 172.31.255.66/31 | default | 1500 | false | - | - |
| Ethernet6 | P2P_LINK_TO_AVD-BL01B_Ethernet2 | routed | - | 172.31.255.70/31 | default | 1500 | false | - | - |
| Ethernet7 | P2P_LINK_TO_AVD-LEAF3A_Ethernet2 | routed | - | 172.31.255.58/31 | default | 1500 | false | - | - |
| Ethernet8 | P2P_LINK_TO_AVD-LEAF4A_Ethernet2 | routed | - | 172.31.255.62/31 | default | 1500 | false | - | - |
| Ethernet9 | P2P_LINK_TO_AVD-CL01A_Ethernet2 | routed | - | 172.31.255.74/31 | default | 1500 | false | - | - |
| Ethernet10 | P2P_LINK_TO_AVD-CL01B_Ethernet2 | routed | - | 172.31.255.78/31 | default | 1500 | false | - | - |
| Ethernet11 | P2P_LINK_TO_AVD-L2LEAF01_Ethernet2 | routed | - | 172.31.251.82/31 | default | 1500 | false | - | - |
| Ethernet12 | P2P_LINK_TO_AVD-L2LEAF02_Ethernet2 | routed | - | 172.31.251.86/31 | default | 1500 | false | - | - |
| Ethernet13 | P2P_LINK_TO_AVD-RS02_Ethernet1 | routed | - | 172.31.250.50/31 | default | 1500 | false | - | - |

### Ethernet Interfaces Device Configuration

```eos
!
interface Ethernet1
   description P2P_LINK_TO_AVD-LEAF1A_Ethernet2
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.255.42/31
!
interface Ethernet2
   description P2P_LINK_TO_AVD-LEAF1B_Ethernet2
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.255.46/31
!
interface Ethernet3
   description P2P_LINK_TO_AVD-LEAF2A_Ethernet2
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.255.50/31
!
interface Ethernet4
   description P2P_LINK_TO_AVD-LEAF2B_Ethernet2
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.255.54/31
!
interface Ethernet5
   description P2P_LINK_TO_AVD-BL01A_Ethernet2
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.255.66/31
!
interface Ethernet6
   description P2P_LINK_TO_AVD-BL01B_Ethernet2
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.255.70/31
!
interface Ethernet7
   description P2P_LINK_TO_AVD-LEAF3A_Ethernet2
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.255.58/31
!
interface Ethernet8
   description P2P_LINK_TO_AVD-LEAF4A_Ethernet2
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.255.62/31
!
interface Ethernet9
   description P2P_LINK_TO_AVD-CL01A_Ethernet2
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.255.74/31
!
interface Ethernet10
   description P2P_LINK_TO_AVD-CL01B_Ethernet2
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.255.78/31
!
interface Ethernet11
   description P2P_LINK_TO_AVD-L2LEAF01_Ethernet2
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.251.82/31
!
interface Ethernet12
   description P2P_LINK_TO_AVD-L2LEAF02_Ethernet2
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.251.86/31
!
interface Ethernet13
   description P2P_LINK_TO_AVD-RS02_Ethernet1
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.250.50/31
```

## Loopback Interfaces

### Loopback Interfaces Summary

#### IPv4

| Interface | Description | VRF | IP Address |
| --------- | ----------- | --- | ---------- |
| Loopback0 | EVPN_Overlay_Peering | default | 192.168.1.2/32 |

#### IPv6

| Interface | Description | VRF | IPv6 Address |
| --------- | ----------- | --- | ------------ |
| Loopback0 | EVPN_Overlay_Peering | default | - |


### Loopback Interfaces Device Configuration

```eos
!
interface Loopback0
   description EVPN_Overlay_Peering
   no shutdown
   ip address 192.168.1.2/32
```

# Routing
## Service Routing Protocols Model

Multi agent routing protocol model enabled

```eos
!
service routing protocols model multi-agent
```

## IP Routing

### IP Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default | true |
| default | false |

### IP Routing Device Configuration

```eos
!
ip routing
```
## IPv6 Routing

### IPv6 Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default | false |
| default | false |

## Static Routes

### Static Routes Summary

| VRF | Destination Prefix | Next Hop IP             | Exit interface      | Administrative Distance       | Tag               | Route Name                    | Metric         |
| --- | ------------------ | ----------------------- | ------------------- | ----------------------------- | ----------------- | ----------------------------- | -------------- |
| default  | 0.0.0.0/0 |  10.73.254.253  |  -  |  1  |  -  |  -  |  - |

### Static Routes Device Configuration

```eos
!
ip route 0.0.0.0/0 10.73.254.253
```

## Router BGP

### Router BGP Summary

| BGP AS | Router ID |
| ------ | --------- |
| 65001|  192.168.1.2 |

| BGP Tuning |
| ---------- |
| no bgp default ipv4-unicast |
| distance bgp 20 200 200 |
| graceful-restart restart-time 300 |
| graceful-restart |
| maximum-paths 4 ecmp 4 |

### Router BGP Peer Groups

#### IPv4-UNDERLAY-PEERS

| Settings | Value |
| -------- | ----- |
| Address Family | ipv4 |
| Send community | all |
| Maximum routes | 12000 |

### BGP Neighbors

| Neighbor | Remote AS | VRF | Send-community | Maximum-routes | Allowas-in | BFD |
| -------- | --------- | --- | -------------- | -------------- | ---------- | --- |
| 172.31.250.51 | 65000 | default | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - | - |
| 172.31.251.83 | 65107 | default | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - | - |
| 172.31.251.87 | 65108 | default | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - | - |
| 172.31.255.43 | 65101 | default | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - | - |
| 172.31.255.47 | 65101 | default | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - | - |
| 172.31.255.51 | 65102 | default | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - | - |
| 172.31.255.55 | 65102 | default | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - | - |
| 172.31.255.59 | 65103 | default | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - | - |
| 172.31.255.63 | 65104 | default | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - | - |
| 172.31.255.67 | 65105 | default | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - | - |
| 172.31.255.71 | 65105 | default | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - | - |
| 172.31.255.75 | 65106 | default | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - | - |
| 172.31.255.79 | 65106 | default | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - | - |

### Router BGP Device Configuration

```eos
!
router bgp 65001
   router-id 192.168.1.2
   no bgp default ipv4-unicast
   distance bgp 20 200 200
   graceful-restart restart-time 300
   graceful-restart
   maximum-paths 4 ecmp 4
   neighbor IPv4-UNDERLAY-PEERS peer group
   neighbor IPv4-UNDERLAY-PEERS send-community
   neighbor IPv4-UNDERLAY-PEERS maximum-routes 12000
   neighbor 172.31.250.51 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.250.51 remote-as 65000
   neighbor 172.31.250.51 description avd-rs02_Ethernet1
   neighbor 172.31.251.83 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.251.83 remote-as 65107
   neighbor 172.31.251.83 description avd-l2leaf01_Ethernet2
   neighbor 172.31.251.87 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.251.87 remote-as 65108
   neighbor 172.31.251.87 description avd-l2leaf02_Ethernet2
   neighbor 172.31.255.43 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.43 remote-as 65101
   neighbor 172.31.255.43 description avd-leaf1a_Ethernet2
   neighbor 172.31.255.47 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.47 remote-as 65101
   neighbor 172.31.255.47 description avd-leaf1b_Ethernet2
   neighbor 172.31.255.51 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.51 remote-as 65102
   neighbor 172.31.255.51 description avd-leaf2a_Ethernet2
   neighbor 172.31.255.55 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.55 remote-as 65102
   neighbor 172.31.255.55 description avd-leaf2b_Ethernet2
   neighbor 172.31.255.59 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.59 remote-as 65103
   neighbor 172.31.255.59 description avd-leaf3a_Ethernet2
   neighbor 172.31.255.63 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.63 remote-as 65104
   neighbor 172.31.255.63 description avd-leaf4a_Ethernet2
   neighbor 172.31.255.67 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.67 remote-as 65105
   neighbor 172.31.255.67 description avd-bl01a_Ethernet2
   neighbor 172.31.255.71 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.71 remote-as 65105
   neighbor 172.31.255.71 description avd-bl01b_Ethernet2
   neighbor 172.31.255.75 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.75 remote-as 65106
   neighbor 172.31.255.75 description avd-cl01a_Ethernet2
   neighbor 172.31.255.79 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.79 remote-as 65106
   neighbor 172.31.255.79 description avd-cl01b_Ethernet2
   redistribute connected route-map RM-CONN-2-BGP
   !
   address-family ipv4
      neighbor IPv4-UNDERLAY-PEERS activate
```

# Multicast

# Filters

## Prefix-lists

### Prefix-lists Summary

#### PL-LOOPBACKS-EVPN-OVERLAY

| Sequence | Action |
| -------- | ------ |
| 10 | permit 192.168.1.0/24 eq 32 |

### Prefix-lists Device Configuration

```eos
!
ip prefix-list PL-LOOPBACKS-EVPN-OVERLAY
   seq 10 permit 192.168.1.0/24 eq 32
```

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

# ACL

# VRF Instances

## VRF Instances Summary

| VRF Name | IP Routing |
| -------- | ---------- |
| default | disabled |

## VRF Instances Device Configuration

```eos
```

# Quality Of Service

# EOS CLI

```eos
!
management api http-commands
   vrf default
      no shutdown
!

```
