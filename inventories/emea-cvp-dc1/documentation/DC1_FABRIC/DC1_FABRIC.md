# DC1_FABRIC

## Table of Contents

- [DC1_FABRIC](#dc1fabric )
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
| DC1-SPINE1 | 10.73.1.11/16 | vEOS-LAB |
| DC1-SPINE2 | 10.73.1.12/16 | vEOS-LAB |
| DC1-BL1A | 10.73.1.22/16 | vEOS-LAB |
| DC1-BL1B | 10.73.1.23/16 | vEOS-LAB |
| DC1-BL2A | 10.73.1.25/16 | vEOS-LAB |
| DC1-BL2B | 10.73.1.26/16 | vEOS-LAB |
| DC1-LEAF1A | 10.73.1.13/16 | vEOS-LAB |
| DC1-LEAF1B | 10.73.1.14/16 | vEOS-LAB |
| DC1-LEAF2A | 10.73.1.15/16 | vEOS-LAB |
| DC1-LEAF2B | 10.73.1.16/16 | vEOS-LAB |
| DC1-LEAF3A | 10.73.1.21/16 | vEOS-LAB |
| DC1-LEAF4A | 10.73.1.24/16 | vEOS-LAB |
| DC1-L2LEAF1A | 10.73.1.17/16 | vEOS-LAB |
| DC1-L2LEAF2A | 10.73.1.18/16 | vEOS-LAB |

## Fabric Topology

| Type | Leaf Node | Leaf Interface | Peer Node | Peer Interface |
| ---- | --------- | -------------- | --------- | -------------- |
| L3 Leaf | DC1-BL1A | Ethernet1 | DC1-SPINE1 | Ethernet6 |
| L3 Leaf | DC1-BL1A | Ethernet2 | DC1-SPINE2 | Ethernet6 |
| L3 Leaf | DC1-BL1B | Ethernet1 | DC1-SPINE1 | Ethernet7 |
| L3 Leaf | DC1-BL1B | Ethernet2 | DC1-SPINE2 | Ethernet7 |
| L3 Leaf | DC1-BL2A | Ethernet1 | DC1-SPINE1 | Ethernet9 |
| L3 Leaf | DC1-BL2A | Ethernet2 | DC1-SPINE2 | Ethernet9 |
| L3 Leaf | DC1-BL2B | Ethernet1 | DC1-SPINE1 | Ethernet10 |
| L3 Leaf | DC1-BL2B | Ethernet2 | DC1-SPINE2 | Ethernet10 |
| L3 Leaf | DC1-LEAF1A | Ethernet1 | DC1-SPINE1 | Ethernet1 |
| L3 Leaf | DC1-LEAF1A | Ethernet2 | DC1-SPINE2 | Ethernet1 |
| L3 Leaf | DC1-LEAF1B | Ethernet1 | DC1-SPINE1 | Ethernet2 |
| L3 Leaf | DC1-LEAF1B | Ethernet2 | DC1-SPINE2 | Ethernet2 |
| L3 Leaf | DC1-LEAF2A | Ethernet1 | DC1-SPINE1 | Ethernet3 |
| L3 Leaf | DC1-LEAF2A | Ethernet2 | DC1-SPINE2 | Ethernet3 |
| L3 Leaf | DC1-LEAF2B | Ethernet1 | DC1-SPINE1 | Ethernet4 |
| L3 Leaf | DC1-LEAF2B | Ethernet2 | DC1-SPINE2 | Ethernet4 |
| L3 Leaf | DC1-LEAF3A | Ethernet1 | DC1-SPINE1 | Ethernet5 |
| L3 Leaf | DC1-LEAF3A | Ethernet2 | DC1-SPINE2 | Ethernet5 |
| L3 Leaf | DC1-LEAF4A | Ethernet1 | DC1-SPINE1 | Ethernet8 |
| L3 Leaf | DC1-LEAF4A | Ethernet2 | DC1-SPINE2 | Ethernet8 |
| L2 Leaf | DC1-L2LEAF1A | Ethernet1 | DC1-LEAF1A | Ethernet5 |
| L2 Leaf | DC1-L2LEAF1A | Ethernet2 | DC1-LEAF1B | Ethernet5 |
| L2 Leaf | DC1-L2LEAF2A | Ethernet1 | DC1-LEAF2A | Ethernet5 |
| L2 Leaf | DC1-L2LEAF2A | Ethernet2 | DC1-LEAF2B | Ethernet5 |

## Fabric IP Allocation

### Fabric Point-To-Point Links

| P2P Summary | Available Addresses | Assigned addresses | Assigned Address % |
| ----------- | ------------------- | ------------------ | ------------------ |
| 172.31.255.0/24 | 256 | 40 | 15.63 % |

### Point-To-Point Links Node Allocation

| Leaf Node | Leaf Interface | Leaf IP Address | Spine Node | Spine Interface | Spine IP Address |
| --------- | -------------- | --------------- | ---------- | --------------- | ---------------- |
| DC1-BL1A | Ethernet1 | 172.31.255.33/31 | DC1-SPINE1 | Ethernet6 | 172.31.255.32/31 |
| DC1-BL1A | Ethernet2 | 172.31.255.35/31 | DC1-SPINE2 | Ethernet6 | 172.31.255.34/31 |
| DC1-BL1B | Ethernet1 | 172.31.255.37/31 | DC1-SPINE1 | Ethernet7 | 172.31.255.36/31 |
| DC1-BL1B | Ethernet2 | 172.31.255.39/31 | DC1-SPINE2 | Ethernet7 | 172.31.255.38/31 |
| DC1-BL2A | Ethernet1 | 172.31.255.45/31 | DC1-SPINE1 | Ethernet9 | 172.31.255.44/31 |
| DC1-BL2A | Ethernet2 | 172.31.255.47/31 | DC1-SPINE2 | Ethernet9 | 172.31.255.46/31 |
| DC1-BL2B | Ethernet1 | 172.31.255.49/31 | DC1-SPINE1 | Ethernet10 | 172.31.255.48/31 |
| DC1-BL2B | Ethernet2 | 172.31.255.51/31 | DC1-SPINE2 | Ethernet10 | 172.31.255.50/31 |
| DC1-LEAF1A | Ethernet1 | 172.31.255.1/31 | DC1-SPINE1 | Ethernet1 | 172.31.255.0/31 |
| DC1-LEAF1A | Ethernet2 | 172.31.255.3/31 | DC1-SPINE2 | Ethernet1 | 172.31.255.2/31 |
| DC1-LEAF1B | Ethernet1 | 172.31.255.5/31 | DC1-SPINE1 | Ethernet2 | 172.31.255.4/31 |
| DC1-LEAF1B | Ethernet2 | 172.31.255.7/31 | DC1-SPINE2 | Ethernet2 | 172.31.255.6/31 |
| DC1-LEAF2A | Ethernet1 | 172.31.255.9/31 | DC1-SPINE1 | Ethernet3 | 172.31.255.8/31 |
| DC1-LEAF2A | Ethernet2 | 172.31.255.11/31 | DC1-SPINE2 | Ethernet3 | 172.31.255.10/31 |
| DC1-LEAF2B | Ethernet1 | 172.31.255.13/31 | DC1-SPINE1 | Ethernet4 | 172.31.255.12/31 |
| DC1-LEAF2B | Ethernet2 | 172.31.255.15/31 | DC1-SPINE2 | Ethernet4 | 172.31.255.14/31 |
| DC1-LEAF3A | Ethernet1 | 172.31.255.29/31 | DC1-SPINE1 | Ethernet5 | 172.31.255.28/31 |
| DC1-LEAF3A | Ethernet2 | 172.31.255.31/31 | DC1-SPINE2 | Ethernet5 | 172.31.255.30/31 |
| DC1-LEAF4A | Ethernet1 | 172.31.255.41/31 | DC1-SPINE1 | Ethernet8 | 172.31.255.40/31 |
| DC1-LEAF4A | Ethernet2 | 172.31.255.43/31 | DC1-SPINE2 | Ethernet8 | 172.31.255.42/31 |

### Overlay Loopback Interfaces (BGP EVPN Peering)

| Overlay Loopback Summary | Available Addresses | Assigned addresses | Assigned Address % |
| ------------------------ | ------------------- | ------------------ | ------------------ |
| 192.168.255.0/24 | 256 | 12 | 4.69 % |

### Loopback0 Interfaces Node Allocation

| Node | Loopback0 |
| ---- | --------- |
| DC1-SPINE1 | 192.168.255.1/32 |
| DC1-SPINE2 | 192.168.255.2/32 |
| DC1-BL1A | 192.168.255.11/32 |
| DC1-BL1B | 192.168.255.12/32 |
| DC1-BL2A | 192.168.255.14/32 |
| DC1-BL2B | 192.168.255.15/32 |
| DC1-LEAF1A | 192.168.255.3/32 |
| DC1-LEAF1B | 192.168.255.4/32 |
| DC1-LEAF2A | 192.168.255.5/32 |
| DC1-LEAF2B | 192.168.255.6/32 |
| DC1-LEAF3A | 192.168.255.10/32 |
| DC1-LEAF4A | 192.168.255.13/32 |

### ISIS CLNS interfaces

| Node | CLNS Address |
| ---- | ------------ |
| DC1-SPINE1 | 49.0001.0001.0000.0001.00 |
| DC1-SPINE2 | 49.0001.0001.0000.0002.00 |
| DC1-BL1A | 49.0001.0001.0001.0009.00 |
| DC1-BL1B | 49.0001.0001.0001.0010.00 |
| DC1-BL2A | 49.0001.0001.0001.0012.00 |
| DC1-BL2B | 49.0001.0001.0001.0013.00 |
| DC1-LEAF1A | 49.0001.0001.0001.0001.00 |
| DC1-LEAF1B | 49.0001.0001.0001.0002.00 |
| DC1-LEAF2A | 49.0001.0001.0001.0003.00 |
| DC1-LEAF2B | 49.0001.0001.0001.0004.00 |
| DC1-LEAF3A | 49.0001.0001.0001.0008.00 |
| DC1-LEAF4A | 49.0001.0001.0001.0011.00 |

### VTEP Loopback VXLAN Tunnel Source Interfaces (Leafs Only)

| VTEP Loopback Summary | Available Addresses | Assigned addresses | Assigned Address % |
| --------------------- | ------------------- | ------------------ | ------------------ |
| 192.168.254.0/24 | 256 | 10 | 3.91 % |

### VTEP Loopback Node allocation

| Node | Loopback1 |
| ---- | --------- |
| DC1-BL1A | 192.168.254.11/32 |
| DC1-BL1B | 192.168.254.11/32 |
| DC1-BL2A | 192.168.254.14/32 |
| DC1-BL2B | 192.168.254.14/32 |
| DC1-LEAF1A | 192.168.254.3/32 |
| DC1-LEAF1B | 192.168.254.3/32 |
| DC1-LEAF2A | 192.168.254.5/32 |
| DC1-LEAF2B | 192.168.254.5/32 |
| DC1-LEAF3A | 192.168.254.10/32 |
| DC1-LEAF4A | 192.168.254.13/32 |