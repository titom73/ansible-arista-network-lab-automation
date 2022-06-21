# fabric

# Table of Contents

- [Fabric Switches and Management IP](#fabric-switches-and-management-ip)
  - [Fabric Switches with inband Management IP](#fabric-switches-with-inband-management-ip)
- [Fabric Topology](#fabric-topology)
- [Fabric IP Allocation](#fabric-ip-allocation)
  - [Fabric Point-To-Point Links](#fabric-point-to-point-links)
  - [Point-To-Point Links Node Allocation](#point-to-point-links-node-allocation)
  - [Loopback Interfaces (BGP EVPN Peering)](#loopback-interfaces-bgp-evpn-peering)
  - [Loopback0 Interfaces Node Allocation](#loopback0-interfaces-node-allocation)
  - [VTEP Loopback VXLAN Tunnel Source Interfaces (VTEPs Only)](#vtep-loopback-vxlan-tunnel-source-interfaces-vteps-only)
  - [VTEP Loopback Node allocation](#vtep-loopback-node-allocation)

# Fabric Switches and Management IP

| POD | Type | Node | Management IP | Platform | Provisioned in CloudVision |
| --- | ---- | ---- | ------------- | -------- | -------------------------- |
| fabric | edge | avd-agg01 | 10.73.252.21/24 | cEOS-LAB | Provisioned |
| fabric | edge | avd-agg02 | 10.73.252.22/24 | cEOS-LAB | Provisioned |
| fabric | l3leaf | avd-bl01a | 10.73.252.15/24 | cEOS-LAB | Provisioned |
| fabric | l3leaf | avd-bl01b | 10.73.252.16/24 | cEOS-LAB | Provisioned |
| fabric | l3leaf | avd-cl01a | 10.73.252.19/24 | cEOS-LAB | Provisioned |
| fabric | l3leaf | avd-cl01b | 10.73.252.20/24 | cEOS-LAB | Provisioned |
| fabric | l2leaf | avd-l2leaf01 | 10.73.252.31/24 | cEOS-LAB | Provisioned |
| fabric | l2leaf | avd-l2leaf02 | 10.73.252.32/24 | cEOS-LAB | Provisioned |
| fabric | l3leaf | avd-leaf1a | 10.73.252.11/24 | cEOS-LAB | Provisioned |
| fabric | l3leaf | avd-leaf1b | 10.73.252.12/24 | cEOS-LAB | Provisioned |
| fabric | l3leaf | avd-leaf2a | 10.73.252.13/24 | cEOS-LAB | Provisioned |
| fabric | l3leaf | avd-leaf2b | 10.73.252.14/24 | cEOS-LAB | Provisioned |
| fabric | l3leaf | avd-leaf3a | 10.73.252.17/24 | cEOS-LAB | Provisioned |
| fabric | l3leaf | avd-leaf4a | 10.73.252.18/24 | cEOS-LAB | Provisioned |
| fabric | route_server | avd-rs01 | 10.73.252.51/24 | cEOS-LAB | Provisioned |
| fabric | route_server | avd-rs02 | 10.73.252.52/24 | cEOS-LAB | Provisioned |
| fabric | spine | avd-spine1 | 10.73.252.101/24 | cEOS-LAB | Provisioned |
| fabric | spine | avd-spine2 | 10.73.252.102/24 | cEOS-LAB | Provisioned |

> Provision status is based on Ansible inventory declaration and do not represent real status from CloudVision.

## Fabric Switches with inband Management IP
| POD | Type | Node | Management IP | Inband Interface |
| --- | ---- | ---- | ------------- | ---------------- |

# Fabric Topology

| Type | Node | Node Interface | Peer Type | Peer Node | Peer Interface |
| ---- | ---- | -------------- | --------- | ----------| -------------- |
| edge | avd-agg01 | Ethernet1 | l3leaf | avd-leaf1a | Ethernet5 |
| edge | avd-agg01 | Ethernet2 | l3leaf | avd-leaf1b | Ethernet5 |
| edge | avd-agg02 | Ethernet1 | l3leaf | avd-leaf2a | Ethernet5 |
| edge | avd-agg02 | Ethernet2 | l3leaf | avd-leaf2b | Ethernet5 |
| l3leaf | avd-bl01a | Ethernet1 | spine | avd-spine1 | Ethernet5 |
| l3leaf | avd-bl01a | Ethernet2 | spine | avd-spine2 | Ethernet5 |
| l3leaf | avd-bl01a | Ethernet7 | mlag_peer | avd-bl01b | Ethernet7 |
| l3leaf | avd-bl01a | Ethernet8 | mlag_peer | avd-bl01b | Ethernet8 |
| l3leaf | avd-bl01b | Ethernet1 | spine | avd-spine1 | Ethernet6 |
| l3leaf | avd-bl01b | Ethernet2 | spine | avd-spine2 | Ethernet6 |
| l3leaf | avd-cl01a | Ethernet1 | spine | avd-spine1 | Ethernet9 |
| l3leaf | avd-cl01a | Ethernet2 | spine | avd-spine2 | Ethernet9 |
| l3leaf | avd-cl01a | Ethernet7 | mlag_peer | avd-cl01b | Ethernet7 |
| l3leaf | avd-cl01a | Ethernet8 | mlag_peer | avd-cl01b | Ethernet8 |
| l3leaf | avd-cl01b | Ethernet1 | spine | avd-spine1 | Ethernet10 |
| l3leaf | avd-cl01b | Ethernet2 | spine | avd-spine2 | Ethernet10 |
| l2leaf | avd-l2leaf01 | Ethernet1 | spine | avd-spine1 | Ethernet11 |
| l2leaf | avd-l2leaf01 | Ethernet2 | spine | avd-spine2 | Ethernet11 |
| l2leaf | avd-l2leaf02 | Ethernet1 | spine | avd-spine1 | Ethernet12 |
| l2leaf | avd-l2leaf02 | Ethernet2 | spine | avd-spine2 | Ethernet12 |
| l3leaf | avd-leaf1a | Ethernet1 | spine | avd-spine1 | Ethernet1 |
| l3leaf | avd-leaf1a | Ethernet2 | spine | avd-spine2 | Ethernet1 |
| l3leaf | avd-leaf1a | Ethernet7 | mlag_peer | avd-leaf1b | Ethernet7 |
| l3leaf | avd-leaf1a | Ethernet8 | mlag_peer | avd-leaf1b | Ethernet8 |
| l3leaf | avd-leaf1b | Ethernet1 | spine | avd-spine1 | Ethernet2 |
| l3leaf | avd-leaf1b | Ethernet2 | spine | avd-spine2 | Ethernet2 |
| l3leaf | avd-leaf2a | Ethernet1 | spine | avd-spine1 | Ethernet3 |
| l3leaf | avd-leaf2a | Ethernet2 | spine | avd-spine2 | Ethernet3 |
| l3leaf | avd-leaf2a | Ethernet7 | mlag_peer | avd-leaf2b | Ethernet7 |
| l3leaf | avd-leaf2a | Ethernet8 | mlag_peer | avd-leaf2b | Ethernet8 |
| l3leaf | avd-leaf2b | Ethernet1 | spine | avd-spine1 | Ethernet4 |
| l3leaf | avd-leaf2b | Ethernet2 | spine | avd-spine2 | Ethernet4 |
| l3leaf | avd-leaf3a | Ethernet1 | spine | avd-spine1 | Ethernet7 |
| l3leaf | avd-leaf3a | Ethernet2 | spine | avd-spine2 | Ethernet7 |
| l3leaf | avd-leaf4a | Ethernet1 | spine | avd-spine1 | Ethernet8 |
| l3leaf | avd-leaf4a | Ethernet2 | spine | avd-spine2 | Ethernet8 |
| route_server | avd-rs01 | Ethernet1 | spine | avd-spine1 | Ethernet13 |
| route_server | avd-rs02 | Ethernet1 | spine | avd-spine2 | Ethernet13 |

# Fabric IP Allocation

## Fabric Point-To-Point Links

| Uplink IPv4 Pool | Available Addresses | Assigned addresses | Assigned Address % |
| ---------------- | ------------------- | ------------------ | ------------------ |
| 172.31.250.0/24 | 256 | 4 | 1.57 % |
| 172.31.251.0/24 | 256 | 8 | 3.13 % |
| 172.31.255.0/24 | 256 | 40 | 15.63 % |

## Point-To-Point Links Node Allocation

| Node | Node Interface | Node IP Address | Peer Node | Peer Interface | Peer IP Address |
| ---- | -------------- | --------------- | --------- | -------------- | --------------- |
| avd-bl01a | Ethernet1 | 172.31.255.65/31 | avd-spine1 | Ethernet5 | 172.31.255.64/31 |
| avd-bl01a | Ethernet2 | 172.31.255.67/31 | avd-spine2 | Ethernet5 | 172.31.255.66/31 |
| avd-bl01b | Ethernet1 | 172.31.255.69/31 | avd-spine1 | Ethernet6 | 172.31.255.68/31 |
| avd-bl01b | Ethernet2 | 172.31.255.71/31 | avd-spine2 | Ethernet6 | 172.31.255.70/31 |
| avd-cl01a | Ethernet1 | 172.31.255.73/31 | avd-spine1 | Ethernet9 | 172.31.255.72/31 |
| avd-cl01a | Ethernet2 | 172.31.255.75/31 | avd-spine2 | Ethernet9 | 172.31.255.74/31 |
| avd-cl01b | Ethernet1 | 172.31.255.77/31 | avd-spine1 | Ethernet10 | 172.31.255.76/31 |
| avd-cl01b | Ethernet2 | 172.31.255.79/31 | avd-spine2 | Ethernet10 | 172.31.255.78/31 |
| avd-l2leaf01 | Ethernet1 | 172.31.251.81/31 | avd-spine1 | Ethernet11 | 172.31.251.80/31 |
| avd-l2leaf01 | Ethernet2 | 172.31.251.83/31 | avd-spine2 | Ethernet11 | 172.31.251.82/31 |
| avd-l2leaf02 | Ethernet1 | 172.31.251.85/31 | avd-spine1 | Ethernet12 | 172.31.251.84/31 |
| avd-l2leaf02 | Ethernet2 | 172.31.251.87/31 | avd-spine2 | Ethernet12 | 172.31.251.86/31 |
| avd-leaf1a | Ethernet1 | 172.31.255.41/31 | avd-spine1 | Ethernet1 | 172.31.255.40/31 |
| avd-leaf1a | Ethernet2 | 172.31.255.43/31 | avd-spine2 | Ethernet1 | 172.31.255.42/31 |
| avd-leaf1b | Ethernet1 | 172.31.255.45/31 | avd-spine1 | Ethernet2 | 172.31.255.44/31 |
| avd-leaf1b | Ethernet2 | 172.31.255.47/31 | avd-spine2 | Ethernet2 | 172.31.255.46/31 |
| avd-leaf2a | Ethernet1 | 172.31.255.49/31 | avd-spine1 | Ethernet3 | 172.31.255.48/31 |
| avd-leaf2a | Ethernet2 | 172.31.255.51/31 | avd-spine2 | Ethernet3 | 172.31.255.50/31 |
| avd-leaf2b | Ethernet1 | 172.31.255.53/31 | avd-spine1 | Ethernet4 | 172.31.255.52/31 |
| avd-leaf2b | Ethernet2 | 172.31.255.55/31 | avd-spine2 | Ethernet4 | 172.31.255.54/31 |
| avd-leaf3a | Ethernet1 | 172.31.255.57/31 | avd-spine1 | Ethernet7 | 172.31.255.56/31 |
| avd-leaf3a | Ethernet2 | 172.31.255.59/31 | avd-spine2 | Ethernet7 | 172.31.255.58/31 |
| avd-leaf4a | Ethernet1 | 172.31.255.61/31 | avd-spine1 | Ethernet8 | 172.31.255.60/31 |
| avd-leaf4a | Ethernet2 | 172.31.255.63/31 | avd-spine2 | Ethernet8 | 172.31.255.62/31 |
| avd-rs01 | Ethernet1 | 172.31.250.49/31 | avd-spine1 | Ethernet13 | 172.31.250.48/31 |
| avd-rs02 | Ethernet1 | 172.31.250.51/31 | avd-spine2 | Ethernet13 | 172.31.250.50/31 |

## Loopback Interfaces (BGP EVPN Peering)

| Loopback Pool | Available Addresses | Assigned addresses | Assigned Address % |
| ------------- | ------------------- | ------------------ | ------------------ |
| 192.168.0.0/24 | 256 | 2 | 0.79 % |
| 192.168.1.0/24 | 256 | 2 | 0.79 % |
| 192.168.253.0/24 | 256 | 2 | 0.79 % |
| 192.168.255.0/24 | 256 | 10 | 3.91 % |

## Loopback0 Interfaces Node Allocation

| POD | Node | Loopback0 |
| --- | ---- | --------- |
| fabric | avd-bl01a | 192.168.255.19/32 |
| fabric | avd-bl01b | 192.168.255.20/32 |
| fabric | avd-cl01a | 192.168.255.21/32 |
| fabric | avd-cl01b | 192.168.255.22/32 |
| fabric | avd-l2leaf01 | 192.168.253.22/32 |
| fabric | avd-l2leaf02 | 192.168.253.23/32 |
| fabric | avd-leaf1a | 192.168.255.13/32 |
| fabric | avd-leaf1b | 192.168.255.14/32 |
| fabric | avd-leaf2a | 192.168.255.15/32 |
| fabric | avd-leaf2b | 192.168.255.16/32 |
| fabric | avd-leaf3a | 192.168.255.17/32 |
| fabric | avd-leaf4a | 192.168.255.18/32 |
| fabric | avd-rs01 | 192.168.0.26/32 |
| fabric | avd-rs02 | 192.168.0.27/32 |
| fabric | avd-spine1 | 192.168.1.1/32 |
| fabric | avd-spine2 | 192.168.1.2/32 |

## VTEP Loopback VXLAN Tunnel Source Interfaces (VTEPs Only)

| VTEP Loopback Pool | Available Addresses | Assigned addresses | Assigned Address % |
| --------------------- | ------------------- | ------------------ | ------------------ |
| 192.168.252.0/24 | 256 | 2 | 0.79 % |
| 192.168.254.0/24 | 256 | 10 | 3.91 % |

## VTEP Loopback Node allocation

| POD | Node | Loopback1 |
| --- | ---- | --------- |
| fabric | avd-bl01a | 192.168.254.19/32 |
| fabric | avd-bl01b | 192.168.254.19/32 |
| fabric | avd-cl01a | 192.168.254.21/32 |
| fabric | avd-cl01b | 192.168.254.21/32 |
| fabric | avd-l2leaf01 | 192.168.252.22/32 |
| fabric | avd-l2leaf02 | 192.168.252.23/32 |
| fabric | avd-leaf1a | 192.168.254.13/32 |
| fabric | avd-leaf1b | 192.168.254.13/32 |
| fabric | avd-leaf2a | 192.168.254.15/32 |
| fabric | avd-leaf2b | 192.168.254.15/32 |
| fabric | avd-leaf3a | 192.168.254.17/32 |
| fabric | avd-leaf4a | 192.168.254.18/32 |
