# SITE01-SPINE2

## Management Interfaces

### Management Interfaces Summary

| Management Interface | description | VRF | IP Address | Gateway |
| -------------------- | ----------- | --- | ---------- | ------- |
| Management1 | oob_management | MGMT | 10.255.1.102/24 | 10.255.1.1 |

### Management Interfaces Device Configuration

```eos
interface Management1
   description oob_management
   vrf MGMT
   ip address 10.255.1.102/24
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
| 10.255.1.1 | MGMT |

### Name Servers Device Configuration

```eos
ip name-server vrf MGMT 10.255.1.1
!
```

## NTP

### NTP Summary

Local Interface: Management1
VRF: MGMT

| Node | Primary |
| ---- | ------- |
| 10.255.1.1 | True |

### NTP Device Configuration

```eos
ntp local-interface vrf MGMT Management1
ntp server vrf MGMT 10.255.1.1 prefer
!
```

## Spanning Tree

### Spanning Tree Summary

Mode: none


### Spanning Tree Device Configuration

```eos
spanning-tree mode none
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
| christophe | 15 | network-admin |
| cvpadmin | 15 | network-admin |
| demo | 15 | network-admin |
| khelil | 15 | network-admin |
| tom | 15 | network-admin |

### Local Users Device Configuration

```eos
username admin privilege 15 role network-admin secret sha512 $6$Df86J4/SFMDE3/1K$Hef4KstdoxNDaami37cBquTWOTplC.miMPjXVgQxMe92.e5wxlnXOLlebgPj8Fz1KO0za/RCO7ZIs4Q6Eiq1g1
username ansible privilege 15 role network-admin secret sha512 $6$Dzu11L7yp9j3nCM9$FSptxMPyIL555OMO.ldnjDXgwZmrfMYwHSr0uznE5Qoqvd9a6UdjiFcJUhGLtvXVZR1r.A/iF5aAt50hf/EK4/
username christophe privilege 15 role network-admin secret sha512 $6$Dzu11L7yp9j3nCM9$FSptxMPyIL555OMO.ldnjDXgwZmrfMYwHSr0uznE5Qoqvd9a6UdjiFcJUhGLtvXVZR1r.A/iF5aAt50hf/EK4/
username cvpadmin privilege 15 role network-admin secret sha512 $6$rZKcbIZ7iWGAWTUM$TCgDn1KcavS0s.OV8lacMTUkxTByfzcGlFlYUWroxYuU7M/9bIodhRO7nXGzMweUxvbk8mJmQl8Bh44cRktUj.
username demo privilege 15 role network-admin secret sha512 $6$Dzu11L7yp9j3nCM9$FSptxMPyIL555OMO.ldnjDXgwZmrfMYwHSr0uznE5Qoqvd9a6UdjiFcJUhGLtvXVZR1r.A/iF5aAt50hf/EK4/
username khelil privilege 15 role network-admin secret sha512 $6$Dzu11L7yp9j3nCM9$FSptxMPyIL555OMO.ldnjDXgwZmrfMYwHSr0uznE5Qoqvd9a6UdjiFcJUhGLtvXVZR1r.A/iF5aAt50hf/EK4/
username tom privilege 15 role network-admin secret sha512 $6$Dzu11L7yp9j3nCM9$FSptxMPyIL555OMO.ldnjDXgwZmrfMYwHSr0uznE5Qoqvd9a6UdjiFcJUhGLtvXVZR1r.A/iF5aAt50hf/EK4/
!
```

## VLANs

No VLANs defined

## VRF Instances

### VRF Instances Summary

| VRF Name | IP Routing |
| -------- | ---------- |
| MGMT |  disabled |

### VRF Instances Device Configuration

```eos
vrf instance MGMT
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

No Port-Channels defined

## Ethernet Interfaces

### Ethernet Interfaces Summary

| Interface | Description | MTU | Type | Mode | Allowed VLANs (Trunk) | Trunk Group | VRF | IP Address | Channel-Group ID | Channel-Group Type |
| --------- | ----------- | --- | ---- | ---- | --------------------- | ----------- | --- | ---------- | ---------------- | ------------------ |
| Ethernet1 | P2P_LINK_TO_SITE01-LEAF1A_Ethernet2 | 1500 | routed | access | - | - | - | 172.31.255.2/31 | - | - |
| Ethernet2 | P2P_LINK_TO_SITE01-LEAF1B_Ethernet2 | 1500 | routed | access | - | - | - | 172.31.255.6/31 | - | - |
| Ethernet3 | P2P_LINK_TO_SITE01-LEAF2A_Ethernet2 | 1500 | routed | access | - | - | - | 172.31.255.10/31 | - | - |
| Ethernet4 | P2P_LINK_TO_SITE01-LEAF2B_Ethernet2 | 1500 | routed | access | - | - | - | 172.31.255.14/31 | - | - |
| Ethernet5 | P2P_LINK_TO_SITE01-BL01A_Ethernet2 | 1500 | routed | access | - | - | - | 172.31.255.26/31 | - | - |
| Ethernet6 | P2P_LINK_TO_SITE01-BL01B_Ethernet2 | 1500 | routed | access | - | - | - | 172.31.255.30/31 | - | - |

*Inherited from Port-Channel Interface

### Ethernet Interfaces Device Configuration

```eos
interface Ethernet1
   description P2P_LINK_TO_SITE01-LEAF1A_Ethernet2
   no switchport
   ip address 172.31.255.2/31
!
interface Ethernet2
   description P2P_LINK_TO_SITE01-LEAF1B_Ethernet2
   no switchport
   ip address 172.31.255.6/31
!
interface Ethernet3
   description P2P_LINK_TO_SITE01-LEAF2A_Ethernet2
   no switchport
   ip address 172.31.255.10/31
!
interface Ethernet4
   description P2P_LINK_TO_SITE01-LEAF2B_Ethernet2
   no switchport
   ip address 172.31.255.14/31
!
interface Ethernet5
   description P2P_LINK_TO_SITE01-BL01A_Ethernet2
   no switchport
   ip address 172.31.255.26/31
!
interface Ethernet6
   description P2P_LINK_TO_SITE01-BL01B_Ethernet2
   no switchport
   ip address 172.31.255.30/31
!
```

## Loopback Interfaces

### Loopback Interfaces Summary

| Interface | Description | VRF | IP Address |
| --------- | ----------- | --- | ---------- |
| Loopback0 | EVPN_Overlay_Peering | Global Routing Table | 192.168.255.2/32 |

### Loopback Interfaces Device Configuration

```eos
interface Loopback0
   description EVPN_Overlay_Peering
   ip address 192.168.255.2/32
!
```

## VLAN Interfaces

No VLAN interfaces defined

## VXLAN Interface

No VXLAN interface defined

## Virtual Router MAC Address & Virtual Source NAT


## Static Routes

### Static Routes Summary

| VRF | Destination Prefix | Fowarding Address / Interface |
| --- | ------------------ | ----------------------------- |
| MGMT | 0.0.0.0/0 | 10.255.1.1 |

### Static Routes Device Configuration

```eos
ip route vrf MGMT 0.0.0.0/0 10.255.1.1
!
```

## Event Handler

No Event Handler Defined

## IP Routing

### IP Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| MGMT | False |

### IP Routing Device Configuration

```eos
ip routing
no ip routing vrf MGMT
!
```

## Prefix Lists

### Prefix Lists Summary

**PL-LOOPBACKS-EVPN-OVERLAY:**

| Sequence | Action |
| -------- | ------ |
| 10 | permit 192.168.255.0/24 le 32 |

### Prefix Lists Device Configuration

```eos
ip prefix-list PL-LOOPBACKS-EVPN-OVERLAY
   seq 10 permit 192.168.255.0/24 le 32
!
```

## MLAG

MLAG not defined

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

### Peer Filters Summary

**LEAF-AS-RANGE:**

| Sequence | Match |
| -------- | ----- |
| 10 | as-range 65101-65132 result accept |

### Peer Filters Device Configuration

```eos
peer-filter LEAF-AS-RANGE
   10 match as-range 65101-65132 result accept
!
```

## Router BGP

### Router BGP Summary

| BGP AS | Router ID |
| ------ | --------- |
| 65001|  192.168.255.2 |

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
| next-hop unchanged | True |
| source | Loopback0 |
| bfd | True |
| ebgp multihop | 3 |
| send community | true |
| maximum routes | 0 (no limit) |
**Neighbors:**

| Neighbor | Remote AS |
| -------- | ---------
| 192.168.255.3 | 65101  |
| 192.168.255.4 | 65101  |
| 192.168.255.5 | 65102  |
| 192.168.255.6 | 65102  |
| 192.168.255.9 | 65105  |
| 192.168.255.10 | 65105  |

*Inherited from peer group

**IPv4-UNDERLAY-PEERS**:

| Settings | Value |
| -------- | ----- |
| Address Family | ipv4 |
| maximum routes | 12000 |
**Neighbors:**

| Neighbor | Remote AS |
| -------- | ---------
| 172.31.255.3 | 65101  |
| 172.31.255.7 | 65101  |
| 172.31.255.11 | 65102  |
| 172.31.255.15 | 65102  |
| 172.31.255.27 | 65105  |
| 172.31.255.31 | 65105  |

*Inherited from peer group

### Router BGP EVPN Address Family

#### Router BGP EVPN MAC-VRFs


#### Router BGP EVPN VRFs


### Router BGP Device Configuration

```eos
router bgp 65001
   router-id 192.168.255.2
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
   neighbor 172.31.255.3 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.3 remote-as 65101
   neighbor 172.31.255.7 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.7 remote-as 65101
   neighbor 172.31.255.11 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.11 remote-as 65102
   neighbor 172.31.255.15 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.15 remote-as 65102
   neighbor 172.31.255.27 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.27 remote-as 65105
   neighbor 172.31.255.31 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.255.31 remote-as 65105
   neighbor 192.168.255.3 peer group EVPN-OVERLAY-PEERS
   neighbor 192.168.255.3 remote-as 65101
   neighbor 192.168.255.4 peer group EVPN-OVERLAY-PEERS
   neighbor 192.168.255.4 remote-as 65101
   neighbor 192.168.255.5 peer group EVPN-OVERLAY-PEERS
   neighbor 192.168.255.5 remote-as 65102
   neighbor 192.168.255.6 peer group EVPN-OVERLAY-PEERS
   neighbor 192.168.255.6 remote-as 65102
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
!
```
