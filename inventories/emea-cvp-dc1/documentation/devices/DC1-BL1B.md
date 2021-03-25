# DC1-BL1B
# Table of Contents
<!-- toc -->

- [Management](#management)
  - [Management Interfaces](#management-interfaces)
  - [DNS Domain](#dns-domain)
  - [Name Servers](#name-servers)
  - [NTP](#ntp)
  - [Management API HTTP](#management-api-http)
- [Authentication](#authentication)
  - [Local Users](#local-users)
- [Monitoring](#monitoring)
  - [TerminAttr Daemon](#terminattr-daemon)
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
  - [Virtual Router MAC Address](#virtual-router-mac-address)
  - [IP Routing](#ip-routing)
  - [IPv6 Routing](#ipv6-routing)
  - [Static Routes](#static-routes)
  - [Router ISIS](#router-isis)
  - [Router BGP](#router-bgp)
- [BFD](#bfd)
  - [Router BFD](#router-bfd)
- [Multicast](#multicast)
  - [IP IGMP Snooping](#ip-igmp-snooping)
- [Filters](#filters)
  - [Route-maps](#route-maps)
  - [IP Extended Communities](#ip-extended-communities)
- [ACL](#acl)
- [VRF Instances](#vrf-instances)
  - [VRF Instances Summary](#vrf-instances-summary)
  - [VRF Instances Device Configuration](#vrf-instances-device-configuration)
- [Virtual Source NAT](#virtual-source-nat)
  - [Virtual Source NAT Summary](#virtual-source-nat-summary)
  - [Virtual Source NAT Configuration](#virtual-source-nat-configuration)
- [Quality Of Service](#quality-of-service)

<!-- toc -->
# Management

## Management Interfaces

### Management Interfaces Summary

#### IPv4

| Management Interface | description | Type | VRF | IP Address | Gateway |
| -------------------- | ----------- | ---- | --- | ---------- | ------- |
| Management1 | oob_management | oob | MGMT | 10.73.1.23/16 | 10.73.0.1 |

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
   ip address 10.73.1.23/16
```

## DNS Domain

### DNS domain: eve.emea.lab

### DNS Domain Device Configuration

```eos
!
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

## NTP

### NTP Summary

- Local Interface: Management1

- VRF: MGMT

| Node | Primary |
| ---- | ------- |
| fr.pool.ntp.org | true |

### NTP Device Configuration

```eos
!
ntp local-interface vrf MGMT Management1
ntp server vrf MGMT fr.pool.ntp.org prefer
```

## Management API HTTP

### Management API HTTP Summary

| HTTP | HTTPS |
| ---------- | ---------- |
| default | true |

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

### Local Users Device Configuration

```eos
!
username admin privilege 15 role network-admin nopassword
username ansible privilege 15 role network-admin secret sha512 $6$ZMTiXhLqBo7v1si1$sytOdfL9pAFj4paRrqnQeolINyi1zTrBECVQimMvYRAR5wL8RQa02Qet9Jz7D6PXANdb.CEyeVrLbWv8INv7K0
username cvpadmin privilege 15 role network-admin secret sha512 $6$rZKcbIZ7iWGAWTUM$TCgDn1KcavS0s.OV8lacMTUkxTByfzcGlFlYUWroxYuU7M/9bIodhRO7nXGzMweUxvbk8mJmQl8Bh44cRktUj.
```

# Monitoring

## TerminAttr Daemon

### TerminAttr Daemon Summary

| CV Compression | Ingest gRPC URL | Ingest Authentication Key | Smash Excludes | Ingest Exclude | Ingest VRF |  NTP VRF | AAA Disabled |
| -------------- | --------------- | ------------------------- | -------------- | -------------- | ---------- | -------- | ------ |
| gzip | 10.83.28.164:9910 |  | ale,flexCounter,hardware,kni,pulse,strata | /Sysdb/cell/1/agent,/Sysdb/cell/2/agent | MGMT | MGMT | False |

### TerminAttr Daemon Device Configuration

```eos
!
daemon TerminAttr
   exec /usr/bin/TerminAttr -ingestgrpcurl=10.83.28.164:9910 -cvcompression=gzip -ingestauth=key, -smashexcludes=ale,flexCounter,hardware,kni,pulse,strata -ingestexclude=/Sysdb/cell/1/agent,/Sysdb/cell/2/agent -ingestvrf=MGMT -taillogs
   no shutdown
```

# MLAG

## MLAG Summary

| Domain-id | Local-interface | Peer-address | Peer-link |
| --------- | --------------- | ------------ | --------- |
| DC1_BL1 | Vlan4094 | 10.255.252.16 | Port-Channel3 |

Dual primary detection is disabled.

## MLAG Device Configuration

```eos
!
mlag configuration
   domain-id DC1_BL1
   local-interface Vlan4094
   peer-address 10.255.252.16
   peer-link Port-Channel3
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

Spanning Tree disabled for VLANs: **4093-4094**

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
| descending | 4000 | 4090 |

## Internal VLAN Allocation Policy Configuration

```eos
!
vlan internal order descending range 4000 4090
```

# VLANs

## VLANs Summary

| VLAN ID | Name | Trunk Groups |
| ------- | ---- | ------------ |
| 110 | Tenant_A_OP_Zone_1 | none  |
| 111 | Tenant_A_OP_Zone_2 | none  |
| 114 | Tenant_A_OP_Zone_3 | none  |
| 411 | Tenant_D_OP_Zone_1 | none  |
| 412 | Tenant_D_OP_Zone_2 | none  |
| 3009 | MLAG_iBGP_Tenant_A_OP_Zone | LEAF_PEER_L3  |
| 4093 | LEAF_PEER_L3 | LEAF_PEER_L3  |
| 4094 | MLAG_PEER | MLAG  |

## VLANs Device Configuration

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
!
vlan 3009
   name MLAG_iBGP_Tenant_A_OP_Zone
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
| Ethernet3 | MLAG_PEER_DC1-BL1A_Ethernet3 | *trunk | *2-4094 | *- | *['LEAF_PEER_L3', 'MLAG'] | 3 |
| Ethernet4 | MLAG_PEER_DC1-BL1A_Ethernet4 | *trunk | *2-4094 | *- | *['LEAF_PEER_L3', 'MLAG'] | 3 |

*Inherited from Port-Channel Interface

#### IPv4

| Interface | Description | Type | Channel Group | IP Address | VRF |  MTU | Shutdown | ACL In | ACL Out |
| --------- | ----------- | -----| ------------- | ---------- | ----| ---- | -------- | ------ | ------- |
| Ethernet1 |  P2P_LINK_TO_DC1-SPINE1_Ethernet7  |  routed  | - |  172.31.255.37/31  |  default  |  1500  |  false  |  -  |  -  |
| Ethernet2 |  P2P_LINK_TO_DC1-SPINE2_Ethernet7  |  routed  | - |  172.31.255.39/31  |  default  |  1500  |  false  |  -  |  -  |
| Ethernet5 |  P2P_LINK_TO_DC2-BL01A_Ethernet5  |  routed  | - |  172.255.0.3/31  |  default  |  1500  |  -  |  -  |  -  |

#### ISIS

| Interface | Channel Group | ISIS Instance | ISIS Metric | Mode |
| --------- | ------------- | ------------- | ----------- | ---- |
| Ethernet1 | - | EVPN_UNDERLAY |  50 |  point-to-point |
| Ethernet2 | - | EVPN_UNDERLAY |  50 |  point-to-point |

### Ethernet Interfaces Device Configuration

```eos
!
interface Ethernet1
   description P2P_LINK_TO_DC1-SPINE1_Ethernet7
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.255.37/31
   isis enable EVPN_UNDERLAY
   isis metric 50
   isis network point-to-point
!
interface Ethernet2
   description P2P_LINK_TO_DC1-SPINE2_Ethernet7
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.255.39/31
   isis enable EVPN_UNDERLAY
   isis metric 50
   isis network point-to-point
!
interface Ethernet3
   description MLAG_PEER_DC1-BL1A_Ethernet3
   no shutdown
   channel-group 3 mode active
!
interface Ethernet4
   description MLAG_PEER_DC1-BL1A_Ethernet4
   no shutdown
   channel-group 3 mode active
!
interface Ethernet5
   description P2P_LINK_TO_DC2-BL01A_Ethernet5
   mtu 1500
   no switchport
   ip address 172.255.0.3/31
```

## Port-Channel Interfaces

### Port-Channel Interfaces Summary

#### L2

| Interface | Description | Type | Mode | VLANs | Native VLAN | Trunk Group | LACP Fallback Timeout | LACP Fallback Mode | MLAG ID | EVPN ESI |
| --------- | ----------- | ---- | ---- | ----- | ----------- | ------------| --------------------- | ------------------ | ------- | -------- |
| Port-Channel3 | MLAG_PEER_DC1-BL1A_Po3 | switched | trunk | 2-4094 | - | ['LEAF_PEER_L3', 'MLAG'] | - | - | - | - |

### Port-Channel Interfaces Device Configuration

```eos
!
interface Port-Channel3
   description MLAG_PEER_DC1-BL1A_Po3
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
| Loopback0 | EVPN_Overlay_Peering | default | 192.168.255.12/32 |
| Loopback1 | VTEP_VXLAN_Tunnel_Source | default | 192.168.254.11/32 |
| Loopback100 | Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | Tenant_A_OP_Zone | 10.255.1.12/32 |

#### IPv6

| Interface | Description | VRF | IPv6 Address |
| --------- | ----------- | --- | ------------ |
| Loopback0 | EVPN_Overlay_Peering | default | - |
| Loopback1 | VTEP_VXLAN_Tunnel_Source | default | - |
| Loopback100 | Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | Tenant_A_OP_Zone | - |

#### ISIS

| Interface | ISIS instance | ISIS metric | Interface mode |
| -------- | -------- | -------- | -------- |
| Loopback0 | EVPN_UNDERLAY |  - |  passive |
| Loopback1 | EVPN_UNDERLAY |  - |  passive |

### Loopback Interfaces Device Configuration

```eos
!
interface Loopback0
   description EVPN_Overlay_Peering
   no shutdown
   ip address 192.168.255.12/32
   isis enable EVPN_UNDERLAY
   isis passive
!
interface Loopback1
   description VTEP_VXLAN_Tunnel_Source
   no shutdown
   ip address 192.168.254.11/32
   isis enable EVPN_UNDERLAY
   isis passive
!
interface Loopback100
   description Tenant_A_OP_Zone_VTEP_DIAGNOSTICS
   no shutdown
   vrf Tenant_A_OP_Zone
   ip address 10.255.1.12/32
```

## VLAN Interfaces

### VLAN Interfaces Summary

| Interface | Description | VRF |  MTU | Shutdown |
| --------- | ----------- | --- | ---- | -------- |
| Vlan110 |  Tenant_A_OP_Zone_1  |  Tenant_A_OP_Zone  |  -  |  false  |
| Vlan111 |  Tenant_A_OP_Zone_2  |  Tenant_A_OP_Zone  |  -  |  false  |
| Vlan114 |  Tenant_A_OP_Zone_3  |  Tenant_A_OP_Zone  |  -  |  false  |
| Vlan3009 |  MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone  |  Tenant_A_OP_Zone  |  1500  |  false  |
| Vlan4093 |  MLAG_PEER_L3_PEERING  |  default  |  1500  |  false  |
| Vlan4094 |  MLAG_PEER  |  default  |  1500  |  false  |

#### IPv4

| Interface | VRF | IP Address | IP Address Virtual | IP Router Virtual Address | VRRP | ACL In | ACL Out |
| --------- | --- | ---------- | ------------------ | ------------------------- | ---- | ------ | ------- |
| Vlan110 |  Tenant_A_OP_Zone  |  -  |  10.1.10.254/24  |  -  |  -  |  -  |  -  |
| Vlan111 |  Tenant_A_OP_Zone  |  -  |  10.1.11.254/24  |  -  |  -  |  -  |  -  |
| Vlan114 |  Tenant_A_OP_Zone  |  -  |  10.1.14.254/24  |  -  |  -  |  -  |  -  |
| Vlan3009 |  Tenant_A_OP_Zone  |  10.255.251.17/31  |  -  |  -  |  -  |  -  |  -  |
| Vlan4093 |  default  |  10.255.251.17/31  |  -  |  -  |  -  |  -  |  -  |
| Vlan4094 |  default  |  10.255.252.17/31  |  -  |  -  |  -  |  -  |  -  |


#### ISIS

| Interface | ISIS Instance | ISIS Metric | Mode |
| --------- | ------------- | ----------- | ---- |
| Vlan4093 | EVPN_UNDERLAY |  50 |  point-to-point |

### VLAN Interfaces Device Configuration

```eos
!
interface Vlan110
   description Tenant_A_OP_Zone_1
   no shutdown
   vrf Tenant_A_OP_Zone
   ip address virtual 10.1.10.254/24
!
interface Vlan111
   description Tenant_A_OP_Zone_2
   no shutdown
   vrf Tenant_A_OP_Zone
   ip address virtual 10.1.11.254/24
!
interface Vlan114
   description Tenant_A_OP_Zone_3
   no shutdown
   vrf Tenant_A_OP_Zone
   ip address virtual 10.1.14.254/24
!
interface Vlan3009
   description MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone
   no shutdown
   mtu 1500
   vrf Tenant_A_OP_Zone
   ip address 10.255.251.17/31
!
interface Vlan4093
   description MLAG_PEER_L3_PEERING
   no shutdown
   mtu 1500
   ip address 10.255.251.17/31
   isis enable EVPN_UNDERLAY
   isis metric 50
   isis network point-to-point
!
interface Vlan4094
   description MLAG_PEER
   no shutdown
   mtu 1500
   no autostate
   ip address 10.255.252.17/31
```

## VXLAN Interface

### VXLAN Interface Summary

#### Source Interface: Loopback1

#### UDP port: 4789

#### VLAN to VNI Mappings

| VLAN | VNI |
| ---- | --- |
| 110 | 10110 |
| 111 | 50111 |
| 114 | 50114 |
| 411 | 40411 |
| 412 | 40412 |

#### VRF to VNI Mappings

| VLAN | VNI |
| ---- | --- |
| Tenant_A_OP_Zone | 10 |

### VXLAN Interface Device Configuration

```eos
!
interface Vxlan1
   vxlan source-interface Loopback1
   vxlan virtual-router encapsulation mac-address mlag-system-id
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
| default | true|| MGMT | false |
| Tenant_A_OP_Zone | true |

### IP Routing Device Configuration

```eos
!
ip routing
no ip routing vrf MGMT
ip routing vrf Tenant_A_OP_Zone
```
## IPv6 Routing

### IPv6 Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default | false || MGMT | false |
| Tenant_A_OP_Zone | false |


## Static Routes

### Static Routes Summary

| VRF | Destination Prefix | Next Hop IP             | Exit interface      | Administrative Distance       | Tag               | Route Name                    | Metric         |
| --- | ------------------ | ----------------------- | ------------------- | ----------------------------- | ----------------- | ----------------------------- | -------------- |
| MGMT  | 0.0.0.0/0 |  10.73.0.1  |  -  |  1  |  -  |  -  |  - |

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
| Net-ID | 49.0001.0001.0001.0010.00 |
| Type | level-2 |
| Address Family | ipv4 unicast |
| Log Adjacency Changes | True |

### ISIS Interfaces Summary

| Interface | ISIS Instance | ISIS Metric | Interface Mode |
| -------- | -------- | -------- | -------- |
| Ethernet1 | EVPN_UNDERLAY |  50 |  point-to-point |
| Ethernet2 | EVPN_UNDERLAY |  50 |  point-to-point |
| Vlan4093 | EVPN_UNDERLAY |  50 |  point-to-point |
| Loopback0 | EVPN_UNDERLAY |  - |  passive |
| Loopback1 | EVPN_UNDERLAY |  - |  passive |

### Router ISIS Device Configuration

```eos
!
router isis EVPN_UNDERLAY
   net 49.0001.0001.0001.0010.00
   is-type level-2
   router-id ipv4 192.168.255.12
   log-adjacency-changes
   !
   address-family ipv4 unicast
      maximum-paths 2
   !
```

## Router BGP

### Router BGP Summary

| BGP AS | Router ID |
| ------ | --------- |
| 65000|  192.168.255.12 |

| BGP Tuning |
| ---------- |
| no bgp default ipv4-unicast |
| distance bgp 20 200 200 |
| graceful-restart restart-time 300 |
| graceful-restart |
| maximum-paths 4 ecmp 4 |

### Router BGP Peer Groups

#### DCI-EVPN-OVERLAY-PEERS

| Settings | Value |
| -------- | ----- |
| Address Family | evpn |
| Remote_as | 65201 |
| Source | Loopback0 |
| Bfd | true |
| Ebgp multihop | 3 |
| Send community | True |
| Maximum routes | 0 (no limit) |

#### DCI-IPv4-UNDERLAY-PEERS

| Settings | Value |
| -------- | ----- |
| Address Family | ipv4 |
| Remote_as | 65201 |
| Send community | True |
| Maximum routes | 12000 |

#### EVPN-OVERLAY-PEERS

| Settings | Value |
| -------- | ----- |
| Address Family | evpn |
| Remote_as | 65000 |
| Source | Loopback0 |
| Bfd | true |
| Send community | all |
| Maximum routes | 0 (no limit) |

### BGP Neighbors

| Neighbor | Remote AS | VRF |
| -------- | --------- | --- |
| 172.255.0.2 | Inherited from peer group DCI-IPv4-UNDERLAY-PEERS | default |
| 192.168.253.6 | Inherited from peer group DCI-EVPN-OVERLAY-PEERS | default |
| 192.168.255.1 | Inherited from peer group EVPN-OVERLAY-PEERS | default |
| 192.168.255.2 | Inherited from peer group EVPN-OVERLAY-PEERS | default |
| 10.255.251.16 | Inherited from peer group MLAG-IPv4-UNDERLAY-PEER | Tenant_A_OP_Zone |

### Router BGP EVPN Address Family

#### Router BGP EVPN MAC-VRFs

##### VLAN aware bundles

| VLAN Aware Bundle | Route-Distinguisher | Both Route-Target | Import Route Target | Export Route-Target | Redistribute | VLANs |
| ----------------- | ------------------- | ----------------- | ------------------- | ------------------- | ------------ | ----- |
| Tenant_A_OP_Zone | 192.168.255.12:10 |  10:10  |  |  | learned | 110-111,114 |
| Tenant_D_OP_Zone_1 | 192.168.255.12:40411 |  40411:40411  |  |  | learned | 411 |
| Tenant_D_OP_Zone_2 | 192.168.255.12:40412 |  40412:40412  |  |  | learned | 412 |

#### Router BGP EVPN VRFs

| VRF | Route-Distinguisher | Redistribute |
| --- | ------------------- | ------------ |
| Tenant_A_OP_Zone | 192.168.255.12:10 | connected |

### Router BGP Device Configuration

```eos
!
router bgp 65000
   router-id 192.168.255.12
   no bgp default ipv4-unicast
   distance bgp 20 200 200
   graceful-restart restart-time 300
   graceful-restart
   maximum-paths 4 ecmp 4
   neighbor DCI-EVPN-OVERLAY-PEERS peer group
   neighbor DCI-EVPN-OVERLAY-PEERS remote-as 65201
   neighbor DCI-EVPN-OVERLAY-PEERS update-source Loopback0
   neighbor DCI-EVPN-OVERLAY-PEERS bfd
   neighbor DCI-EVPN-OVERLAY-PEERS ebgp-multihop 3
   neighbor DCI-EVPN-OVERLAY-PEERS send-community True
   neighbor DCI-EVPN-OVERLAY-PEERS maximum-routes 0
   neighbor DCI-IPv4-UNDERLAY-PEERS peer group
   neighbor DCI-IPv4-UNDERLAY-PEERS remote-as 65201
   neighbor DCI-IPv4-UNDERLAY-PEERS send-community True
   neighbor DCI-IPv4-UNDERLAY-PEERS maximum-routes 12000
   neighbor EVPN-OVERLAY-PEERS peer group
   neighbor EVPN-OVERLAY-PEERS remote-as 65000
   neighbor EVPN-OVERLAY-PEERS update-source Loopback0
   neighbor EVPN-OVERLAY-PEERS bfd
   neighbor EVPN-OVERLAY-PEERS password 7 q+VNViP5i4rVjW1cxFv2wA==
   neighbor EVPN-OVERLAY-PEERS send-community
   neighbor EVPN-OVERLAY-PEERS maximum-routes 0
   neighbor 172.255.0.2 peer group DCI-IPv4-UNDERLAY-PEERS
   neighbor 192.168.253.6 peer group DCI-EVPN-OVERLAY-PEERS
   neighbor 192.168.255.1 peer group EVPN-OVERLAY-PEERS
   neighbor 192.168.255.1 description DC1-SPINE1
   neighbor 192.168.255.2 peer group EVPN-OVERLAY-PEERS
   neighbor 192.168.255.2 description DC1-SPINE2
   !
   vlan-aware-bundle Tenant_A_OP_Zone
      rd 192.168.255.12:10
      route-target both 10:10
      redistribute learned
      vlan 110-111,114
   !
   vlan-aware-bundle Tenant_D_OP_Zone_1
      rd 192.168.255.12:40411
      route-target both 40411:40411
      redistribute learned
      vlan 411
   !
   vlan-aware-bundle Tenant_D_OP_Zone_2
      rd 192.168.255.12:40412
      route-target both 40412:40412
      redistribute learned
      vlan 412
   !
   address-family evpn
      neighbor DCI-EVPN-OVERLAY-PEERS activate
      neighbor EVPN-OVERLAY-PEERS route-map RM-EVPN-SOO-IN in
      neighbor EVPN-OVERLAY-PEERS route-map RM-EVPN-SOO-OUT out
      neighbor EVPN-OVERLAY-PEERS activate
   !
   address-family ipv4
      neighbor DCI-IPv4-UNDERLAY-PEERS activate
      no neighbor EVPN-OVERLAY-PEERS activate
   !
   vrf Tenant_A_OP_Zone
      rd 192.168.255.12:10
      route-target import evpn 10:10
      route-target export evpn 10:10
      router-id 192.168.255.12
      neighbor 10.255.251.16 peer group MLAG-IPv4-UNDERLAY-PEER
      redistribute connected
```

# BFD

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

IGMP snooping is globally enabled.


### IP IGMP Snooping Device Configuration

```eos
```

# Filters

## Route-maps

### Route-maps Summary

#### RM-EVPN-SOO-IN

| Sequence | Type | Match and/or Set |
| -------- | ---- | ---------------- |
| 10 | deny | match extcommunity ECL-EVPN-SOO |

#### RM-EVPN-SOO-OUT

| Sequence | Type | Match and/or Set |
| -------- | ---- | ---------------- |
| 10 | permit | set extcommunity soo 192.168.254.11:1 additive |

### Route-maps Device Configuration

```eos
!
route-map RM-EVPN-SOO-IN deny 10
   match extcommunity ECL-EVPN-SOO
!
route-map RM-EVPN-SOO-IN permit 20
!
route-map RM-EVPN-SOO-OUT permit 10
   set extcommunity soo 192.168.254.11:1 additive
```

## IP Extended Communities

### IP Extended Communities Summary

| Sequence | Type | Match and/or Set |
| -------- | ---- | ---------------- |
| ECL-EVPN-SOO | permit | soo 192.168.254.11:1 |

### IP Extended Communities configuration

```eos
!
ip extcommunity-list ECL-EVPN-SOO permit soo 192.168.254.11:1
```

# ACL

# VRF Instances

## VRF Instances Summary

| VRF Name | IP Routing |
| -------- | ---------- |
| MGMT | disabled |
| Tenant_A_OP_Zone | enabled |

## VRF Instances Device Configuration

```eos
!
vrf instance MGMT
!
vrf instance Tenant_A_OP_Zone
```

# Virtual Source NAT

## Virtual Source NAT Summary

| Source NAT VRF | Source NAT IP Address |
| -------------- | --------------------- |
| Tenant_A_OP_Zone | 10.255.1.12 |

## Virtual Source NAT Configuration

```eos
!
ip address virtual source-nat vrf Tenant_A_OP_Zone address 10.255.1.12
```

# Quality Of Service
