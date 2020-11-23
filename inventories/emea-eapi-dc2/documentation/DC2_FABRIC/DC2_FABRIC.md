# DC2_FABRIC

## Table of Contents

- [DC2_FABRIC](#dc2fabric )
  - [Fabric Switches and Management IP](#fabric-switches-and-management-ip)
  - [Fabric Topology](#fabric-topology)
  - [Fabric IP Allocation](#fabric-ip-allocation)
    - [Fabric Point-To-Point Links](#fabric-point-to-point-links)
    - [Point-To-Point Links Node Allocation](#point-to-point-links-node-allocation)
    - [Overlay Loopback Interfaces (BGP EVPN Peering)](#overlay-loopback-interfaces-bgp-evpn-peering)
    - [Loopback0 Interfaces Node Allocation](#loopback0-interfaces-node-allocation)
    - [CLNS Interfaces](#isis-clns-interfaces)
    - [VTEP Loopback VXLAN Tunnel Source Interfaces (Leafs Only)](#vtep-loopback-vxlan-tunnel-source-interfaces-leafs-only)
    - [VTEP Loopback Node allocation](#vtep-loopback-node-allocation)

## Fabric Switches and Management IP

| Node | Management IP | Platform |
| ---- | ------------- | -------- |
| DC2-SPINE1 | 10.73.2.11/16 | vEOS-LAB |
| DC2-BL01A | 10.73.2.14/16 | vEOS-LAB |
| DC2-BL01B | 10.73.2.15/16 | vEOS-LAB |
| DC2-LEAF01A | 10.73.2.13/16 | vEOS-LAB |

## Fabric Topology

| Type | Leaf Node | Leaf Interface | Peer Node | Peer Interface |
| ---- | --------- | -------------- | --------- | -------------- |
| L3 Leaf | DC2-BL01A | Ethernet1 | DC2-SPINE1 | Ethernet2 |
| L3 Leaf | DC2-BL01B | Ethernet1 | DC2-SPINE1 | Ethernet3 |
| L3 Leaf | DC2-LEAF01A | Ethernet1 | DC2-SPINE1 | Ethernet1 |

## Fabric IP Allocation

### Fabric Point-To-Point Links

| P2P Summary | Available Addresses | Assigned addresses | Assigned Address % |
| ----------- | ------------------- | ------------------ | ------------------ |
| 172.32.255.0/24 | 256 | 6 | 2.35 % |

### Point-To-Point Links Node Allocation

| Leaf Node | Leaf Interface | Leaf IP Address | Spine Node | Spine Interface | Spine IP Address |
| --------- | -------------- | --------------- | ---------- | --------------- | ---------------- |
| DC2-BL01A | Ethernet1 | 172.32.255.9/31 | DC2-SPINE1 | Ethernet2 | 172.32.255.8/31 |
| DC2-BL01B | Ethernet1 | 172.32.255.11/31 | DC2-SPINE1 | Ethernet3 | 172.32.255.10/31 |
| DC2-LEAF01A | Ethernet1 | 172.32.255.5/31 | DC2-SPINE1 | Ethernet1 | 172.32.255.4/31 |

### Overlay Loopback Interfaces (BGP EVPN Peering)

| Overlay Loopback Summary | Available Addresses | Assigned addresses | Assigned Address % |
| ------------------------ | ------------------- | ------------------ | ------------------ |
| 192.168.253.0/24 | 256 | 4 | 1.57 % |

### Loopback0 Interfaces Node Allocation

| Node | Loopback0 |
| ---- | --------- |
| DC2-SPINE1 | 192.168.253.1/32 |
| DC2-BL01A | 192.168.253.6/32 |
| DC2-BL01B | 192.168.253.7/32 |
| DC2-LEAF01A | 192.168.253.4/32 |

### ISIS CLNS interfaces

| Node | CLNS Address |
| ---- | ------------ |
| DC2-SPINE1 | 49.0001.0001.0000.0001.00 |
| DC2-BL01A | 49.0001.0001.0001.0005.00 |
| DC2-BL01B | 49.0001.0001.0001.0006.00 |
| DC2-LEAF01A | 49.0001.0001.0001.0003.00 |

### VTEP Loopback VXLAN Tunnel Source Interfaces (Leafs Only)

| VTEP Loopback Summary | Available Addresses | Assigned addresses | Assigned Address % |
| --------------------- | ------------------- | ------------------ | ------------------ |
| 192.168.252.0/24 | 256 | 3 | 1.18 % |

### VTEP Loopback Node allocation

| Node | Loopback1 |
| ---- | --------- |
| DC2-BL01A | 192.168.252.6/32 |
| DC2-BL01B | 192.168.252.6/32 |
| DC2-LEAF01A | 192.168.252.4/32 |
