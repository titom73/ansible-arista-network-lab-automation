# ceos_fabric

# Table of Contents
<!-- toc -->

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

<!-- toc -->
# Fabric Switches and Management IP

| POD | Type | Node | Management IP | Platform | Provisioned in CloudVision |
| --- | ---- | ---- | ------------- | -------- | -------------------------- |
| ceos_fabric | edge | ceos-agg01 | 10.73.255.121/24 | - | Provisioned |
| ceos_fabric | edge | ceos-agg02 | 10.73.255.122/24 | - | Provisioned |
| ceos_fabric | l3leaf | ceos-bl01a | 10.73.255.115/24 | - | Provisioned |
| ceos_fabric | l3leaf | ceos-bl01b | 10.73.255.116/24 | - | Provisioned |
| ceos_fabric | l3leaf | ceos-leaf1a | 10.73.255.111/24 | - | Provisioned |
| ceos_fabric | l3leaf | ceos-leaf1b | 10.73.255.112/24 | - | Provisioned |
| ceos_fabric | l3leaf | ceos-leaf2a | 10.73.255.113/24 | - | Provisioned |
| ceos_fabric | l3leaf | ceos-leaf2b | 10.73.255.114/24 | - | Provisioned |
| ceos_fabric | l3leaf | ceos-leaf3a | 10.73.255.117/24 | - | Provisioned |
| ceos_fabric | l3leaf | ceos-leaf4a | 10.73.255.118/24 | - | Provisioned |
| ceos_fabric | spine | ceos-spine1 | 10.73.255.101/24 | vEOS-LAB | Provisioned |
| ceos_fabric | spine | ceos-spine2 | 10.73.255.102/24 | vEOS-LAB | Provisioned |

> Provision status is based on Ansible inventory declaration and do not represent real status from CloudVision.

## Fabric Switches with inband Management IP
| POD | Type | Node | Management IP | Inband Interface |
| --- | ---- | ---- | ------------- | ---------------- |

# Fabric Topology

| Type | Node | Node Interface | Peer Type | Peer Node | Peer Interface |
| ---- | ---- | -------------- | --------- | ----------| -------------- |
| edge | ceos-agg01 | Ethernet1 | l3leaf | ceos-leaf1a | Ethernet5 |
| edge | ceos-agg01 | Ethernet2 | l3leaf | ceos-leaf1b | Ethernet5 |
| edge | ceos-agg02 | Ethernet1 | l3leaf | ceos-leaf2a | Ethernet5 |
| edge | ceos-agg02 | Ethernet2 | l3leaf | ceos-leaf2b | Ethernet5 |
| l3leaf | ceos-bl01a | Ethernet1 | spine | ceos-spine1 | Ethernet5 |
| l3leaf | ceos-bl01a | Ethernet2 | spine | ceos-spine2 | Ethernet5 |
| l3leaf | ceos-bl01a | Ethernet3 | mlag_peer | ceos-bl01b | Ethernet3 |
| l3leaf | ceos-bl01a | Ethernet4 | mlag_peer | ceos-bl01b | Ethernet4 |
| l3leaf | ceos-bl01b | Ethernet1 | spine | ceos-spine1 | Ethernet6 |
| l3leaf | ceos-bl01b | Ethernet2 | spine | ceos-spine2 | Ethernet6 |
| l3leaf | ceos-leaf1a | Ethernet1 | spine | ceos-spine1 | Ethernet1 |
| l3leaf | ceos-leaf1a | Ethernet2 | spine | ceos-spine2 | Ethernet1 |
| l3leaf | ceos-leaf1a | Ethernet3 | mlag_peer | ceos-leaf1b | Ethernet3 |
| l3leaf | ceos-leaf1a | Ethernet4 | mlag_peer | ceos-leaf1b | Ethernet4 |
| l3leaf | ceos-leaf1b | Ethernet1 | spine | ceos-spine1 | Ethernet2 |
| l3leaf | ceos-leaf1b | Ethernet2 | spine | ceos-spine2 | Ethernet2 |
| l3leaf | ceos-leaf2a | Ethernet1 | spine | ceos-spine1 | Ethernet3 |
| l3leaf | ceos-leaf2a | Ethernet2 | spine | ceos-spine2 | Ethernet3 |
| l3leaf | ceos-leaf2a | Ethernet3 | mlag_peer | ceos-leaf2b | Ethernet3 |
| l3leaf | ceos-leaf2a | Ethernet4 | mlag_peer | ceos-leaf2b | Ethernet4 |
| l3leaf | ceos-leaf2b | Ethernet1 | spine | ceos-spine1 | Ethernet4 |
| l3leaf | ceos-leaf2b | Ethernet2 | spine | ceos-spine2 | Ethernet4 |
| l3leaf | ceos-leaf3a | Ethernet1 | spine | ceos-spine1 | Ethernet7 |
| l3leaf | ceos-leaf3a | Ethernet2 | spine | ceos-spine2 | Ethernet7 |
| l3leaf | ceos-leaf4a | Ethernet1 | spine | ceos-spine1 | Ethernet8 |
| l3leaf | ceos-leaf4a | Ethernet2 | spine | ceos-spine2 | Ethernet8 |

# Fabric IP Allocation

## Fabric Point-To-Point Links

| Uplink IPv4 Pool | Available Addresses | Assigned addresses | Assigned Address % |
| ---------------- | ------------------- | ------------------ | ------------------ |
| 172.31.255.0/24 | 256 | 32 | 12.5 % |

## Point-To-Point Links Node Allocation

| Node | Node Interface | Node IP Address | Peer Node | Peer Interface | Peer IP Address |
| ---- | -------------- | --------------- | --------- | -------------- | --------------- |
| ceos-bl01a | Ethernet1 | 172.31.255.65/31 | ceos-spine1 | Ethernet5 | 172.31.255.64/31 |
| ceos-bl01a | Ethernet2 | 172.31.255.67/31 | ceos-spine2 | Ethernet5 | 172.31.255.66/31 |
| ceos-bl01b | Ethernet1 | 172.31.255.69/31 | ceos-spine1 | Ethernet6 | 172.31.255.68/31 |
| ceos-bl01b | Ethernet2 | 172.31.255.71/31 | ceos-spine2 | Ethernet6 | 172.31.255.70/31 |
| ceos-leaf1a | Ethernet1 | 172.31.255.41/31 | ceos-spine1 | Ethernet1 | 172.31.255.40/31 |
| ceos-leaf1a | Ethernet2 | 172.31.255.43/31 | ceos-spine2 | Ethernet1 | 172.31.255.42/31 |
| ceos-leaf1b | Ethernet1 | 172.31.255.45/31 | ceos-spine1 | Ethernet2 | 172.31.255.44/31 |
| ceos-leaf1b | Ethernet2 | 172.31.255.47/31 | ceos-spine2 | Ethernet2 | 172.31.255.46/31 |
| ceos-leaf2a | Ethernet1 | 172.31.255.49/31 | ceos-spine1 | Ethernet3 | 172.31.255.48/31 |
| ceos-leaf2a | Ethernet2 | 172.31.255.51/31 | ceos-spine2 | Ethernet3 | 172.31.255.50/31 |
| ceos-leaf2b | Ethernet1 | 172.31.255.53/31 | ceos-spine1 | Ethernet4 | 172.31.255.52/31 |
| ceos-leaf2b | Ethernet2 | 172.31.255.55/31 | ceos-spine2 | Ethernet4 | 172.31.255.54/31 |
| ceos-leaf3a | Ethernet1 | 172.31.255.57/31 | ceos-spine1 | Ethernet7 | 172.31.255.56/31 |
| ceos-leaf3a | Ethernet2 | 172.31.255.59/31 | ceos-spine2 | Ethernet7 | 172.31.255.58/31 |
| ceos-leaf4a | Ethernet1 | 172.31.255.61/31 | ceos-spine1 | Ethernet8 | 172.31.255.60/31 |
| ceos-leaf4a | Ethernet2 | 172.31.255.63/31 | ceos-spine2 | Ethernet8 | 172.31.255.62/31 |

## Loopback Interfaces (BGP EVPN Peering)

| Loopback Pool | Available Addresses | Assigned addresses | Assigned Address % |
| ------------- | ------------------- | ------------------ | ------------------ |
| 192.168.1.0/24 | 256 | 2 | 0.79 % |
| 192.168.255.0/24 | 256 | 8 | 3.13 % |

## Loopback0 Interfaces Node Allocation

| POD | Node | Loopback0 |
| --- | ---- | --------- |
| ceos_fabric | ceos-bl01a | 192.168.255.19/32 |
| ceos_fabric | ceos-bl01b | 192.168.255.20/32 |
| ceos_fabric | ceos-leaf1a | 192.168.255.13/32 |
| ceos_fabric | ceos-leaf1b | 192.168.255.14/32 |
| ceos_fabric | ceos-leaf2a | 192.168.255.15/32 |
| ceos_fabric | ceos-leaf2b | 192.168.255.16/32 |
| ceos_fabric | ceos-leaf3a | 192.168.255.17/32 |
| ceos_fabric | ceos-leaf4a | 192.168.255.18/32 |
| ceos_fabric | ceos-spine1 | 192.168.1.1/32 |
| ceos_fabric | ceos-spine2 | 192.168.1.2/32 |

## VTEP Loopback VXLAN Tunnel Source Interfaces (VTEPs Only)

| VTEP Loopback Pool | Available Addresses | Assigned addresses | Assigned Address % |
| --------------------- | ------------------- | ------------------ | ------------------ |
| 192.168.254.0/24 | 256 | 8 | 3.13 % |

## VTEP Loopback Node allocation

| POD | Node | Loopback1 |
| --- | ---- | --------- |
| ceos_fabric | ceos-bl01a | 192.168.254.19/32 |
| ceos_fabric | ceos-bl01b | 192.168.254.19/32 |
| ceos_fabric | ceos-leaf1a | 192.168.254.13/32 |
| ceos_fabric | ceos-leaf1b | 192.168.254.13/32 |
| ceos_fabric | ceos-leaf2a | 192.168.254.15/32 |
| ceos_fabric | ceos-leaf2b | 192.168.254.15/32 |
| ceos_fabric | ceos-leaf3a | 192.168.254.17/32 |
| ceos_fabric | ceos-leaf4a | 192.168.254.18/32 |
