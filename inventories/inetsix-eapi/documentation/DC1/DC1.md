# DC1

## Table of Contents

- [DC1](#dc1 )
  - [Spine and Super-Spine Switches and Management IP](#spine-and-super-spine-switches-and-management-ip)
  - [Super Spine Fabric Topology](#super-spine-fabric-topology)
  - [Super Spine Fabric IP Allocation](#super-spine-fabric-ip-allocation)
  - [Super Spine Fabric Point-To-Point Links](#super-spine-fabric-point-to-point-links)
  - [Point-To-Point Links Node Allocation](#point-to-point-links-node-allocation)
  - [Super Spine Overlay Loopback Interfaces (BGP EVPN Peering, if required)](#super-spine-overlay-loopback-interfaces-bgp-evpn-peering-if-required)
  - [Loopback0 Interfaces To Super Spine Node Allocation](#loopback0-interfaces-to-super-spine-node-allocation)

## Spine and Super-Spine Switches and Management IP

| Node | Management IP | Platform |
| ---- | ------------- | -------- |
| DC1-SUPER-SPINE1 | 192.168.0.1/24 | vEOS-LAB |
| DC1-SUPER-SPINE2 | 192.168.0.2/24 | vEOS-LAB |
| DC1-POD1-SPINE1 | 192.168.0.10/24 | vEOS-LAB |
| DC1-POD1-SPINE2 | 192.168.0.11/24 | vEOS-LAB |
| DC1-POD2-SPINE1 | 192.169.0.10/24 | vEOS-LAB |
| DC1-POD2-SPINE2 | 192.169.0.11/24 | vEOS-LAB |

## Super Spine Fabric Topology

| Type | Node | Interface | Peer Node | Peer Interface |
| ---- | --------- | -------------- | --------- | -------------- |
| super-spine | DC1-SUPER-SPINE1 | Ethernet1 | DC1-POD1-SPINE1 | Ethernet1 |
| super-spine | DC1-SUPER-SPINE1 | Ethernet2 | DC1-POD1-SPINE2 | Ethernet1 |
| super-spine | DC1-SUPER-SPINE1 | Ethernet3 | DC1-POD2-SPINE1 | Ethernet1 |
| super-spine | DC1-SUPER-SPINE1 | Ethernet4 | DC1-POD2-SPINE2 | Ethernet1 |
| super-spine | DC1-SUPER-SPINE2 | Ethernet1 | DC1-POD1-SPINE1 | Ethernet6 |
| super-spine | DC1-SUPER-SPINE2 | Ethernet2 | DC1-POD1-SPINE2 | Ethernet6 |
| super-spine | DC1-SUPER-SPINE2 | Ethernet3 | DC1-POD2-SPINE1 | Ethernet6 |
| super-spine | DC1-SUPER-SPINE2 | Ethernet4 | DC1-POD2-SPINE2 | Ethernet6 |

## Super Spine Fabric IP Allocation

### Super Spine Fabric Point-To-Point Links

| POD Number | P2P Summary | Available Addresses | Assigned addresses | Assigned Address % |
| ----------- | ----------- | ------------------- | ------------------ | ------------------ |
| 1 | 172.31.1.0/24 | 256 | 8 | 3.13 % |
| 2 | 172.31.2.0/24 | 256 | 8 | 3.13 % |

### Point-To-Point Links Node Allocation

| Super-Spine Node | Super-Spine Interface | Super-Spine IP Address | Spine Node | Spine Interface | Spine IP Address |
| --------- | -------------- | --------------- | ---------- | --------------- | ---------------- |
| DC1-SUPER-SPINE1 | Ethernet1 | 172.31.1.0/31| DC1-POD1-SPINE1| Ethernet1 | 172.31.1.1/31 |
| DC1-SUPER-SPINE1 | Ethernet2 | 172.31.1.2/31| DC1-POD1-SPINE2| Ethernet1 | 172.31.1.3/31 |
| DC1-SUPER-SPINE1 | Ethernet3 | 172.31.2.0/31| DC1-POD2-SPINE1| Ethernet1 | 172.31.2.1/31 |
| DC1-SUPER-SPINE1 | Ethernet4 | 172.31.2.2/31| DC1-POD2-SPINE2| Ethernet1 | 172.31.2.3/31 |
| DC1-SUPER-SPINE2 | Ethernet1 | 172.31.1.64/31| DC1-POD1-SPINE1| Ethernet6 | 172.31.1.65/31 |
| DC1-SUPER-SPINE2 | Ethernet2 | 172.31.1.66/31| DC1-POD1-SPINE2| Ethernet6 | 172.31.1.67/31 |
| DC1-SUPER-SPINE2 | Ethernet3 | 172.31.2.64/31| DC1-POD2-SPINE1| Ethernet6 | 172.31.2.65/31 |
| DC1-SUPER-SPINE2 | Ethernet4 | 172.31.2.66/31| DC1-POD2-SPINE2| Ethernet6 | 172.31.2.67/31 |

### Super Spine Overlay Loopback Interfaces (BGP EVPN Peering, if required)

| Overlay Loopback Summary | Available Addresses | Assigned addresses | Assigned Address % |
| ------------------------ | ------------------- | ------------------ | ------------------ |
| 192.168.100.0/24 | 256 | 2 | 0.79 % |

### Loopback0 Interfaces to Super Spine Node Allocation

| Node | Loopback0 |
| ---- | --------- |
| DC1-SUPER-SPINE1 | 192.168.100.1/32 |
| DC1-SUPER-SPINE2 | 192.168.100.2/32 |
| DC1-POD1-SPINE1 | 192.168.255.1/32 |
| DC1-POD1-SPINE2 | 192.168.255.2/32 |
| DC1-POD2-SPINE1 | 192.169.255.1/32 |
| DC1-POD2-SPINE2 | 192.169.255.2/32 |
