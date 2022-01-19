# EAPI-SPINE1
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

# Management

## Management Interfaces

### Management Interfaces Summary

#### IPv4

| Management Interface | description | Type | VRF | IP Address | Gateway |
| -------------------- | ----------- | ---- | --- | ---------- | ------- |
| Management1 | oob_management | oob | MGMT | 10.73.254.1/24 | 10.73.254.253 |

#### IPv6

| Management Interface | description | Type | VRF | IPv6 Address | IPv6 Gateway |
| -------------------- | ----------- | ---- | --- | ------------ | ------------ |
| Management1 | oob_management | oob | MGMT | -  | - |

### Management Interfaces Device Configuration

```eos
!
interface Management1
   description oob_management
   no shutdown
   vrf MGMT
   ip address 10.73.254.1/24
```

## Name Servers

### Name Servers Summary

| Name Server | Source VRF |
| ----------- | ---------- |
| 10.73.1.251 | MGMT |

### Name Servers Device Configuration

```eos
ip name-server vrf MGMT 10.73.1.251
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

#### NTP Local Interface

| Interface | VRF |
| --------- | --- |
| Management1 | MGMT |

#### NTP Servers

| Server | VRF | Preferred | Burst | iBurst | Version | Min Poll | Max Poll | Local-interface | Key |
| ------ | --- | --------- | ----- | ------ | ------- | -------- | -------- | --------------- | --- |
| 10.73.1.254 | MGMT | True | - | - | - | - | - | - | - |
| 10.73.254.253 | MGMT | - | - | - | - | - | - | - | - |

### NTP Device Configuration

```eos
!
ntp local-interface vrf MGMT Management1
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

### VRFs

| VRF | Status |
| --- | ------ |
| MGT |  Enabled  |

### Management SSH Configuration

```eos
!
management ssh
   idle-timeout 0
   no shutdown
   vrf MGT
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
| MGMT | - | - |

### Management API HTTP Configuration

```eos
!
management api http-commands
   protocol https
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
| gzip | 10.73.254.254:9910 | MGMT | key,telarista | ale,flexCounter,hardware,kni,pulse,strata | /Sysdb/cell/1/agent,/Sysdb/cell/2/agent | False |

### TerminAttr Daemon Device Configuration

```eos
!
daemon TerminAttr
   exec /usr/bin/TerminAttr -cvaddr=10.73.254.254:9910 -cvauth=key,telarista -cvvrf=MGMT -smashexcludes=ale,flexCounter,hardware,kni,pulse,strata -ingestexclude=/Sysdb/cell/1/agent,/Sysdb/cell/2/agent -taillogs
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
| Ethernet1 | P2P_LINK_TO_EAPI-LEAF1A_Ethernet1 | routed | - | 172.31.255.0/31 | default | 1500 | false | - | - |
| Ethernet2 | P2P_LINK_TO_EAPI-LEAF1B_Ethernet1 | routed | - | 172.31.255.4/31 | default | 1500 | false | - | - |
| Ethernet3 | P2P_LINK_TO_EAPI-LEAF2A_Ethernet1 | routed | - | 172.31.255.8/31 | default | 1500 | false | - | - |
| Ethernet4 | P2P_LINK_TO_EAPI-LEAF2B_Ethernet1 | routed | - | 172.31.255.12/31 | default | 1500 | false | - | - |
| Ethernet5 | P2P_LINK_TO_EAPI-BL01A_Ethernet1 | routed | - | 172.31.255.24/31 | default | 1500 | false | - | - |
| Ethernet6 | P2P_LINK_TO_EAPI-BL01B_Ethernet1 | routed | - | 172.31.255.28/31 | default | 1500 | false | - | - |
| Ethernet7 | P2P_LINK_TO_EAPI-LEAF3A_Ethernet1 | routed | - | 172.31.255.16/31 | default | 1500 | false | - | - |
| Ethernet8 | P2P_LINK_TO_EAPI-LEAF4A_Ethernet1 | routed | - | 172.31.255.20/31 | default | 1500 | false | - | - |
| Ethernet9 | P2P_LINK_TO_EAPI-CL01A_Ethernet1 | routed | - | 172.31.255.32/31 | default | 1500 | false | - | - |
| Ethernet10 | P2P_LINK_TO_EAPI-CL01B_Ethernet1 | routed | - | 172.31.255.36/31 | default | 1500 | false | - | - |
| Ethernet11 | P2P_LINK_TO_EAPI-L2LEAF01_Ethernet1 | routed | - | 172.31.251.0/31 | default | 1500 | false | - | - |
| Ethernet12 | P2P_LINK_TO_EAPI-L2LEAF02_Ethernet1 | routed | - | 172.31.251.4/31 | default | 1500 | false | - | - |
| Ethernet13 | P2P_LINK_TO_EAPI-RS01_Ethernet1 | routed | - | 172.31.250.0/31 | default | 1500 | false | - | - |

### Ethernet Interfaces Device Configuration

```eos
!
interface Ethernet1
   description P2P_LINK_TO_EAPI-LEAF1A_Ethernet1
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.255.0/31
!
interface Ethernet2
   description P2P_LINK_TO_EAPI-LEAF1B_Ethernet1
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.255.4/31
!
interface Ethernet3
   description P2P_LINK_TO_EAPI-LEAF2A_Ethernet1
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.255.8/31
!
interface Ethernet4
   description P2P_LINK_TO_EAPI-LEAF2B_Ethernet1
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.255.12/31
!
interface Ethernet5
   description P2P_LINK_TO_EAPI-BL01A_Ethernet1
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.255.24/31
!
interface Ethernet6
   description P2P_LINK_TO_EAPI-BL01B_Ethernet1
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.255.28/31
!
interface Ethernet7
   description P2P_LINK_TO_EAPI-LEAF3A_Ethernet1
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.255.16/31
!
interface Ethernet8
   description P2P_LINK_TO_EAPI-LEAF4A_Ethernet1
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.255.20/31
!
interface Ethernet9
   description P2P_LINK_TO_EAPI-CL01A_Ethernet1
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.255.32/31
!
interface Ethernet10
   description P2P_LINK_TO_EAPI-CL01B_Ethernet1
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.255.36/31
!
interface Ethernet11
   description P2P_LINK_TO_EAPI-L2LEAF01_Ethernet1
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.251.0/31
!
interface Ethernet12
   description P2P_LINK_TO_EAPI-L2LEAF02_Ethernet1
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.251.4/31
!
interface Ethernet13
   description P2P_LINK_TO_EAPI-RS01_Ethernet1
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.250.0/31
```

## Loopback Interfaces

### Loopback Interfaces Summary

#### IPv4

| Interface | Description | VRF | IP Address |
| --------- | ----------- | --- | ---------- |
| Loopback0 | EVPN_Overlay_Peering | default | 192.168.1.1/32 |

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
   ip address 192.168.1.1/32
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
| default | true|| MGMT | false |

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
| default | false || MGMT | false |


## Static Routes

### Static Routes Summary

| VRF | Destination Prefix | Next Hop IP             | Exit interface      | Administrative Distance       | Tag               | Route Name                    | Metric         |
| --- | ------------------ | ----------------------- | ------------------- | ----------------------------- | ----------------- | ----------------------------- | -------------- |
| MGMT  | 0.0.0.0/0 |  10.73.254.253  |  -  |  1  |  -  |  -  |  - |

### Static Routes Device Configuration

```eos
!
ip route vrf MGMT 0.0.0.0/0 10.73.254.253
```

## Router BGP

### Router BGP Summary

| BGP AS | Router ID |
| ------ | --------- |
| 65001|  192.168.1.1 |

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

| Neighbor | Remote AS | VRF | Send-community | Maximum-routes | Allowas-in |
| -------- | --------- | --- | -------------- | -------------- | ---------- |
| 172.31.250.1 | 65000 | default | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - |
| 172.31.251.1 | 65107 | default | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - |
| 172.31.251.5 | 65108 | default | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - |
| 172.31.255.1 | 65101 | default | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - |
| 172.31.255.5 | 65101 | default | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - |
| 172.31.255.9 | 65102 | default | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - |
| 172.31.255.13 | 65102 | default | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - |
| 172.31.255.17 | 65103 | default | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - |
| 172.31.255.21 | 65104 | default | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - |
| 172.31.255.25 | 65105 | default | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - |
| 172.31.255.29 | 65105 | default | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - |
| 172.31.255.33 | 65106 | default | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - |
| 172.31.255.37 | 65106 | default | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - |

### Router BGP Device Configuration

```eos
!
router bgp 65001
   router-id 192.168.1.1
   no bgp default ipv4-unicast
   distance bgp 20 200 200
   graceful-restart restart-time 300
   graceful-restart
   maximum-paths 4 ecmp 4
   neighbor IPv4-UNDERLAY-PEERS peer group
   neighbor IPv4-UNDERLAY-PEERS password 7 AQQvKeimxJu+uGQ/yYvv9w==
   neighbor IPv4-UNDERLAY-PEERS send-community
   neighbor IPv4-UNDERLAY-PEERS maximum-routes 12000
   neighbor 172.31.250.1 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.250.1 remote-as 65000
   neighbor 172.31.250.1 description EAPI-RS01_Ethernet1
   neighbor 172.31.251.1 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.251.1 remote-as 65107
   neighbor 172.31.251.1 description EAPI-L2LEAF01_Ethernet1
   neighbor 172.31.251.5 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.251.5 remote-as 65108
   neighbor 172.31.251.5 description EAPI-L2LEAF02_Ethernet1
   neighbor 172.31.255.1 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.1 remote-as 65101
   neighbor 172.31.255.1 description EAPI-LEAF1A_Ethernet1
   neighbor 172.31.255.5 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.5 remote-as 65101
   neighbor 172.31.255.5 description EAPI-LEAF1B_Ethernet1
   neighbor 172.31.255.9 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.9 remote-as 65102
   neighbor 172.31.255.9 description EAPI-LEAF2A_Ethernet1
   neighbor 172.31.255.13 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.13 remote-as 65102
   neighbor 172.31.255.13 description EAPI-LEAF2B_Ethernet1
   neighbor 172.31.255.17 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.17 remote-as 65103
   neighbor 172.31.255.17 description EAPI-LEAF3A_Ethernet1
   neighbor 172.31.255.21 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.21 remote-as 65104
   neighbor 172.31.255.21 description EAPI-LEAF4A_Ethernet1
   neighbor 172.31.255.25 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.25 remote-as 65105
   neighbor 172.31.255.25 description EAPI-BL01A_Ethernet1
   neighbor 172.31.255.29 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.29 remote-as 65105
   neighbor 172.31.255.29 description EAPI-BL01B_Ethernet1
   neighbor 172.31.255.33 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.33 remote-as 65106
   neighbor 172.31.255.33 description EAPI-CL01A_Ethernet1
   neighbor 172.31.255.37 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.37 remote-as 65106
   neighbor 172.31.255.37 description EAPI-CL01B_Ethernet1
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
| MGMT | disabled |

## VRF Instances Device Configuration

```eos
!
vrf instance MGMT
```

# Quality Of Service
