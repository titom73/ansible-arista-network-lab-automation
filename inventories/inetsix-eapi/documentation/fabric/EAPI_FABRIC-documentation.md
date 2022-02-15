# EAPI_FABRIC

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
| EAPI_FABRIC | edge | EAPI-AGG01 | 10.73.254.21/24 | - | Provisioned |
| EAPI_FABRIC | edge | EAPI-AGG02 | 10.73.254.22/24 | - | Provisioned |
| EAPI_FABRIC | l3leaf | EAPI-BL01A | 10.73.254.15/24 | - | Provisioned |
| EAPI_FABRIC | l3leaf | EAPI-BL01B | 10.73.254.16/24 | - | Provisioned |
| EAPI_FABRIC | l3leaf | EAPI-CL01A | 10.73.254.19/24 | - | Provisioned |
| EAPI_FABRIC | l3leaf | EAPI-CL01B | 10.73.254.20/24 | - | Provisioned |
| EAPI_FABRIC | l2leaf | EAPI-L2LEAF01 | 10.73.254.31/24 | - | Provisioned |
| EAPI_FABRIC | l2leaf | EAPI-L2LEAF02 | 10.73.254.32/24 | - | Provisioned |
| EAPI_FABRIC | l3leaf | EAPI-LEAF1A | 10.73.254.11/24 | - | Provisioned |
| EAPI_FABRIC | l3leaf | EAPI-LEAF1B | 10.73.254.12/24 | - | Provisioned |
| EAPI_FABRIC | l3leaf | EAPI-LEAF2A | 10.73.254.13/24 | - | Provisioned |
| EAPI_FABRIC | l3leaf | EAPI-LEAF2B | 10.73.254.14/24 | - | Provisioned |
| EAPI_FABRIC | l3leaf | EAPI-LEAF3A | 10.73.254.17/24 | - | Provisioned |
| EAPI_FABRIC | l3leaf | EAPI-LEAF4A | 10.73.254.18/24 | - | Provisioned |
| EAPI_FABRIC | route_server | EAPI-RS01 | 10.73.254.51/24 | - | Provisioned |
| EAPI_FABRIC | route_server | EAPI-RS02 | 10.73.254.52/24 | - | Provisioned |
| EAPI_FABRIC | spine | EAPI-SPINE1 | 10.73.254.101/24 | vEOS-LAB | Provisioned |
| EAPI_FABRIC | spine | EAPI-SPINE2 | 10.73.254.102/24 | vEOS-LAB | Provisioned |

> Provision status is based on Ansible inventory declaration and do not represent real status from CloudVision.

## Fabric Switches with inband Management IP
| POD | Type | Node | Management IP | Inband Interface |
| --- | ---- | ---- | ------------- | ---------------- |

# Fabric Topology

| Type | Node | Node Interface | Peer Type | Peer Node | Peer Interface |
| ---- | ---- | -------------- | --------- | ----------| -------------- |
| edge | EAPI-AGG01 | Ethernet1 | l3leaf | EAPI-LEAF1A | Ethernet5 |
| edge | EAPI-AGG01 | Ethernet2 | l3leaf | EAPI-LEAF1B | Ethernet5 |
| edge | EAPI-AGG02 | Ethernet1 | l3leaf | EAPI-LEAF2A | Ethernet5 |
| edge | EAPI-AGG02 | Ethernet2 | l3leaf | EAPI-LEAF2B | Ethernet5 |
| l3leaf | EAPI-BL01A | Ethernet1 | spine | EAPI-SPINE1 | Ethernet5 |
| l3leaf | EAPI-BL01A | Ethernet2 | spine | EAPI-SPINE2 | Ethernet5 |
| l3leaf | EAPI-BL01A | Ethernet3 | mlag_peer | EAPI-BL01B | Ethernet3 |
| l3leaf | EAPI-BL01A | Ethernet4 | mlag_peer | EAPI-BL01B | Ethernet4 |
| l3leaf | EAPI-BL01B | Ethernet1 | spine | EAPI-SPINE1 | Ethernet6 |
| l3leaf | EAPI-BL01B | Ethernet2 | spine | EAPI-SPINE2 | Ethernet6 |
| l3leaf | EAPI-CL01A | Ethernet1 | spine | EAPI-SPINE1 | Ethernet9 |
| l3leaf | EAPI-CL01A | Ethernet2 | spine | EAPI-SPINE2 | Ethernet9 |
| l3leaf | EAPI-CL01A | Ethernet3 | mlag_peer | EAPI-CL01B | Ethernet3 |
| l3leaf | EAPI-CL01A | Ethernet4 | mlag_peer | EAPI-CL01B | Ethernet4 |
| l3leaf | EAPI-CL01B | Ethernet1 | spine | EAPI-SPINE1 | Ethernet10 |
| l3leaf | EAPI-CL01B | Ethernet2 | spine | EAPI-SPINE2 | Ethernet10 |
| l2leaf | EAPI-L2LEAF01 | Ethernet1 | spine | EAPI-SPINE1 | Ethernet11 |
| l2leaf | EAPI-L2LEAF01 | Ethernet2 | spine | EAPI-SPINE2 | Ethernet11 |
| l2leaf | EAPI-L2LEAF02 | Ethernet1 | spine | EAPI-SPINE1 | Ethernet12 |
| l2leaf | EAPI-L2LEAF02 | Ethernet2 | spine | EAPI-SPINE2 | Ethernet12 |
| l3leaf | EAPI-LEAF1A | Ethernet1 | spine | EAPI-SPINE1 | Ethernet1 |
| l3leaf | EAPI-LEAF1A | Ethernet2 | spine | EAPI-SPINE2 | Ethernet1 |
| l3leaf | EAPI-LEAF1A | Ethernet3 | mlag_peer | EAPI-LEAF1B | Ethernet3 |
| l3leaf | EAPI-LEAF1A | Ethernet4 | mlag_peer | EAPI-LEAF1B | Ethernet4 |
| l3leaf | EAPI-LEAF1B | Ethernet1 | spine | EAPI-SPINE1 | Ethernet2 |
| l3leaf | EAPI-LEAF1B | Ethernet2 | spine | EAPI-SPINE2 | Ethernet2 |
| l3leaf | EAPI-LEAF2A | Ethernet1 | spine | EAPI-SPINE1 | Ethernet3 |
| l3leaf | EAPI-LEAF2A | Ethernet2 | spine | EAPI-SPINE2 | Ethernet3 |
| l3leaf | EAPI-LEAF2A | Ethernet3 | mlag_peer | EAPI-LEAF2B | Ethernet3 |
| l3leaf | EAPI-LEAF2A | Ethernet4 | mlag_peer | EAPI-LEAF2B | Ethernet4 |
| l3leaf | EAPI-LEAF2B | Ethernet1 | spine | EAPI-SPINE1 | Ethernet4 |
| l3leaf | EAPI-LEAF2B | Ethernet2 | spine | EAPI-SPINE2 | Ethernet4 |
| l3leaf | EAPI-LEAF3A | Ethernet1 | spine | EAPI-SPINE1 | Ethernet7 |
| l3leaf | EAPI-LEAF3A | Ethernet2 | spine | EAPI-SPINE2 | Ethernet7 |
| l3leaf | EAPI-LEAF4A | Ethernet1 | spine | EAPI-SPINE1 | Ethernet8 |
| l3leaf | EAPI-LEAF4A | Ethernet2 | spine | EAPI-SPINE2 | Ethernet8 |
| route_server | EAPI-RS01 | Ethernet1 | spine | EAPI-SPINE1 | Ethernet13 |
| route_server | EAPI-RS02 | Ethernet1 | spine | EAPI-SPINE2 | Ethernet13 |

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
| EAPI-BL01A | Ethernet1 | 172.31.255.65/31 | EAPI-SPINE1 | Ethernet5 | 172.31.255.64/31 |
| EAPI-BL01A | Ethernet2 | 172.31.255.67/31 | EAPI-SPINE2 | Ethernet5 | 172.31.255.66/31 |
| EAPI-BL01B | Ethernet1 | 172.31.255.69/31 | EAPI-SPINE1 | Ethernet6 | 172.31.255.68/31 |
| EAPI-BL01B | Ethernet2 | 172.31.255.71/31 | EAPI-SPINE2 | Ethernet6 | 172.31.255.70/31 |
| EAPI-CL01A | Ethernet1 | 172.31.255.73/31 | EAPI-SPINE1 | Ethernet9 | 172.31.255.72/31 |
| EAPI-CL01A | Ethernet2 | 172.31.255.75/31 | EAPI-SPINE2 | Ethernet9 | 172.31.255.74/31 |
| EAPI-CL01B | Ethernet1 | 172.31.255.77/31 | EAPI-SPINE1 | Ethernet10 | 172.31.255.76/31 |
| EAPI-CL01B | Ethernet2 | 172.31.255.79/31 | EAPI-SPINE2 | Ethernet10 | 172.31.255.78/31 |
| EAPI-L2LEAF01 | Ethernet1 | 172.31.251.81/31 | EAPI-SPINE1 | Ethernet11 | 172.31.251.80/31 |
| EAPI-L2LEAF01 | Ethernet2 | 172.31.251.83/31 | EAPI-SPINE2 | Ethernet11 | 172.31.251.82/31 |
| EAPI-L2LEAF02 | Ethernet1 | 172.31.251.85/31 | EAPI-SPINE1 | Ethernet12 | 172.31.251.84/31 |
| EAPI-L2LEAF02 | Ethernet2 | 172.31.251.87/31 | EAPI-SPINE2 | Ethernet12 | 172.31.251.86/31 |
| EAPI-LEAF1A | Ethernet1 | 172.31.255.41/31 | EAPI-SPINE1 | Ethernet1 | 172.31.255.40/31 |
| EAPI-LEAF1A | Ethernet2 | 172.31.255.43/31 | EAPI-SPINE2 | Ethernet1 | 172.31.255.42/31 |
| EAPI-LEAF1B | Ethernet1 | 172.31.255.45/31 | EAPI-SPINE1 | Ethernet2 | 172.31.255.44/31 |
| EAPI-LEAF1B | Ethernet2 | 172.31.255.47/31 | EAPI-SPINE2 | Ethernet2 | 172.31.255.46/31 |
| EAPI-LEAF2A | Ethernet1 | 172.31.255.49/31 | EAPI-SPINE1 | Ethernet3 | 172.31.255.48/31 |
| EAPI-LEAF2A | Ethernet2 | 172.31.255.51/31 | EAPI-SPINE2 | Ethernet3 | 172.31.255.50/31 |
| EAPI-LEAF2B | Ethernet1 | 172.31.255.53/31 | EAPI-SPINE1 | Ethernet4 | 172.31.255.52/31 |
| EAPI-LEAF2B | Ethernet2 | 172.31.255.55/31 | EAPI-SPINE2 | Ethernet4 | 172.31.255.54/31 |
| EAPI-LEAF3A | Ethernet1 | 172.31.255.57/31 | EAPI-SPINE1 | Ethernet7 | 172.31.255.56/31 |
| EAPI-LEAF3A | Ethernet2 | 172.31.255.59/31 | EAPI-SPINE2 | Ethernet7 | 172.31.255.58/31 |
| EAPI-LEAF4A | Ethernet1 | 172.31.255.61/31 | EAPI-SPINE1 | Ethernet8 | 172.31.255.60/31 |
| EAPI-LEAF4A | Ethernet2 | 172.31.255.63/31 | EAPI-SPINE2 | Ethernet8 | 172.31.255.62/31 |
| EAPI-RS01 | Ethernet1 | 172.31.250.49/31 | EAPI-SPINE1 | Ethernet13 | 172.31.250.48/31 |
| EAPI-RS02 | Ethernet1 | 172.31.250.51/31 | EAPI-SPINE2 | Ethernet13 | 172.31.250.50/31 |

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
| EAPI_FABRIC | EAPI-BL01A | 192.168.255.19/32 |
| EAPI_FABRIC | EAPI-BL01B | 192.168.255.20/32 |
| EAPI_FABRIC | EAPI-CL01A | 192.168.255.21/32 |
| EAPI_FABRIC | EAPI-CL01B | 192.168.255.22/32 |
| EAPI_FABRIC | EAPI-L2LEAF01 | 192.168.253.22/32 |
| EAPI_FABRIC | EAPI-L2LEAF02 | 192.168.253.23/32 |
| EAPI_FABRIC | EAPI-LEAF1A | 192.168.255.13/32 |
| EAPI_FABRIC | EAPI-LEAF1B | 192.168.255.14/32 |
| EAPI_FABRIC | EAPI-LEAF2A | 192.168.255.15/32 |
| EAPI_FABRIC | EAPI-LEAF2B | 192.168.255.16/32 |
| EAPI_FABRIC | EAPI-LEAF3A | 192.168.255.17/32 |
| EAPI_FABRIC | EAPI-LEAF4A | 192.168.255.18/32 |
| EAPI_FABRIC | EAPI-RS01 | 192.168.0.26/32 |
| EAPI_FABRIC | EAPI-RS02 | 192.168.0.27/32 |
| EAPI_FABRIC | EAPI-SPINE1 | 192.168.1.1/32 |
| EAPI_FABRIC | EAPI-SPINE2 | 192.168.1.2/32 |

## VTEP Loopback VXLAN Tunnel Source Interfaces (VTEPs Only)

| VTEP Loopback Pool | Available Addresses | Assigned addresses | Assigned Address % |
| --------------------- | ------------------- | ------------------ | ------------------ |
| 192.168.252.0/24 | 256 | 2 | 0.79 % |
| 192.168.254.0/24 | 256 | 10 | 3.91 % |

## VTEP Loopback Node allocation

| POD | Node | Loopback1 |
| --- | ---- | --------- |
| EAPI_FABRIC | EAPI-BL01A | 192.168.254.19/32 |
| EAPI_FABRIC | EAPI-BL01B | 192.168.254.19/32 |
| EAPI_FABRIC | EAPI-CL01A | 192.168.254.21/32 |
| EAPI_FABRIC | EAPI-CL01B | 192.168.254.21/32 |
| EAPI_FABRIC | EAPI-L2LEAF01 | 192.168.252.22/32 |
| EAPI_FABRIC | EAPI-L2LEAF02 | 192.168.252.23/32 |
| EAPI_FABRIC | EAPI-LEAF1A | 192.168.254.13/32 |
| EAPI_FABRIC | EAPI-LEAF1B | 192.168.254.13/32 |
| EAPI_FABRIC | EAPI-LEAF2A | 192.168.254.15/32 |
| EAPI_FABRIC | EAPI-LEAF2B | 192.168.254.15/32 |
| EAPI_FABRIC | EAPI-LEAF3A | 192.168.254.17/32 |
| EAPI_FABRIC | EAPI-LEAF4A | 192.168.254.18/32 |
