# AVD2_FABRIC

## Table of Contents

- [AVD2_FABRIC](#avd2fabric )
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
| AVD2-SPINE1 | 10.73.254.1/24 | vEOS-LAB |
| AVD2-SPINE2 | 10.73.254.2/24 | vEOS-LAB |
| AVD2-BL01A | 10.73.254.15/24 | vEOS-LAB |
| AVD2-BL01B | 10.73.254.16/24 | vEOS-LAB |
| AVD2-LEAF1A | 10.73.254.11/24 | vEOS-LAB |
| AVD2-LEAF1B | 10.73.254.12/24 | vEOS-LAB |
| AVD2-LEAF2A | 10.73.254.13/24 | vEOS-LAB |
| AVD2-LEAF2B | 10.73.254.14/24 | vEOS-LAB |
| AVD2-LEAF3A | 10.73.254.17/24 | vEOS-LAB |
| AVD2-LEAF4A | 10.73.254.18/24 | vEOS-LAB |
| AVD2-AGG01 | 10.73.254.21/24 | vEOS-LAB |
| AVD2-AGG02 | 10.73.254.22/24 | vEOS-LAB |

## Fabric Topology

| Type | Leaf Node | Leaf Interface | Peer Node | Peer Interface |
| ---- | --------- | -------------- | --------- | -------------- |
| L3 Leaf | AVD2-BL01A | Ethernet1 | AVD2-SPINE1 | Ethernet5 |
| L3 Leaf | AVD2-BL01A | Ethernet2 | AVD2-SPINE2 | Ethernet5 |
| L3 Leaf | AVD2-BL01B | Ethernet1 | AVD2-SPINE1 | Ethernet6 |
| L3 Leaf | AVD2-BL01B | Ethernet2 | AVD2-SPINE2 | Ethernet6 |
| L3 Leaf | AVD2-LEAF1A | Ethernet1 | AVD2-SPINE1 | Ethernet1 |
| L3 Leaf | AVD2-LEAF1A | Ethernet2 | AVD2-SPINE2 | Ethernet1 |
| L3 Leaf | AVD2-LEAF1B | Ethernet1 | AVD2-SPINE1 | Ethernet2 |
| L3 Leaf | AVD2-LEAF1B | Ethernet2 | AVD2-SPINE2 | Ethernet2 |
| L3 Leaf | AVD2-LEAF2A | Ethernet1 | AVD2-SPINE1 | Ethernet3 |
| L3 Leaf | AVD2-LEAF2A | Ethernet2 | AVD2-SPINE2 | Ethernet3 |
| L3 Leaf | AVD2-LEAF2B | Ethernet1 | AVD2-SPINE1 | Ethernet4 |
| L3 Leaf | AVD2-LEAF2B | Ethernet2 | AVD2-SPINE2 | Ethernet4 |
| L3 Leaf | AVD2-LEAF3A | Ethernet1 | AVD2-SPINE1 | Ethernet7 |
| L3 Leaf | AVD2-LEAF3A | Ethernet2 | AVD2-SPINE2 | Ethernet7 |
| L3 Leaf | AVD2-LEAF4A | Ethernet1 | AVD2-SPINE1 | Ethernet8 |
| L3 Leaf | AVD2-LEAF4A | Ethernet2 | AVD2-SPINE2 | Ethernet8 |
| L2 Leaf | AVD2-AGG01 | Ethernet1 | AVD2-LEAF1A | Ethernet5 |
| L2 Leaf | AVD2-AGG01 | Ethernet2 | AVD2-LEAF1B | Ethernet5 |
| L2 Leaf | AVD2-AGG02 | Ethernet1 | AVD2-LEAF2A | Ethernet5 |
| L2 Leaf | AVD2-AGG02 | Ethernet2 | AVD2-LEAF2B | Ethernet5 |

## Fabric IP Allocation

### Fabric Point-To-Point Links

| P2P Summary | Available Addresses | Assigned addresses | Assigned Address % |
| ----------- | ------------------- | ------------------ | ------------------ |
| 172.31.255.0/24 | 256 | 32 | 12.5 % |

### Point-To-Point Links Node Allocation

| Leaf Node | Leaf Interface | Leaf IP Address | Spine Node | Spine Interface | Spine IP Address |
| --------- | -------------- | --------------- | ---------- | --------------- | ---------------- |
| AVD2-BL01A | Ethernet1 | 172.31.255.25/31 | AVD2-SPINE1 | Ethernet5 | 172.31.255.24/31 |
| AVD2-BL01A | Ethernet2 | 172.31.255.27/31 | AVD2-SPINE2 | Ethernet5 | 172.31.255.26/31 |
| AVD2-BL01B | Ethernet1 | 172.31.255.29/31 | AVD2-SPINE1 | Ethernet6 | 172.31.255.28/31 |
| AVD2-BL01B | Ethernet2 | 172.31.255.31/31 | AVD2-SPINE2 | Ethernet6 | 172.31.255.30/31 |
| AVD2-LEAF1A | Ethernet1 | 172.31.255.1/31 | AVD2-SPINE1 | Ethernet1 | 172.31.255.0/31 |
| AVD2-LEAF1A | Ethernet2 | 172.31.255.3/31 | AVD2-SPINE2 | Ethernet1 | 172.31.255.2/31 |
| AVD2-LEAF1B | Ethernet1 | 172.31.255.5/31 | AVD2-SPINE1 | Ethernet2 | 172.31.255.4/31 |
| AVD2-LEAF1B | Ethernet2 | 172.31.255.7/31 | AVD2-SPINE2 | Ethernet2 | 172.31.255.6/31 |
| AVD2-LEAF2A | Ethernet1 | 172.31.255.9/31 | AVD2-SPINE1 | Ethernet3 | 172.31.255.8/31 |
| AVD2-LEAF2A | Ethernet2 | 172.31.255.11/31 | AVD2-SPINE2 | Ethernet3 | 172.31.255.10/31 |
| AVD2-LEAF2B | Ethernet1 | 172.31.255.13/31 | AVD2-SPINE1 | Ethernet4 | 172.31.255.12/31 |
| AVD2-LEAF2B | Ethernet2 | 172.31.255.15/31 | AVD2-SPINE2 | Ethernet4 | 172.31.255.14/31 |
| AVD2-LEAF3A | Ethernet1 | 172.31.255.17/31 | AVD2-SPINE1 | Ethernet7 | 172.31.255.16/31 |
| AVD2-LEAF3A | Ethernet2 | 172.31.255.19/31 | AVD2-SPINE2 | Ethernet7 | 172.31.255.18/31 |
| AVD2-LEAF4A | Ethernet1 | 172.31.255.21/31 | AVD2-SPINE1 | Ethernet8 | 172.31.255.20/31 |
| AVD2-LEAF4A | Ethernet2 | 172.31.255.23/31 | AVD2-SPINE2 | Ethernet8 | 172.31.255.22/31 |

### Overlay Loopback Interfaces (BGP EVPN Peering)

| Overlay Loopback Summary | Available Addresses | Assigned addresses | Assigned Address % |
| ------------------------ | ------------------- | ------------------ | ------------------ |
| 192.168.255.0/24 | 256 | 10 | 3.91 % |

### Loopback0 Interfaces Node Allocation

| Node | Loopback0 |
| ---- | --------- |
| AVD2-SPINE1 | 192.168.255.1/32 |
| AVD2-SPINE2 | 192.168.255.2/32 |
| AVD2-BL01A | 192.168.255.9/32 |
| AVD2-BL01B | 192.168.255.10/32 |
| AVD2-LEAF1A | 192.168.255.3/32 |
| AVD2-LEAF1B | 192.168.255.4/32 |
| AVD2-LEAF2A | 192.168.255.5/32 |
| AVD2-LEAF2B | 192.168.255.6/32 |
| AVD2-LEAF3A | 192.168.255.7/32 |
| AVD2-LEAF4A | 192.168.255.8/32 |

### ISIS CLNS interfaces

| Node | CLNS Address |
| ---- | ------------ |
| AVD2-SPINE1 | 49.0001.0001.0000.0001.00 |
| AVD2-SPINE2 | 49.0001.0001.0000.0002.00 |
| AVD2-BL01A | 49.0001.0001.0001.0007.00 |
| AVD2-BL01B | 49.0001.0001.0001.0008.00 |
| AVD2-LEAF1A | 49.0001.0001.0001.0001.00 |
| AVD2-LEAF1B | 49.0001.0001.0001.0002.00 |
| AVD2-LEAF2A | 49.0001.0001.0001.0003.00 |
| AVD2-LEAF2B | 49.0001.0001.0001.0004.00 |
| AVD2-LEAF3A | 49.0001.0001.0001.0005.00 |
| AVD2-LEAF4A | 49.0001.0001.0001.0006.00 |

### VTEP Loopback VXLAN Tunnel Source Interfaces (Leafs Only)

| VTEP Loopback Summary | Available Addresses | Assigned addresses | Assigned Address % |
| --------------------- | ------------------- | ------------------ | ------------------ |
| 192.168.254.0/24 | 256 | 8 | 3.13 % |

### VTEP Loopback Node allocation

| Node | Loopback1 |
| ---- | --------- |
| AVD2-BL01A | 192.168.254.9/32 |
| AVD2-BL01B | 192.168.254.9/32 |
| AVD2-LEAF1A | 192.168.254.3/32 |
| AVD2-LEAF1B | 192.168.254.3/32 |
| AVD2-LEAF2A | 192.168.254.5/32 |
| AVD2-LEAF2B | 192.168.254.5/32 |
| AVD2-LEAF3A | 192.168.254.7/32 |
| AVD2-LEAF4A | 192.168.254.8/32 |
