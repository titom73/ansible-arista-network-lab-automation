# avd-cl01b
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
- [MLAG](#mlag)
  - [MLAG Summary](#mlag-summary)
  - [MLAG Device Configuration](#mlag-device-configuration)
- [Spanning Tree](#spanning-tree)
  - [Spanning Tree Summary](#spanning-tree-summary)
  - [Spanning Tree Device Configuration](#spanning-tree-device-configuration)
- [Internal VLAN Allocation Policy](#internal-vlan-allocation-policy)
  - [Internal VLAN Allocation Policy Summary](#internal-vlan-allocation-policy-summary)
  - [Internal VLAN Allocation Policy Configuration](#internal-vlan-allocation-policy-configuration)
- [VLANs](#vlans)
  - [VLANs Summary](#vlans-summary)
  - [VLANs Device Configuration](#vlans-device-configuration)
- [Interfaces](#interfaces)
  - [Ethernet Interfaces](#ethernet-interfaces)
  - [Port-Channel Interfaces](#port-channel-interfaces)
  - [Loopback Interfaces](#loopback-interfaces)
  - [VLAN Interfaces](#vlan-interfaces)
  - [VXLAN Interface](#vxlan-interface)
- [Routing](#routing)
  - [Service Routing Protocols Model](#service-routing-protocols-model)
  - [Virtual Router MAC Address](#virtual-router-mac-address)
  - [IP Routing](#ip-routing)
  - [IPv6 Routing](#ipv6-routing)
  - [Static Routes](#static-routes)
  - [Router BGP](#router-bgp)
- [BFD](#bfd)
  - [Router BFD](#router-bfd)
- [Multicast](#multicast)
  - [IP IGMP Snooping](#ip-igmp-snooping)
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
| Management0 | oob_management | oob | MGMT | 10.73.252.20/24 | 10.73.254.1 |

#### IPv6

| Management Interface | description | Type | VRF | IPv6 Address | IPv6 Gateway |
| -------------------- | ----------- | ---- | --- | ------------ | ------------ |
| Management0 | oob_management | oob | MGMT | -  | - |

### Management Interfaces Device Configuration

```eos
!
interface Management0
   description oob_management
   no shutdown
   vrf MGMT
   ip address 10.73.252.20/24
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
| 0 | Enabled |

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
| MGT | Enabled |

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

| HTTP | HTTPS | Default Services |
| ---- | ----- | ---------------- |
| False | True | - |

### Management API VRF Access

| VRF Name | IPv4 ACL | IPv6 ACL |
| -------- | -------- | -------- |
| default | - | - |
| MGMT | - | - |

### Management API HTTP Configuration

```eos
!
management api http-commands
   protocol https
   no shutdown
   !
   vrf default
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
aaa authorization exec default local
!
```

# Monitoring

## TerminAttr Daemon

### TerminAttr Daemon Summary

| CV Compression | CloudVision Servers | VRF | Authentication | Smash Excludes | Ingest Exclude | Bypass AAA |
| -------------- | ------------------- | --- | -------------- | -------------- | -------------- | ---------- |
| gzip | 10.73.1.239:9910 | MGMT | key,telarista | ale,flexCounter,hardware,kni,pulse,strata | /Sysdb/cell/1/agent,/Sysdb/cell/2/agent | False |

### TerminAttr Daemon Device Configuration

```eos
!
daemon TerminAttr
   exec /usr/bin/TerminAttr -cvaddr=10.73.1.239:9910 -cvauth=key,telarista -cvvrf=MGMT -smashexcludes=ale,flexCounter,hardware,kni,pulse,strata -ingestexclude=/Sysdb/cell/1/agent,/Sysdb/cell/2/agent -taillogs
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

# MLAG

## MLAG Summary

| Domain-id | Local-interface | Peer-address | Peer-link |
| --------- | --------------- | ------------ | --------- |
| avd_cl01 | Vlan4094 | 172.31.253.36 | Port-Channel7 |

Dual primary detection is disabled.

## MLAG Device Configuration

```eos
!
mlag configuration
   domain-id avd_cl01
   local-interface Vlan4094
   peer-address 172.31.253.36
   peer-link Port-Channel7
   reload-delay mlag 300
   reload-delay non-mlag 330
```

# Spanning Tree

## Spanning Tree Summary

STP mode: **mstp**

### MSTP Instance and Priority

| Instance(s) | Priority |
| -------- | -------- |
| 0 | 4096 |

### Global Spanning-Tree Settings

- Spanning Tree disabled for VLANs: **4093-4094**

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
| 110 | pr01-demo | - |
| 201 | b-elan-201 | - |
| 301 | central_lan_01 | - |
| 302 | central_lan_02 | - |
| 3010 | MLAG_iBGP_tenant_a_project01 | LEAF_PEER_L3 |
| 3012 | MLAG_iBGP_central_routing | LEAF_PEER_L3 |
| 4093 | LEAF_PEER_L3 | LEAF_PEER_L3 |
| 4094 | MLAG_PEER | MLAG |

## VLANs Device Configuration

```eos
!
vlan 110
   name pr01-demo
!
vlan 201
   name b-elan-201
!
vlan 301
   name central_lan_01
!
vlan 302
   name central_lan_02
!
vlan 3010
   name MLAG_iBGP_tenant_a_project01
   trunk group LEAF_PEER_L3
!
vlan 3012
   name MLAG_iBGP_central_routing
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

#### L2

| Interface | Description | Mode | VLANs | Native VLAN | Trunk Group | Channel-Group |
| --------- | ----------- | ---- | ----- | ----------- | ----------- | ------------- |
| Ethernet7 | MLAG_PEER_avd-cl01a_Ethernet7 | *trunk | *2-4094 | *- | *['LEAF_PEER_L3', 'MLAG'] | 7 |
| Ethernet8 | MLAG_PEER_avd-cl01a_Ethernet8 | *trunk | *2-4094 | *- | *['LEAF_PEER_L3', 'MLAG'] | 7 |

*Inherited from Port-Channel Interface

#### IPv4

| Interface | Description | Type | Channel Group | IP Address | VRF |  MTU | Shutdown | ACL In | ACL Out |
| --------- | ----------- | -----| ------------- | ---------- | ----| ---- | -------- | ------ | ------- |
| Ethernet1 | P2P_LINK_TO_AVD-SPINE1_Ethernet10 | routed | - | 172.31.255.77/31 | default | 1500 | false | - | - |
| Ethernet2 | P2P_LINK_TO_AVD-SPINE2_Ethernet10 | routed | - | 172.31.255.79/31 | default | 1500 | false | - | - |

### Ethernet Interfaces Device Configuration

```eos
!
interface Ethernet1
   description P2P_LINK_TO_AVD-SPINE1_Ethernet10
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.255.77/31
!
interface Ethernet2
   description P2P_LINK_TO_AVD-SPINE2_Ethernet10
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.255.79/31
!
interface Ethernet7
   description MLAG_PEER_avd-cl01a_Ethernet7
   no shutdown
   channel-group 7 mode active
!
interface Ethernet8
   description MLAG_PEER_avd-cl01a_Ethernet8
   no shutdown
   channel-group 7 mode active
```

## Port-Channel Interfaces

### Port-Channel Interfaces Summary

#### L2

| Interface | Description | Type | Mode | VLANs | Native VLAN | Trunk Group | LACP Fallback Timeout | LACP Fallback Mode | MLAG ID | EVPN ESI |
| --------- | ----------- | ---- | ---- | ----- | ----------- | ------------| --------------------- | ------------------ | ------- | -------- |
| Port-Channel7 | MLAG_PEER_avd-cl01a_Po7 | switched | trunk | 2-4094 | - | ['LEAF_PEER_L3', 'MLAG'] | - | - | - | - |

### Port-Channel Interfaces Device Configuration

```eos
!
interface Port-Channel7
   description MLAG_PEER_avd-cl01a_Po7
   no shutdown
   switchport
   switchport trunk allowed vlan 2-4094
   switchport mode trunk
   switchport trunk group LEAF_PEER_L3
   switchport trunk group MLAG
```

## Loopback Interfaces

### Loopback Interfaces Summary

#### IPv4

| Interface | Description | VRF | IP Address |
| --------- | ----------- | --- | ---------- |
| Loopback0 | EVPN_Overlay_Peering | default | 192.168.255.22/32 |
| Loopback1 | VTEP_VXLAN_Tunnel_Source | default | 192.168.254.21/32 |

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
   no shutdown
   ip address 192.168.255.22/32
!
interface Loopback1
   description VTEP_VXLAN_Tunnel_Source
   no shutdown
   ip address 192.168.254.21/32
```

## VLAN Interfaces

### VLAN Interfaces Summary

| Interface | Description | VRF |  MTU | Shutdown |
| --------- | ----------- | --- | ---- | -------- |
| Vlan110 | pr01-demo | tenant_a_project01 | - | false |
| Vlan301 | central_lan_01 | central_routing | - | false |
| Vlan302 | central_lan_02 | central_routing | - | false |
| Vlan3010 | MLAG_PEER_L3_iBGP: vrf tenant_a_project01 | tenant_a_project01 | 1500 | false |
| Vlan3012 | MLAG_PEER_L3_iBGP: vrf central_routing | central_routing | 1500 | false |
| Vlan4093 | MLAG_PEER_L3_PEERING | default | 1500 | false |
| Vlan4094 | MLAG_PEER | default | 1500 | false |

#### IPv4

| Interface | VRF | IP Address | IP Address Virtual | IP Router Virtual Address | VRRP | ACL In | ACL Out |
| --------- | --- | ---------- | ------------------ | ------------------------- | ---- | ------ | ------- |
| Vlan110 |  tenant_a_project01  |  -  |  10.1.10.254/24  |  -  |  -  |  -  |  -  |
| Vlan301 |  central_routing  |  -  |  10.3.1.254/24  |  -  |  -  |  -  |  -  |
| Vlan302 |  central_routing  |  -  |  10.3.2.254/24  |  -  |  -  |  -  |  -  |
| Vlan3010 |  tenant_a_project01  |  172.31.253.39/31  |  -  |  -  |  -  |  -  |  -  |
| Vlan3012 |  central_routing  |  172.31.253.39/31  |  -  |  -  |  -  |  -  |  -  |
| Vlan4093 |  default  |  172.31.253.39/31  |  -  |  -  |  -  |  -  |  -  |
| Vlan4094 |  default  |  172.31.253.37/31  |  -  |  -  |  -  |  -  |  -  |

### VLAN Interfaces Device Configuration

```eos
!
interface Vlan110
   description pr01-demo
   no shutdown
   vrf tenant_a_project01
   ip address virtual 10.1.10.254/24
!
interface Vlan301
   description central_lan_01
   no shutdown
   vrf central_routing
   ip address virtual 10.3.1.254/24
!
interface Vlan302
   description central_lan_02
   no shutdown
   vrf central_routing
   ip address virtual 10.3.2.254/24
!
interface Vlan3010
   description MLAG_PEER_L3_iBGP: vrf tenant_a_project01
   no shutdown
   mtu 1500
   vrf tenant_a_project01
   ip address 172.31.253.39/31
!
interface Vlan3012
   description MLAG_PEER_L3_iBGP: vrf central_routing
   no shutdown
   mtu 1500
   vrf central_routing
   ip address 172.31.253.39/31
!
interface Vlan4093
   description MLAG_PEER_L3_PEERING
   no shutdown
   mtu 1500
   ip address 172.31.253.39/31
!
interface Vlan4094
   description MLAG_PEER
   no shutdown
   mtu 1500
   no autostate
   ip address 172.31.253.37/31
```

## VXLAN Interface

### VXLAN Interface Summary

| Setting | Value |
| ------- | ----- |
| Source Interface | Loopback1 |
| UDP port | 4789 |
| EVPN MLAG Shared Router MAC | mlag-system-id |

#### VLAN to VNI, Flood List and Multicast Group Mappings

| VLAN | VNI | Flood List | Multicast Group |
| ---- | --- | ---------- | --------------- |
| 110 | 10110 | - | - |
| 201 | 20201 | - | - |
| 301 | 30301 | - | - |
| 302 | 30302 | - | - |

#### VRF to VNI and Multicast Group Mappings

| VRF | VNI | Multicast Group |
| ---- | --- | --------------- |
| central_routing | 13 | - |
| tenant_a_project01 | 11 | - |

### VXLAN Interface Device Configuration

```eos
!
interface Vxlan1
   description avd-cl01b_VTEP
   vxlan source-interface Loopback1
   vxlan virtual-router encapsulation mac-address mlag-system-id
   vxlan udp-port 4789
   vxlan vlan 110 vni 10110
   vxlan vlan 201 vni 20201
   vxlan vlan 301 vni 30301
   vxlan vlan 302 vni 30302
   vxlan vrf central_routing vni 13
   vxlan vrf tenant_a_project01 vni 11
```

# Routing
## Service Routing Protocols Model

Multi agent routing protocol model enabled

```eos
!
service routing protocols model multi-agent
```

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
| default | true |
| central_routing | true |
| MGMT | false |
| tenant_a_project01 | true |

### IP Routing Device Configuration

```eos
!
ip routing
ip routing vrf central_routing
no ip routing vrf MGMT
ip routing vrf tenant_a_project01
```
## IPv6 Routing

### IPv6 Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default | false |
| central_routing | false |
| MGMT | false |
| tenant_a_project01 | false |

## Static Routes

### Static Routes Summary

| VRF | Destination Prefix | Next Hop IP             | Exit interface      | Administrative Distance       | Tag               | Route Name                    | Metric         |
| --- | ------------------ | ----------------------- | ------------------- | ----------------------------- | ----------------- | ----------------------------- | -------------- |
| MGMT | 0.0.0.0/0 | 10.73.254.1 | - | 1 | - | - | - |

### Static Routes Device Configuration

```eos
!
ip route vrf MGMT 0.0.0.0/0 10.73.254.1
```

## Router BGP

### Router BGP Summary

| BGP AS | Router ID |
| ------ | --------- |
| 65106|  192.168.255.22 |

| BGP Tuning |
| ---------- |
| no bgp default ipv4-unicast |
| distance bgp 20 200 200 |
| graceful-restart restart-time 300 |
| graceful-restart |
| maximum-paths 4 ecmp 4 |

### Router BGP Peer Groups

#### EVPN-OVERLAY-PEERS

| Settings | Value |
| -------- | ----- |
| Address Family | evpn |
| Source | Loopback0 |
| BFD | True |
| Ebgp multihop | 3 |
| Send community | all |
| Maximum routes | 0 (no limit) |

#### IPv4-UNDERLAY-PEERS

| Settings | Value |
| -------- | ----- |
| Address Family | ipv4 |
| Send community | all |
| Maximum routes | 12000 |

#### MLAG-IPv4-UNDERLAY-PEER

| Settings | Value |
| -------- | ----- |
| Address Family | ipv4 |
| Remote AS | 65106 |
| Next-hop self | True |
| Send community | all |
| Maximum routes | 12000 |

### BGP Neighbors

| Neighbor | Remote AS | VRF | Shutdown | Send-community | Maximum-routes | Allowas-in | BFD | RIB Pre-Policy Retain |
| -------- | --------- | --- | -------- | -------------- | -------------- | ---------- | --- | --------------------- |
| 172.31.253.38 | Inherited from peer group MLAG-IPv4-UNDERLAY-PEER | default | - | Inherited from peer group MLAG-IPv4-UNDERLAY-PEER | Inherited from peer group MLAG-IPv4-UNDERLAY-PEER | - | - | - |
| 172.31.255.76 | 65001 | default | - | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - | - | - |
| 172.31.255.78 | 65001 | default | - | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - | - | - |
| 192.168.0.26 | 65000 | default | - | Inherited from peer group EVPN-OVERLAY-PEERS | Inherited from peer group EVPN-OVERLAY-PEERS | - | Inherited from peer group EVPN-OVERLAY-PEERS | - |
| 192.168.0.27 | 65000 | default | - | Inherited from peer group EVPN-OVERLAY-PEERS | Inherited from peer group EVPN-OVERLAY-PEERS | - | Inherited from peer group EVPN-OVERLAY-PEERS | - |
| 172.31.253.38 | Inherited from peer group MLAG-IPv4-UNDERLAY-PEER | central_routing | - | Inherited from peer group MLAG-IPv4-UNDERLAY-PEER | Inherited from peer group MLAG-IPv4-UNDERLAY-PEER | - | - | - |
| 172.31.253.38 | Inherited from peer group MLAG-IPv4-UNDERLAY-PEER | tenant_a_project01 | - | Inherited from peer group MLAG-IPv4-UNDERLAY-PEER | Inherited from peer group MLAG-IPv4-UNDERLAY-PEER | - | - | - |

### Router BGP EVPN Address Family

#### EVPN Peer Groups

| Peer Group | Activate |
| ---------- | -------- |
| EVPN-OVERLAY-PEERS | True |

### Router BGP VLAN Aware Bundles

| VLAN Aware Bundle | Route-Distinguisher | Both Route-Target | Import Route Target | Export Route-Target | Redistribute | VLANs |
| ----------------- | ------------------- | ----------------- | ------------------- | ------------------- | ------------ | ----- |
| b-elan-201 | 192.168.255.22:20201 | 20201:20201 | - | - | learned | 201 |
| central_routing | 192.168.255.22:13 | 13:13 | - | - | learned | 301-302 |
| tenant_a_project01 | 192.168.255.22:11 | 11:11 | - | - | learned | 110 |

### Router BGP VRFs

| VRF | Route-Distinguisher | Redistribute |
| --- | ------------------- | ------------ |
| central_routing | 192.168.255.22:13 | connected |
| tenant_a_project01 | 192.168.255.22:11 | connected<br>static |

### Router BGP Device Configuration

```eos
!
router bgp 65106
   router-id 192.168.255.22
   no bgp default ipv4-unicast
   distance bgp 20 200 200
   graceful-restart restart-time 300
   graceful-restart
   maximum-paths 4 ecmp 4
   neighbor EVPN-OVERLAY-PEERS peer group
   neighbor EVPN-OVERLAY-PEERS update-source Loopback0
   neighbor EVPN-OVERLAY-PEERS bfd
   neighbor EVPN-OVERLAY-PEERS ebgp-multihop 3
   neighbor EVPN-OVERLAY-PEERS send-community
   neighbor EVPN-OVERLAY-PEERS maximum-routes 0
   neighbor IPv4-UNDERLAY-PEERS peer group
   neighbor IPv4-UNDERLAY-PEERS send-community
   neighbor IPv4-UNDERLAY-PEERS maximum-routes 12000
   neighbor MLAG-IPv4-UNDERLAY-PEER peer group
   neighbor MLAG-IPv4-UNDERLAY-PEER remote-as 65106
   neighbor MLAG-IPv4-UNDERLAY-PEER next-hop-self
   neighbor MLAG-IPv4-UNDERLAY-PEER description avd-cl01a
   neighbor MLAG-IPv4-UNDERLAY-PEER send-community
   neighbor MLAG-IPv4-UNDERLAY-PEER maximum-routes 12000
   neighbor MLAG-IPv4-UNDERLAY-PEER route-map RM-MLAG-PEER-IN in
   neighbor 172.31.253.38 peer group MLAG-IPv4-UNDERLAY-PEER
   neighbor 172.31.253.38 description avd-cl01a
   neighbor 172.31.255.76 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.76 remote-as 65001
   neighbor 172.31.255.76 description avd-spine1_Ethernet10
   neighbor 172.31.255.78 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.78 remote-as 65001
   neighbor 172.31.255.78 description avd-spine2_Ethernet10
   neighbor 192.168.0.26 peer group EVPN-OVERLAY-PEERS
   neighbor 192.168.0.26 remote-as 65000
   neighbor 192.168.0.26 description avd-rs01
   neighbor 192.168.0.27 peer group EVPN-OVERLAY-PEERS
   neighbor 192.168.0.27 remote-as 65000
   neighbor 192.168.0.27 description avd-rs02
   redistribute connected route-map RM-CONN-2-BGP
   !
   vlan-aware-bundle b-elan-201
      rd 192.168.255.22:20201
      route-target both 20201:20201
      redistribute learned
      vlan 201
   !
   vlan-aware-bundle central_routing
      rd 192.168.255.22:13
      route-target both 13:13
      redistribute learned
      vlan 301-302
   !
   vlan-aware-bundle tenant_a_project01
      rd 192.168.255.22:11
      route-target both 11:11
      redistribute learned
      vlan 110
   !
   address-family evpn
      neighbor EVPN-OVERLAY-PEERS activate
   !
   address-family ipv4
      no neighbor EVPN-OVERLAY-PEERS activate
      neighbor IPv4-UNDERLAY-PEERS activate
      neighbor MLAG-IPv4-UNDERLAY-PEER activate
   !
   vrf central_routing
      rd 192.168.255.22:13
      route-target import evpn 13:13
      route-target export evpn 13:13
      router-id 192.168.255.22
      neighbor 172.31.253.38 peer group MLAG-IPv4-UNDERLAY-PEER
      redistribute connected
   !
   vrf tenant_a_project01
      rd 192.168.255.22:11
      route-target import evpn 11:11
      route-target export evpn 11:11
      router-id 192.168.255.22
      neighbor 172.31.253.38 peer group MLAG-IPv4-UNDERLAY-PEER
      redistribute connected
      redistribute static
```

# BFD

## Router BFD

### Router BFD Multihop Summary

| Interval | Minimum RX | Multiplier |
| -------- | ---------- | ---------- |
| 1200 | 1200 | 3 |

### Router BFD Device Configuration

```eos
!
router bfd
   multihop interval 1200 min-rx 1200 multiplier 3
```

# Multicast

## IP IGMP Snooping

### IP IGMP Snooping Summary

| IGMP Snooping | Fast Leave | Interface Restart Query | Proxy | Restart Query Interval | Robustness Variable |
| ------------- | ---------- | ----------------------- | ----- | ---------------------- | ------------------- |
| Enabled | - | - | - | - | - |

### IP IGMP Snooping Device Configuration

```eos
```

# Filters

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

## Route-maps

### Route-maps Summary

#### RM-CONN-2-BGP

| Sequence | Type | Match and/or Set |
| -------- | ---- | ---------------- |
| 10 | permit | match ip address prefix-list PL-LOOPBACKS-EVPN-OVERLAY |

#### RM-MLAG-PEER-IN

| Sequence | Type | Match and/or Set |
| -------- | ---- | ---------------- |
| 10 | permit | set origin incomplete |

### Route-maps Device Configuration

```eos
!
route-map RM-CONN-2-BGP permit 10
   match ip address prefix-list PL-LOOPBACKS-EVPN-OVERLAY
!
route-map RM-MLAG-PEER-IN permit 10
   description Make routes learned over MLAG Peer-link less preferred on spines to ensure optimal routing
   set origin incomplete
```

# ACL

# VRF Instances

## VRF Instances Summary

| VRF Name | IP Routing |
| -------- | ---------- |
| central_routing | enabled |
| MGMT | disabled |
| tenant_a_project01 | enabled |

## VRF Instances Device Configuration

```eos
!
vrf instance central_routing
!
vrf instance MGMT
!
vrf instance tenant_a_project01
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