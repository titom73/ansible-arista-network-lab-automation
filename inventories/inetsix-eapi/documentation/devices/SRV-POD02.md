# SRV-POD02
# Table of Contents

- [Management](#management)
  - [Management Interfaces](#management-interfaces)
  - [Name Servers](#name-servers)
  - [Clock Settings](#clock-settings)
  - [Management SSH](#management-ssh)
  - [Management Console](#management-console)
  - [Management API HTTP](#management-api-http)
- [Authentication](#authentication)
  - [Local Users](#local-users)
  - [AAA Authorization](#aaa-authorization)
- [Monitoring](#monitoring)
- [Internal VLAN Allocation Policy](#internal-vlan-allocation-policy)
  - [Internal VLAN Allocation Policy Summary](#internal-vlan-allocation-policy-summary)
  - [Internal VLAN Allocation Policy Configuration](#internal-vlan-allocation-policy-configuration)
- [VLANs](#vlans)
  - [VLANs Summary](#vlans-summary)
  - [VLANs Device Configuration](#vlans-device-configuration)
- [Interfaces](#interfaces)
  - [Ethernet Interfaces](#ethernet-interfaces)
  - [VLAN Interfaces](#vlan-interfaces)
- [Routing](#routing)
  - [Service Routing Protocols Model](#service-routing-protocols-model)
  - [IP Routing](#ip-routing)
  - [IPv6 Routing](#ipv6-routing)
  - [Static Routes](#static-routes)
- [Multicast](#multicast)
  - [IP IGMP Snooping](#ip-igmp-snooping)
- [Filters](#filters)
- [ACL](#acl)
- [VRF Instances](#vrf-instances)
  - [VRF Instances Summary](#vrf-instances-summary)
  - [VRF Instances Device Configuration](#vrf-instances-device-configuration)
- [Quality Of Service](#quality-of-service)

# Management

## Management Interfaces

### Management Interfaces Summary

#### IPv4

| Management Interface | description | Type | VRF | IP Address | Gateway |
| -------------------- | ----------- | ---- | --- | ---------- | ------- |
| Management1 | oob_management | oob | MGMT | 10.73.254.42/24 | 10.73.254.253 |

#### IPv6

| Management Interface | description | Type | VRF | IPv6 Address | IPv6 Gateway |
| -------------------- | ----------- | ---- | --- | ------------ | ------------ |
| Management1 | oob_management | oob | MGMT | -  | - |

### Management Interfaces Device Configuration

```eos
!
interface Management1
   description oob_management
   no shutdown
   vrf MGMT
   ip address 10.73.254.42/24
```

## Name Servers

### Name Servers Summary

| Name Server | Source VRF |
| ----------- | ---------- |
| 10.73.254.253 | MGMT |
| 10.73.1.254 | MGMT |

### Name Servers Device Configuration

```eos
ip name-server vrf MGMT 10.73.1.254
ip name-server vrf MGMT 10.73.254.253
```

## Clock Settings

### Clock Timezone Settings

Clock Timezone is set to **Europe/Paris**.

### Clock Configuration

```eos
!
clock timezone Europe/Paris
```

## Management SSH


 ### SSH timeout and management

| Idle Timeout | SSH Management |
| ------------ | -------------- |
| default |  Enabled  |

### Max number of SSH sessions limit and per-host limit

| Connection Limit | Max from a single Host |
| ---------------- | ---------------------- |
| - | - |

### Ciphers and algorithms

| Ciphers | Key-exchange methods | MAC algorithms | Hostkey server algorithms |
|---------|----------------------|----------------|---------------------------|
| default | default | default | default |

### VRFs

| VRF | Status |
| --- | ------ |
| MGMT |  Enabled  |

### Management SSH Configuration

```eos
!
management ssh
   no shutdown
   vrf MGMT
      no shutdown
```

## Management Console

### Management Console Timeout

Management Console Timeout is set to **0** minutes.

### Management Console Configuration

```eos
!
management console
   idle-timeout 0
```

## Management API HTTP

### Management API HTTP Summary

| HTTP | HTTPS |
| ---------- | ---------- |
| default | true |

### Management API VRF Access

| VRF Name | IPv4 ACL | IPv6 ACL |
| -------- | -------- | -------- |
| MGMT | - | - |


### Management API HTTP Configuration

```eos
!
management api http-commands
   protocol https
   no shutdown
   !
   vrf MGMT
      no shutdown
```

# Authentication

## Local Users

### Local Users Summary

| User | Privilege | Role |
| ---- | --------- | ---- |
| admin | 15 | network-admin |
| ansible | 15 | network-admin |
| cvpadmin | 15 | network-admin |
| demo | 15 | network-admin |

### Local Users Device Configuration

```eos
!
username admin privilege 15 role network-admin nopassword
username ansible privilege 15 role network-admin secret sha512 $6$Dzu11L7yp9j3nCM9$FSptxMPyIL555OMO.ldnjDXgwZmrfMYwHSr0uznE5Qoqvd9a6UdjiFcJUhGLtvXVZR1r.A/iF5aAt50hf/EK4/
username cvpadmin privilege 15 role network-admin secret sha512 $6$rZKcbIZ7iWGAWTUM$TCgDn1KcavS0s.OV8lacMTUkxTByfzcGlFlYUWroxYuU7M/9bIodhRO7nXGzMweUxvbk8mJmQl8Bh44cRktUj.
username demo privilege 15 role network-admin secret sha512 $6$Dzu11L7yp9j3nCM9$FSptxMPyIL555OMO.ldnjDXgwZmrfMYwHSr0uznE5Qoqvd9a6UdjiFcJUhGLtvXVZR1r.A/iF5aAt50hf/EK4/
```

## AAA Authorization

### AAA Authorization Summary

| Type | User Stores |
| ---- | ----------- |
| Exec | local |

Authorization for configuration commands is disabled.

### AAA Authorization Device Configuration

```eos
!
aaa authorization exec default local
!
```

# Monitoring

# Internal VLAN Allocation Policy

## Internal VLAN Allocation Policy Summary

| Policy Allocation | Range Beginning | Range Ending |
| ------------------| --------------- | ------------ |
| ascending | 1006 | 1199 |

## Internal VLAN Allocation Policy Configuration

```eos
!
vlan internal order ascending range 1006 1199
```

# VLANs

## VLANs Summary

| VLAN ID | Name | Trunk Groups |
| ------- | ---- | ------------ |
| 110 | PR01-DEMO | - |
| 111 | PR01-TRUST | - |
| 112 | PR01-TRUST | - |
| 131 | PURE_TYPE05_VL01 | - |
| 132 | PURE_TYPE05_VL02 | - |
| 201 | B-ELAN-201 | - |
| 301 | CENTRAL_LAN_01 | - |
| 302 | CENTRAL_LAN_02 | - |

## VLANs Device Configuration

```eos
!
vlan 110
   name PR01-DEMO
!
vlan 111
   name PR01-TRUST
!
vlan 112
   name PR01-TRUST
!
vlan 131
   name PURE_TYPE05_VL01
!
vlan 132
   name PURE_TYPE05_VL02
!
vlan 201
   name B-ELAN-201
!
vlan 301
   name CENTRAL_LAN_01
!
vlan 302
   name CENTRAL_LAN_02
```

# Interfaces

## Ethernet Interfaces

### Ethernet Interfaces Summary

#### L2

| Interface | Description | Mode | VLANs | Native VLAN | Trunk Group | Channel-Group |
| --------- | ----------- | ---- | ----- | ----------- | ----------- | ------------- |
| Ethernet1 |   | trunk | 1-4000 | 1 | - | - |

*Inherited from Port-Channel Interface

### Ethernet Interfaces Device Configuration

```eos
!
interface Ethernet1
   logging event link-status
   no shutdown
   switchport
   switchport trunk allowed vlan 1-4000
   switchport trunk native vlan 1
   switchport mode trunk
   spanning-tree portfast
```

## VLAN Interfaces

### VLAN Interfaces Summary

| Interface | Description | VRF |  MTU | Shutdown |
| --------- | ----------- | --- | ---- | -------- |
| Vlan110 |  SVI for Tenant A vlan 110  |  tenant_a_110  |  -  |  false  |
| Vlan112 |  SVI for Tenant A vlan 112  |  tenant_a_112  |  -  |  false  |
| Vlan132 |  SVI for Pure Type 05 vlan 132  |  pure_type5  |  -  |  false  |
| Vlan201 |  SVI for Tenant B vlan 201  |  tenant_b_201  |  -  |  false  |

#### IPv4

| Interface | VRF | IP Address | IP Address Virtual | IP Router Virtual Address | VRRP | ACL In | ACL Out |
| --------- | --- | ---------- | ------------------ | ------------------------- | ---- | ------ | ------- |
| Vlan110 |  tenant_a_110  |  10.1.10.2/24  |  -  |  -  |  -  |  -  |  -  |
| Vlan112 |  tenant_a_112  |  10.1.12.2/24  |  -  |  -  |  -  |  -  |  -  |
| Vlan132 |  pure_type5  |  10.1.32.2/24  |  -  |  -  |  -  |  -  |  -  |
| Vlan201 |  tenant_b_201  |  10.2.1.2/24  |  -  |  -  |  -  |  -  |  -  |


### VLAN Interfaces Device Configuration

```eos
!
interface Vlan110
   description SVI for Tenant A vlan 110
   no shutdown
   vrf tenant_a_110
   ip address 10.1.10.2/24
!
interface Vlan112
   description SVI for Tenant A vlan 112
   no shutdown
   vrf tenant_a_112
   ip address 10.1.12.2/24
!
interface Vlan132
   description SVI for Pure Type 05 vlan 132
   no shutdown
   vrf pure_type5
   ip address 10.1.32.2/24
!
interface Vlan201
   description SVI for Tenant B vlan 201
   no shutdown
   vrf tenant_b_201
   ip address 10.2.1.2/24
```

# Routing
## Service Routing Protocols Model

Multi agent routing protocol model enabled

```eos
!
service routing protocols model multi-agent
```

## IP Routing

### IP Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default | true|| MGMT | false |
| pure_type5 | true |
| tenant_a_110 | true |
| tenant_a_112 | true |
| tenant_b_201 | true |

### IP Routing Device Configuration

```eos
!
ip routing
no ip routing vrf MGMT
ip routing vrf pure_type5
ip routing vrf tenant_a_110
ip routing vrf tenant_a_112
ip routing vrf tenant_b_201
```
## IPv6 Routing

### IPv6 Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default | false || MGMT | false |
| pure_type5 | false |
| tenant_a_110 | false |
| tenant_a_112 | false |
| tenant_b_201 | false |


## Static Routes

### Static Routes Summary

| VRF | Destination Prefix | Next Hop IP             | Exit interface      | Administrative Distance       | Tag               | Route Name                    | Metric         |
| --- | ------------------ | ----------------------- | ------------------- | ----------------------------- | ----------------- | ----------------------------- | -------------- |
| tenant_a_110  | 0.0.0.0/0 |  10.1.10.254  |  -  |  1  |  -  |  -  |  - |
| tenant_a_112  | 0.0.0.0/0 |  10.1.12.254  |  -  |  1  |  -  |  -  |  - |
| pure_type5  | 0.0.0.0/0 |  10.1.32.254  |  -  |  1  |  -  |  -  |  - |

### Static Routes Device Configuration

```eos
!
ip route vrf tenant_a_110 0.0.0.0/0 10.1.10.254
ip route vrf tenant_a_112 0.0.0.0/0 10.1.12.254
ip route vrf pure_type5 0.0.0.0/0 10.1.32.254
```

# Multicast

## IP IGMP Snooping

### IP IGMP Snooping Summary

IGMP snooping is globally enabled.


### IP IGMP Snooping Device Configuration

```eos
```

# Filters

# ACL

# VRF Instances

## VRF Instances Summary

| VRF Name | IP Routing |
| -------- | ---------- |
| MGMT | disabled |
| pure_type5 | enabled |
| tenant_a_110 | enabled |
| tenant_a_112 | enabled |
| tenant_b_201 | enabled |

## VRF Instances Device Configuration

```eos
!
vrf instance MGMT
!
vrf instance pure_type5
!
vrf instance tenant_a_110
!
vrf instance tenant_a_112
!
vrf instance tenant_b_201
```

# Quality Of Service
