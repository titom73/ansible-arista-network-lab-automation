# TLS_M88

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
| TLS_M88 | ner | tls-m88-dist01 | 10.126.51.101/24 | VEOS-LAB | Provisioned |
| TLS_M88 | ner | tls-m88-dist02 | 10.126.51.102/24 | VEOS-LAB | Provisioned |
| TLS_M88 | nap | tls-m88-nap01a | 10.126.51.113/24 | VEOS-LAB | Provisioned |
| TLS_M88 | nap | tls-m88-nap01b | 10.126.51.114/24 | VEOS-LAB | Provisioned |
| TLS_M88 | ner_access | tls-m88-ner01a | 10.126.51.111/24 | VEOS-LAB | Provisioned |
| TLS_M88 | ner_access | tls-m88-ner01b | 10.126.51.112/24 | VEOS-LAB | Provisioned |

> Provision status is based on Ansible inventory declaration and do not represent real status from CloudVision.

## Fabric Switches with inband Management IP
| POD | Type | Node | Management IP | Inband Interface |
| --- | ---- | ---- | ------------- | ---------------- |

# Fabric Topology

| Type | Node | Node Interface | Peer Type | Peer Node | Peer Interface |
| ---- | ---- | -------------- | --------- | ----------| -------------- |
| ner | tls-m88-dist01 | Ethernet1 | ner_access | tls-m88-ner01a | Ethernet1 |
| ner | tls-m88-dist01 | Ethernet2 | ner_access | tls-m88-ner01b | Ethernet1 |
| ner | tls-m88-dist01 | Ethernet3 | nap | tls-m88-nap01a | Ethernet1 |
| ner | tls-m88-dist01 | Ethernet4 | nap | tls-m88-nap01b | Ethernet1 |
| ner | tls-m88-dist02 | Ethernet1 | ner_access | tls-m88-ner01a | Ethernet2 |
| ner | tls-m88-dist02 | Ethernet2 | ner_access | tls-m88-ner01b | Ethernet2 |
| ner | tls-m88-dist02 | Ethernet3 | nap | tls-m88-nap01a | Ethernet2 |
| ner | tls-m88-dist02 | Ethernet4 | nap | tls-m88-nap01b | Ethernet2 |
| nap | tls-m88-nap01a | Ethernet7 | mlag_peer | tls-m88-nap01b | Ethernet7 |
| nap | tls-m88-nap01a | Ethernet8 | mlag_peer | tls-m88-nap01b | Ethernet8 |
| ner_access | tls-m88-ner01a | Ethernet7 | mlag_peer | tls-m88-ner01b | Ethernet7 |
| ner_access | tls-m88-ner01a | Ethernet8 | mlag_peer | tls-m88-ner01b | Ethernet8 |

# Fabric IP Allocation

## Fabric Point-To-Point Links

| Uplink IPv4 Pool | Available Addresses | Assigned addresses | Assigned Address % |
| ---------------- | ------------------- | ------------------ | ------------------ |
| 10.88.1.0/24 | 256 | 16 | 6.25 % |

## Point-To-Point Links Node Allocation

| Node | Node Interface | Node IP Address | Peer Node | Peer Interface | Peer IP Address |
| ---- | -------------- | --------------- | --------- | -------------- | --------------- |
| tls-m88-dist01 | Ethernet1 | 10.88.1.40/31 | tls-m88-ner01a | Ethernet1 | 10.88.1.41/31 |
| tls-m88-dist01 | Ethernet2 | 10.88.1.44/31 | tls-m88-ner01b | Ethernet1 | 10.88.1.45/31 |
| tls-m88-dist01 | Ethernet3 | 10.88.1.48/31 | tls-m88-nap01a | Ethernet1 | 10.88.1.49/31 |
| tls-m88-dist01 | Ethernet4 | 10.88.1.52/31 | tls-m88-nap01b | Ethernet1 | 10.88.1.53/31 |
| tls-m88-dist02 | Ethernet1 | 10.88.1.42/31 | tls-m88-ner01a | Ethernet2 | 10.88.1.43/31 |
| tls-m88-dist02 | Ethernet2 | 10.88.1.46/31 | tls-m88-ner01b | Ethernet2 | 10.88.1.47/31 |
| tls-m88-dist02 | Ethernet3 | 10.88.1.50/31 | tls-m88-nap01a | Ethernet2 | 10.88.1.51/31 |
| tls-m88-dist02 | Ethernet4 | 10.88.1.54/31 | tls-m88-nap01b | Ethernet2 | 10.88.1.55/31 |

## Loopback Interfaces (BGP EVPN Peering)

| Loopback Pool | Available Addresses | Assigned addresses | Assigned Address % |
| ------------- | ------------------- | ------------------ | ------------------ |
| 10.88.254.0/24 | 256 | 6 | 2.35 % |

## Loopback0 Interfaces Node Allocation

| POD | Node | Loopback0 |
| --- | ---- | --------- |
| TLS_M88 | tls-m88-dist01 | 10.88.254.2/32 |
| TLS_M88 | tls-m88-dist02 | 10.88.254.3/32 |
| TLS_M88 | tls-m88-nap01a | 10.88.254.14/32 |
| TLS_M88 | tls-m88-nap01b | 10.88.254.15/32 |
| TLS_M88 | tls-m88-ner01a | 10.88.254.12/32 |
| TLS_M88 | tls-m88-ner01b | 10.88.254.13/32 |

## VTEP Loopback VXLAN Tunnel Source Interfaces (VTEPs Only)

| VTEP Loopback Pool | Available Addresses | Assigned addresses | Assigned Address % |
| --------------------- | ------------------- | ------------------ | ------------------ |
| 10.88.255.0/24 | 256 | 4 | 1.57 % |

## VTEP Loopback Node allocation

| POD | Node | Loopback1 |
| --- | ---- | --------- |
| TLS_M88 | tls-m88-nap01a | 10.88.255.14/32 |
| TLS_M88 | tls-m88-nap01b | 10.88.255.14/32 |
| TLS_M88 | tls-m88-ner01a | 10.88.255.12/32 |
| TLS_M88 | tls-m88-ner01b | 10.88.255.12/32 |
