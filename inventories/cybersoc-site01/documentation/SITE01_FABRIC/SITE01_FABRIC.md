# SITE01_FABRIC

## Table of Contents

- [SITE01_FABRIC](#site01fabric )
  - [Fabric Switches and Management IP](#fabric-switches-and-management-ip)
  - [Fabric Topology](#fabric-topology)
  - [Fabric IP Allocation](#fabric-ip-allocation)
    - [Fabric Point-To-Point Links](#fabric-point-to-point-links)
    - [Point-To-Point Links Node Allocation](#point-to-point-links-node-allocation)
    - [Overlay Loopback Interfaces (BGP EVPN Peering)](#overlay-loopback-interfaces-bgp-evpn-peering)
    - [Loopback0 Interfaces Node Allocation](#loopback0-interfaces-node-allocation)
    - [VTEP Loopback VXLAN Tunnel Source Interfaces (Leafs Only)](#vtep-loopback-vxlan-tunnel-source-interfaces-leafs-only)
    - [VTEP Loopback Node allocation](#vtep-loopback-node-allocation)

## Fabric Switches and Management IP

| Node | Management IP | Platform |
| ---- | ------------- | -------- |
| SITE01-SPINE1 | 10.255.1.101/24 | vEOS-LAB |
| SITE01-SPINE2 | 10.255.1.102/24 | vEOS-LAB |
| SITE01-BL01A | 10.255.1.107/24 | vEOS-LAB |
| SITE01-BL01B | 10.255.1.108/24 | vEOS-LAB |
| SITE01-LEAF1A | 10.255.1.103/24 | vEOS-LAB |
| SITE01-LEAF1B | 10.255.1.104/24 | vEOS-LAB |
| SITE01-LEAF2A | 10.255.1.105/24 | vEOS-LAB |
| SITE01-LEAF2B | 10.255.1.106/24 | vEOS-LAB |

## Fabric Topology

| Type | Leaf Node | Leaf Interface | Peer Node | Peer Interface |
| ---- | --------- | -------------- | --------- | -------------- |
| L3 Leaf | SITE01-BL01A | Ethernet1 | SITE01-SPINE1 | Ethernet5 |
| L3 Leaf | SITE01-BL01A | Ethernet2 | SITE01-SPINE2 | Ethernet5 |
| L3 Leaf | SITE01-BL01B | Ethernet1 | SITE01-SPINE1 | Ethernet6 |
| L3 Leaf | SITE01-BL01B | Ethernet2 | SITE01-SPINE2 | Ethernet6 |
| L3 Leaf | SITE01-LEAF1A | Ethernet1 | SITE01-SPINE1 | Ethernet1 |
| L3 Leaf | SITE01-LEAF1A | Ethernet2 | SITE01-SPINE2 | Ethernet1 |
| L3 Leaf | SITE01-LEAF1B | Ethernet1 | SITE01-SPINE1 | Ethernet2 |
| L3 Leaf | SITE01-LEAF1B | Ethernet2 | SITE01-SPINE2 | Ethernet2 |
| L3 Leaf | SITE01-LEAF2A | Ethernet1 | SITE01-SPINE1 | Ethernet3 |
| L3 Leaf | SITE01-LEAF2A | Ethernet2 | SITE01-SPINE2 | Ethernet3 |
| L3 Leaf | SITE01-LEAF2B | Ethernet1 | SITE01-SPINE1 | Ethernet4 |
| L3 Leaf | SITE01-LEAF2B | Ethernet2 | SITE01-SPINE2 | Ethernet4 |

## Fabric IP Allocation

### Fabric Point-To-Point Links

| P2P Summary | Available Addresses | Assigned addresses | Assigned Address % |
| ----------- | ------------------- | ------------------ | ------------------ |
| 172.31.255.0/24 | 256 | 24 | 9.38 % |

### Point-To-Point Links Node Allocation

| Leaf Node | Leaf Interface | Leaf IP Address | Spine Node | Spine Interface | Spine IP Address |
| --------- | -------------- | --------------- | ---------- | --------------- | ---------------- |
| SITE01-BL01A | Ethernet1 | 172.31.255.25/31 | SITE01-SPINE1 | Ethernet5 | 172.31.255.24/31 |
| SITE01-BL01A | Ethernet2 | 172.31.255.27/31 | SITE01-SPINE2 | Ethernet5 | 172.31.255.26/31 |
| SITE01-BL01B | Ethernet1 | 172.31.255.29/31 | SITE01-SPINE1 | Ethernet6 | 172.31.255.28/31 |
| SITE01-BL01B | Ethernet2 | 172.31.255.31/31 | SITE01-SPINE2 | Ethernet6 | 172.31.255.30/31 |
| SITE01-LEAF1A | Ethernet1 | 172.31.255.1/31 | SITE01-SPINE1 | Ethernet1 | 172.31.255.0/31 |
| SITE01-LEAF1A | Ethernet2 | 172.31.255.3/31 | SITE01-SPINE2 | Ethernet1 | 172.31.255.2/31 |
| SITE01-LEAF1B | Ethernet1 | 172.31.255.5/31 | SITE01-SPINE1 | Ethernet2 | 172.31.255.4/31 |
| SITE01-LEAF1B | Ethernet2 | 172.31.255.7/31 | SITE01-SPINE2 | Ethernet2 | 172.31.255.6/31 |
| SITE01-LEAF2A | Ethernet1 | 172.31.255.9/31 | SITE01-SPINE1 | Ethernet3 | 172.31.255.8/31 |
| SITE01-LEAF2A | Ethernet2 | 172.31.255.11/31 | SITE01-SPINE2 | Ethernet3 | 172.31.255.10/31 |
| SITE01-LEAF2B | Ethernet1 | 172.31.255.13/31 | SITE01-SPINE1 | Ethernet4 | 172.31.255.12/31 |
| SITE01-LEAF2B | Ethernet2 | 172.31.255.15/31 | SITE01-SPINE2 | Ethernet4 | 172.31.255.14/31 |

### Overlay Loopback Interfaces (BGP EVPN Peering)

| Overlay Loopback Summary | Available Addresses | Assigned addresses | Assigned Address % |
| ------------------------ | ------------------- | ------------------ | ------------------ |
| 192.168.255.0/24 | 256 | 8 | 3.13 % |

### Loopback0 Interfaces Node Allocation

| Node | Loopback0 |
| ---- | --------- |
| SITE01-SPINE1 | 192.168.255.1/32 |
| SITE01-SPINE2 | 192.168.255.2/32 |
| SITE01-BL01A | 192.168.255.9/32 |
| SITE01-BL01B | 192.168.255.10/32 |
| SITE01-LEAF1A | 192.168.255.3/32 |
| SITE01-LEAF1B | 192.168.255.4/32 |
| SITE01-LEAF2A | 192.168.255.5/32 |
| SITE01-LEAF2B | 192.168.255.6/32 |

### VTEP Loopback VXLAN Tunnel Source Interfaces (Leafs Only)

| VTEP Loopback Summary | Available Addresses | Assigned addresses | Assigned Address % |
| --------------------- | ------------------- | ------------------ | ------------------ |
| 192.168.254.0/24 | 256 | 6 | 2.35 % |

### VTEP Loopback Node allocation

| Node | Loopback1 |
| ---- | --------- |
| SITE01-BL01A | 192.168.254.9/32 |
| SITE01-BL01B | 192.168.254.9/32 |
| SITE01-LEAF1A | 192.168.254.3/32 |
| SITE01-LEAF1B | 192.168.254.3/32 |
| SITE01-LEAF2A | 192.168.254.5/32 |
| SITE01-LEAF2B | 192.168.254.5/32 |
