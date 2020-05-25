# DC1-LEAF1A

## Management Interfaces

### Management Interfaces Summary

| Management Interface | description | VRF | IP Address | Gateway |
| -------------------- | ----------- | --- | ---------- | ------- |
| Management1 | oob_management | MGMT | 10.73.254.11/24 | 10.73.254.253 |

### Management Interfaces Device Configuration

```eos
interface Management1
   description oob_management
   vrf MGMT
   ip address 10.73.254.11/24
!
```

## Hardware Counters

No Hardware Counters defined

## TerminAttr Daemon

TerminAttr Daemon not defined

## Internal VLAN allocation Policy

### Internal VLAN Allocation Policy Summary

| Policy Allocation | Range Beginning | Range Ending |
| ------------------| --------------- | ------------ |
| ascending | 1006 | 1199 |

### Internal VLAN Allocation Policy Configuration

```eos
vlan internal order ascending range 1006 1199
!
```

## Name Servers

### Name Servers Summary

| Name Server | Source VRF |
| ----------- | ---------- |
| 10.73.254.253 | MGMT |

### Name Servers Device Configuration

```eos
ip name-server vrf MGMT 10.73.254.253
!
```

## NTP

### NTP Summary

Local Interface: Management1
VRF: MGMT

| Node | Primary |
| ---- | ------- |
| 10.73.254.253 | True |

### NTP Device Configuration

```eos
ntp local-interface vrf MGMT Management1
ntp server vrf MGMT 10.73.254.253 prefer
!
```

## Spanning Tree

### Spanning Tree Summary

Mode: mstp

**MSTP Instance and Priority**:

| Instance | Priority |
| -------- | -------- |
| 0 | 4096 |

### Spanning Tree Device Configuration

```eos
spanning-tree mode mstp
no spanning-tree vlan-id 4094
spanning-tree mst 0 priority 4096
!
```

## AAA Authentication

AAA Not Configured

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
username admin privilege 15 role network-admin secret sha512 $6$Df86J4/SFMDE3/1K$Hef4KstdoxNDaami37cBquTWOTplC.miMPjXVgQxMe92.e5wxlnXOLlebgPj8Fz1KO0za/RCO7ZIs4Q6Eiq1g1
username ansible privilege 15 role network-admin secret sha512 $6$Dzu11L7yp9j3nCM9$FSptxMPyIL555OMO.ldnjDXgwZmrfMYwHSr0uznE5Qoqvd9a6UdjiFcJUhGLtvXVZR1r.A/iF5aAt50hf/EK4/
username cvpadmin privilege 15 role network-admin secret sha512 $6$rZKcbIZ7iWGAWTUM$TCgDn1KcavS0s.OV8lacMTUkxTByfzcGlFlYUWroxYuU7M/9bIodhRO7nXGzMweUxvbk8mJmQl8Bh44cRktUj.
username demo privilege 15 role network-admin secret sha512 $6$Dzu11L7yp9j3nCM9$FSptxMPyIL555OMO.ldnjDXgwZmrfMYwHSr0uznE5Qoqvd9a6UdjiFcJUhGLtvXVZR1r.A/iF5aAt50hf/EK4/
!
```

## VLANs

### VLANs Summary

| VLAN ID | Name | Trunk Groups |
| ------- | ---- | ------------ |
| 110 | PR01-DMZ | none  |
| 112 | PR02-DMZ-ORANGE | none  |
| 201 | B-ELAN-201 | none  |
| 3010 | MLAG_iBGP_TENANT_A_PROJECT01 | LEAF_PEER_L3  |
| 3011 | MLAG_iBGP_TENANT_A_PROJECT02 | LEAF_PEER_L3  |
| 4093 | LEAF_PEER_L3 | LEAF_PEER_L3  |
| 4094 | MLAG_PEER | MLAG  |

### VLANs Device Configuration

```eos
vlan 110
   name PR01-DMZ
!
vlan 112
   name PR02-DMZ-ORANGE
!
vlan 201
   name B-ELAN-201
!
vlan 3010
   name MLAG_iBGP_TENANT_A_PROJECT01
   trunk group LEAF_PEER_L3
!
vlan 3011
   name MLAG_iBGP_TENANT_A_PROJECT02
   trunk group LEAF_PEER_L3
!
vlan 4093
   name LEAF_PEER_L3
   trunk group LEAF_PEER_L3
!
vlan 4094
   name MLAG_PEER
   trunk group MLAG
!
```

## VRF Instances

### VRF Instances Summary

| VRF Name | IP Routing |
| -------- | ---------- |
| MGMT |  disabled |
| TENANT_A_PROJECT01 |  enabled |
| TENANT_A_PROJECT02 |  enabled |

### VRF Instances Device Configuration

```eos
vrf instance MGMT
!
vrf instance TENANT_A_PROJECT01
!
vrf instance TENANT_A_PROJECT02
!
```

## BFD Multihop Interval

### BFD Multihop Summary

| Interval | Minimum RX | Multiplier |
| -------- | ---------- | ---------- |
| 1200 | 1200 | 3 |

### BFD Multihop Device Configuration

```eos
bfd multihop interval 1200 min_rx 1200 multiplier 3
!
```

## Port-Channel Interfaces

### Port-Channel Interfaces Summary

| Interface | Description | MTU | Type | Mode | Allowed VLANs (trunk) | Trunk Group | MLAG ID | VRF | IP Address |
| --------- | ----------- | --- | ---- | ---- | --------------------- | ----------- | ------- | --- | ---------- |
| Port-Channel3 | MLAG_PEER_DC1-LEAF1B_Po3 | 1500 | switched | trunk | 2-4094 | LEAF_PEER_L3<br> MLAG | - | - | - |
| Port-Channel5 | DC1_L2LEAF1_Po1 | 1500 | switched | trunk | 110,201 | - | 5 | - | - |

### Port-Channel Interfaces Device Configuration

```eos
interface Port-Channel3
   description MLAG_PEER_DC1-LEAF1B_Po3
   switchport trunk allowed vlan 2-4094
   switchport mode trunk
   switchport trunk group LEAF_PEER_L3
   switchport trunk group MLAG
!
interface Port-Channel5
   description DC1_L2LEAF1_Po1
   switchport trunk allowed vlan 110,201
   switchport mode trunk
   mlag 5
!
```

## Ethernet Interfaces

### Ethernet Interfaces Summary

| Interface | Description | MTU | Type | Mode | Allowed VLANs (Trunk) | Trunk Group | VRF | IP Address | Channel-Group ID | Channel-Group Type |
| --------- | ----------- | --- | ---- | ---- | --------------------- | ----------- | --- | ---------- | ---------------- | ------------------ |
| Ethernet1 | P2P_LINK_TO_DC1-SPINE1_Ethernet1 | 1500 | routed | access | - | - | - | 172.31.255.1/31 | - | - |
| Ethernet2 | P2P_LINK_TO_DC1-SPINE2_Ethernet1 | 1500 | routed | access | - | - | - | 172.31.255.3/31 | - | - |
| Ethernet3 | MLAG_PEER_DC1-LEAF1B_Ethernet3 | *1500 | *switched | *trunk | *2-4094 | *LEAF_PEER_L3<br> *MLAG | - | - | 3 | active |
| Ethernet4 | MLAG_PEER_DC1-LEAF1B_Ethernet4 | *1500 | *switched | *trunk | *2-4094 | *LEAF_PEER_L3<br> *MLAG | - | - | 3 | active |
| Ethernet5 | DC1-AGG01_Ethernet1 | *1500 | *switched | *trunk | *110,201 | - | - | - | 5 | active |

*Inherited from Port-Channel Interface

### Ethernet Interfaces Device Configuration

```eos
interface Ethernet1
   description P2P_LINK_TO_DC1-SPINE1_Ethernet1
   no switchport
   ip address 172.31.255.1/31
!
interface Ethernet2
   description P2P_LINK_TO_DC1-SPINE2_Ethernet1
   no switchport
   ip address 172.31.255.3/31
!
interface Ethernet3
   description MLAG_PEER_DC1-LEAF1B_Ethernet3
   channel-group 3 mode active
!
interface Ethernet4
   description MLAG_PEER_DC1-LEAF1B_Ethernet4
   channel-group 3 mode active
!
interface Ethernet5
   description DC1-AGG01_Ethernet1
   channel-group 5 mode active
!
```

## Loopback Interfaces

### Loopback Interfaces Summary

| Interface | Description | VRF | IP Address |
| --------- | ----------- | --- | ---------- |
| Loopback0 | EVPN_Overlay_Peering | Global Routing Table | 192.168.255.3/32 |
| Loopback1 | VTEP_VXLAN_Tunnel_Source | Global Routing Table | 192.168.254.3/32 |
| Loopback100 | TENANT_A_PROJECT02_VTEP_DIAGNOSTICS | TENANT_A_PROJECT02 | 10.1.255.3/32 |

### Loopback Interfaces Device Configuration

```eos
interface Loopback0
   description EVPN_Overlay_Peering
   ip address 192.168.255.3/32
!
interface Loopback1
   description VTEP_VXLAN_Tunnel_Source
   ip address 192.168.254.3/32
!
interface Loopback100
   description TENANT_A_PROJECT02_VTEP_DIAGNOSTICS
   vrf TENANT_A_PROJECT02
   ip address 10.1.255.3/32
!
```

## VLAN Interfaces

### VLAN Interfaces Summary

| Interface | Description | VRF | IP Address | IP Address Virtual | IP Router Virtual Address (vARP) |
| --------- | ----------- | --- | ---------- | ------------------ | -------------------------------- |
| Vlan110 | PR01-DMZ | TENANT_A_PROJECT01 | - | 10.1.10.254/24 | - |
| Vlan112 | PR02-DMZ-ORANGE | TENANT_A_PROJECT02 | - | 10.1.12.254/24 | - |
| Vlan3010 | MLAG_PEER_L3_iBGP: vrf TENANT_A_PROJECT01 | TENANT_A_PROJECT01 | 10.255.251.0/31 | - | - |
| Vlan3011 | MLAG_PEER_L3_iBGP: vrf TENANT_A_PROJECT02 | TENANT_A_PROJECT02 | 10.255.251.0/31 | - | - |
| Vlan4093 | MLAG_PEER_L3_PEERING | Global Routing Table | 10.255.251.0/31 | - | - |
| Vlan4094 | MLAG_PEER | Global Routing Table | 10.255.252.0/31 | - | - |

### VLAN Interfaces Device Configuration

```eos
interface Vlan110
   description PR01-DMZ
   vrf TENANT_A_PROJECT01
   ip address virtual 10.1.10.254/24
!
interface Vlan112
   description PR02-DMZ-ORANGE
   vrf TENANT_A_PROJECT02
   ip address virtual 10.1.12.254/24
!
interface Vlan3010
   description MLAG_PEER_L3_iBGP: vrf TENANT_A_PROJECT01
   vrf TENANT_A_PROJECT01
   ip address 10.255.251.0/31
!
interface Vlan3011
   description MLAG_PEER_L3_iBGP: vrf TENANT_A_PROJECT02
   vrf TENANT_A_PROJECT02
   ip address 10.255.251.0/31
!
interface Vlan4093
   description MLAG_PEER_L3_PEERING
   ip address 10.255.251.0/31
!
interface Vlan4094
   description MLAG_PEER
   no autostate
   ip address 10.255.252.0/31
!
```

## VXLAN Interface

### VXLAN Interface Summary

**Source Interface:** Loopback1
**UDP port:** 4789

**VLAN to VNI Mappings:**

| VLAN | VNI |
| ---- | --- |
| 110 | 10110 |
| 112 | 10112 |
| 201 | 20201 |

**VRF to VNI Mappings:**

| VLAN | VNI |
| ---- | --- |
| TENANT_A_PROJECT01 | 11 |
| TENANT_A_PROJECT02 | 12 |

### VXLAN Interface Device Configuration

```eos
interface Vxlan1
   vxlan source-interface Loopback1
   vxlan virtual-router encapsulation mac-address mlag-system-id
   vxlan udp-port 4789
   vxlan vlan 110 vni 10110
   vxlan vlan 112 vni 10112
   vxlan vlan 201 vni 20201
   vxlan vrf TENANT_A_PROJECT01 vni 11
   vxlan vrf TENANT_A_PROJECT02 vni 12
!
```

## Virtual Router MAC Address & Virtual Source NAT

### Virtual Router MAC Address and Virtual Source NAT Summary

**Virtual Router MAC Address:** 00:1c:73:00:dc:01
### Virtual Source NAT Summary

| Source NAT VRF | Source NAT IP Address |
| -------------- | --------------------- |
| TENANT_A_PROJECT02 | 10.1.255.3 |

### Virtual Router MAC Address Device and Virtual Source NAT Configuration

```eos
ip virtual-router mac-address 00:1c:73:00:dc:01
ip address virtual source-nat vrf TENANT_A_PROJECT02 address 10.1.255.3
!
```

## Static Routes

### Static Routes Summary

| VRF | Destination Prefix | Fowarding Address / Interface |
| --- | ------------------ | ----------------------------- |
| MGMT | 0.0.0.0/0 | 10.73.254.253 |

### Static Routes Device Configuration

```eos
ip route vrf MGMT 0.0.0.0/0 10.73.254.253
!
```

## Event Handler

No Event Handler Defined

## IP Routing

### IP Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| MGMT | False |
| TENANT_A_PROJECT01 | True |
| TENANT_A_PROJECT02 | True |

### IP Routing Device Configuration

```eos
ip routing
no ip routing vrf MGMT
ip routing vrf TENANT_A_PROJECT01
ip routing vrf TENANT_A_PROJECT02
!
```

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
| 20 | permit 10.255.251.0/24 le 31 |

### Prefix Lists Device Configuration

```eos
ip prefix-list PL-LOOPBACKS-EVPN-OVERLAY
   seq 10 permit 192.168.255.0/24 eq 32
   seq 20 permit 192.168.254.0/24 eq 32
!
ip prefix-list PL-P2P-UNDERLAY
   seq 10 permit 172.31.255.0/24 le 31
   seq 20 permit 10.255.251.0/24 le 31
!
```

## MLAG

### MLAG Summary

| domain-id | local-interface | peer-address | peer-link |
| --------- | --------------- | ------------ | --------- |
| DC1_LEAF1 | Vlan4094 | 10.255.252.1 | Port-Channel3 |

### MLAG Device Configuration

```eos
mlag configuration
   domain-id DC1_LEAF1
   local-interface Vlan4094
   peer-address 10.255.252.1
   peer-address heartbeat 10.73.254.12 vrf MGMT
   peer-link Port-Channel3
   dual-primary detection delay 5 action errdisable all-interfaces
   reload-delay mlag 360
   reload-delay non-mlag 300
!
```

## Route Maps

### Route Maps Summary

**RM-CONN-2-BGP:**

| Sequence | Type | Match |
| -------- | ---- | ----- |
| 10 | permit | ip address prefix-list PL-LOOPBACKS-EVPN-OVERLAY |

### Route Maps Device Configuration

```eos
route-map RM-CONN-2-BGP permit 10
   match ip address prefix-list PL-LOOPBACKS-EVPN-OVERLAY
!
```

## Peer Filters

No Peer Filters defined

## Router BGP

### Router BGP Summary

| BGP AS | Router ID |
| ------ | --------- |
| 65101|  192.168.255.3 |

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
| bfd | True |
| ebgp multihop | 3 |
| send community | true |
| maximum routes | 0 (no limit) |
**Neighbors:**

| Neighbor | Remote AS |
| -------- | ---------
| 192.168.255.1 | *65001  |
| 192.168.255.2 | *65001  |

*Inherited from peer group

**IPv4-UNDERLAY-PEERS**:

| Settings | Value |
| -------- | ----- |
| Address Family | ipv4 |
| remote_as | 65001 |
| send community | true |
| maximum routes | 12000 |
**Neighbors:**

| Neighbor | Remote AS |
| -------- | ---------
| 172.31.255.0 | *65001  |
| 172.31.255.2 | *65001  |

*Inherited from peer group

**MLAG-IPv4-UNDERLAY-PEER**:

| Settings | Value |
| -------- | ----- |
| Address Family | ipv4 |
| remote_as | 65101 |
| next-hop self | True |
| send community | true |
| maximum routes | 12000 |
**Neighbors:**

| Neighbor | Remote AS |
| -------- | ---------
| 10.255.251.1 | *65101  |

*Inherited from peer group

### Router BGP EVPN Address Family

#### Router BGP EVPN MAC-VRFs

**VLAN aware bundles:**

| VLAN Aware Bundle | Route-Distinguisher | Route Target | Redistribute | VLANs |
| ----------------- | ------------------- | ------------ | ------------ | ----- |
| B-ELAN-201 | 192.168.255.3:20201 | both 20201:20201 | learned | 201 |
| TENANT_A_PROJECT01 | 192.168.255.3:11 | both 11:11 | learned | 110 |
| TENANT_A_PROJECT02 | 192.168.255.3:12 | both 12:12 | learned | 112 |

#### Router BGP EVPN VRFs

| VRF | Route-Distinguisher | Route Target | Redistribute |
| --- | ------------------- | ------------ | ------------ |
| TENANT_A_PROJECT01 | 192.168.255.3:11 | import 11:11<br> export 11:11 | connected |
| TENANT_A_PROJECT02 | 192.168.255.3:12 | import 12:12<br> export 12:12 | connected |

### Router BGP Device Configuration

```eos
router bgp 65101
   router-id 192.168.255.3
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
   neighbor MLAG-IPv4-UNDERLAY-PEER peer group
   neighbor MLAG-IPv4-UNDERLAY-PEER remote-as 65101
   neighbor MLAG-IPv4-UNDERLAY-PEER next-hop-self
   neighbor MLAG-IPv4-UNDERLAY-PEER password 7 vnEaG8gMeQf3d3cN6PktXQ==
   neighbor MLAG-IPv4-UNDERLAY-PEER send-community
   neighbor MLAG-IPv4-UNDERLAY-PEER maximum-routes 12000
   neighbor 10.255.251.1 peer group MLAG-IPv4-UNDERLAY-PEER
   neighbor 172.31.255.0 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.2 peer group IPv4-UNDERLAY-PEERS
   neighbor 192.168.255.1 peer group EVPN-OVERLAY-PEERS
   neighbor 192.168.255.2 peer group EVPN-OVERLAY-PEERS
   redistribute connected route-map RM-CONN-2-BGP
   !
   vlan-aware-bundle B-ELAN-201
      rd 192.168.255.3:20201
      route-target both 20201:20201
      redistribute learned
      vlan 201
   !
   vlan-aware-bundle TENANT_A_PROJECT01
      rd 192.168.255.3:11
      route-target both 11:11
      redistribute learned
      vlan 110
   !
   vlan-aware-bundle TENANT_A_PROJECT02
      rd 192.168.255.3:12
      route-target both 12:12
      redistribute learned
      vlan 112
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
   vrf TENANT_A_PROJECT01
      router-id 192.168.255.3
      rd 192.168.255.3:11
      route-target import evpn 11:11
      route-target export evpn 11:11
      neighbor 10.255.251.1 peer group MLAG-IPv4-UNDERLAY-PEER
      redistribute connected
   !
   vrf TENANT_A_PROJECT02
      router-id 192.168.255.3
      rd 192.168.255.3:12
      route-target import evpn 12:12
      route-target export evpn 12:12
      neighbor 10.255.251.1 peer group MLAG-IPv4-UNDERLAY-PEER
      redistribute connected
!
```
