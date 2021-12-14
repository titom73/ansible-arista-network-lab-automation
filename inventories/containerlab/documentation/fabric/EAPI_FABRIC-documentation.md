# EAPI_FABRIC

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
| EAPI_FABRIC | edge | EAPI-AGG01 | 10.73.254.21/24 | - | Provisioned |
| EAPI_FABRIC | edge | EAPI-AGG02 | 10.73.254.22/24 | - | Provisioned |
| EAPI_FABRIC | l3leaf | EAPI-BL01A | 10.73.254.15/24 | - | Provisioned |
| EAPI_FABRIC | l3leaf | EAPI-BL01B | 10.73.254.16/24 | - | Provisioned |
| EAPI_FABRIC | l3leaf | EAPI-LEAF1A | 10.73.254.11/24 | - | Provisioned |
| EAPI_FABRIC | l3leaf | EAPI-LEAF1B | 10.73.254.12/24 | - | Provisioned |
| EAPI_FABRIC | l3leaf | EAPI-LEAF2A | 10.73.254.13/24 | - | Provisioned |
| EAPI_FABRIC | l3leaf | EAPI-LEAF2B | 10.73.254.14/24 | - | Provisioned |
| EAPI_FABRIC | l3leaf | EAPI-LEAF3A | 10.73.254.17/24 | - | Provisioned |
| EAPI_FABRIC | l3leaf | EAPI-LEAF4A | 10.73.254.18/24 | - | Provisioned |
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

# Fabric IP Allocation

## Fabric Point-To-Point Links

| Uplink IPv4 Pool | Available Addresses | Assigned addresses | Assigned Address % |
| ---------------- | ------------------- | ------------------ | ------------------ |
| 172.31.255.0/24 | 256 | 32 | 12.5 % |

## Point-To-Point Links Node Allocation

| Node | Node Interface | Node IP Address | Peer Node | Peer Interface | Peer IP Address |
| ---- | -------------- | --------------- | --------- | -------------- | --------------- |
| EAPI-BL01A | Ethernet1 | 172.31.255.25/31 | EAPI-SPINE1 | Ethernet5 | 172.31.255.24/31 |
| EAPI-BL01A | Ethernet2 | 172.31.255.27/31 | EAPI-SPINE2 | Ethernet5 | 172.31.255.26/31 |
| EAPI-BL01B | Ethernet1 | 172.31.255.29/31 | EAPI-SPINE1 | Ethernet6 | 172.31.255.28/31 |
| EAPI-BL01B | Ethernet2 | 172.31.255.31/31 | EAPI-SPINE2 | Ethernet6 | 172.31.255.30/31 |
| EAPI-LEAF1A | Ethernet1 | 172.31.255.1/31 | EAPI-SPINE1 | Ethernet1 | 172.31.255.0/31 |
| EAPI-LEAF1A | Ethernet2 | 172.31.255.3/31 | EAPI-SPINE2 | Ethernet1 | 172.31.255.2/31 |
| EAPI-LEAF1B | Ethernet1 | 172.31.255.5/31 | EAPI-SPINE1 | Ethernet2 | 172.31.255.4/31 |
| EAPI-LEAF1B | Ethernet2 | 172.31.255.7/31 | EAPI-SPINE2 | Ethernet2 | 172.31.255.6/31 |
| EAPI-LEAF2A | Ethernet1 | 172.31.255.9/31 | EAPI-SPINE1 | Ethernet3 | 172.31.255.8/31 |
| EAPI-LEAF2A | Ethernet2 | 172.31.255.11/31 | EAPI-SPINE2 | Ethernet3 | 172.31.255.10/31 |
| EAPI-LEAF2B | Ethernet1 | 172.31.255.13/31 | EAPI-SPINE1 | Ethernet4 | 172.31.255.12/31 |
| EAPI-LEAF2B | Ethernet2 | 172.31.255.15/31 | EAPI-SPINE2 | Ethernet4 | 172.31.255.14/31 |
| EAPI-LEAF3A | Ethernet1 | 172.31.255.17/31 | EAPI-SPINE1 | Ethernet7 | 172.31.255.16/31 |
| EAPI-LEAF3A | Ethernet2 | 172.31.255.19/31 | EAPI-SPINE2 | Ethernet7 | 172.31.255.18/31 |
| EAPI-LEAF4A | Ethernet1 | 172.31.255.21/31 | EAPI-SPINE1 | Ethernet8 | 172.31.255.20/31 |
| EAPI-LEAF4A | Ethernet2 | 172.31.255.23/31 | EAPI-SPINE2 | Ethernet8 | 172.31.255.22/31 |

## Loopback Interfaces (BGP EVPN Peering)

| Loopback Pool | Available Addresses | Assigned addresses | Assigned Address % |
| ------------- | ------------------- | ------------------ | ------------------ |
| 192.168.1.0/24 | 256 | 2 | 0.79 % |
| 192.168.255.0/24 | 256 | 8 | 3.13 % |

## Loopback0 Interfaces Node Allocation

| POD | Node | Loopback0 |
| --- | ---- | --------- |
| EAPI_FABRIC | EAPI-BL01A | 192.168.255.9/32 |
| EAPI_FABRIC | EAPI-BL01B | 192.168.255.10/32 |
| EAPI_FABRIC | EAPI-LEAF1A | 192.168.255.3/32 |
| EAPI_FABRIC | EAPI-LEAF1B | 192.168.255.4/32 |
| EAPI_FABRIC | EAPI-LEAF2A | 192.168.255.5/32 |
| EAPI_FABRIC | EAPI-LEAF2B | 192.168.255.6/32 |
| EAPI_FABRIC | EAPI-LEAF3A | 192.168.255.7/32 |
| EAPI_FABRIC | EAPI-LEAF4A | 192.168.255.8/32 |
| EAPI_FABRIC | EAPI-SPINE1 | 192.168.1.1/32 |
| EAPI_FABRIC | EAPI-SPINE2 | 192.168.1.2/32 |

## VTEP Loopback VXLAN Tunnel Source Interfaces (VTEPs Only)

| VTEP Loopback Pool | Available Addresses | Assigned addresses | Assigned Address % |
| --------------------- | ------------------- | ------------------ | ------------------ |
| 192.168.254.0/24 | 256 | 8 | 3.13 % |

## VTEP Loopback Node allocation

| POD | Node | Loopback1 |
| --- | ---- | --------- |
| EAPI_FABRIC | EAPI-BL01A | 192.168.254.9/32 |
| EAPI_FABRIC | EAPI-BL01B | 192.168.254.9/32 |
| EAPI_FABRIC | EAPI-LEAF1A | 192.168.254.3/32 |
| EAPI_FABRIC | EAPI-LEAF1B | 192.168.254.3/32 |
| EAPI_FABRIC | EAPI-LEAF2A | 192.168.254.5/32 |
| EAPI_FABRIC | EAPI-LEAF2B | 192.168.254.5/32 |
| EAPI_FABRIC | EAPI-LEAF3A | 192.168.254.7/32 |
| EAPI_FABRIC | EAPI-LEAF4A | 192.168.254.8/32 |
