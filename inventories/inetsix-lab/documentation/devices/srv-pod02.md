# srv-pod02
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
  - [RADIUS Servers](#radius-servers)
  - [IP RADIUS Source Interfaces](#ip-radius-source-interfaces)
  - [AAA Server Groups](#aaa-server-groups)
  - [AAA Authentication](#aaa-authentication)
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
| Management0 | oob_management | oob | default | 10.73.252.42/24 | 10.73.254.1 |

#### IPv6

| Management Interface | description | Type | VRF | IPv6 Address | IPv6 Gateway |
| -------------------- | ----------- | ---- | --- | ------------ | ------------ |
| Management0 | oob_management | oob | default | -  | - |

### Management Interfaces Device Configuration

```eos
!
interface Management0
   description oob_management
   no shutdown
   ip address 10.73.252.42/24
```

## Name Servers

### Name Servers Summary

| Name Server | Source VRF |
| ----------- | ---------- |
| 10.73.254.253 | default |
| 10.73.1.254 | default |

### Name Servers Device Configuration

```eos
ip name-server vrf default 10.73.1.254
ip name-server vrf default 10.73.254.253
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
| default | Enabled |

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
| MGMT | Enabled |

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

| HTTP | HTTPS | Default Services |
| ---- | ----- | ---------------- |
| False | True | - |

### Management API VRF Access

| VRF Name | IPv4 ACL | IPv6 ACL |
| -------- | -------- | -------- |
| default | - | - |

### Management API HTTP Configuration

```eos
!
management api http-commands
   protocol https
   no shutdown
   !
   vrf default
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

## RADIUS Servers

### RADIUS Servers

| VRF | RADIUS Servers |
| --- | ---------------|
| MGMT | 10.73.252.252 |

### RADIUS Servers Device Configuration

```eos
!
radius-server host 10.73.252.252 vrf MGMT key 7 14031718180D242C757A60
```

## IP RADIUS Source Interfaces

### IP RADIUS Source Interfaces

| VRF | Source Interface Name |
| --- | --------------- |
| MGMT | Management0 |

### IP SOURCE Source Interfaces Device Configuration

```eos
!
ip radius vrf MGMT source-interface Management0
```

## AAA Server Groups

### AAA Server Groups Summary

| Server Group Name | Type  | VRF | IP address |
| ------------------| ----- | --- | ---------- |
| LAB_AAA | radius | MGMT | 10.73.252.252 |

### AAA Server Groups Device Configuration

```eos
!
aaa group server radius LAB_AAA
   server 10.73.252.252 vrf MGMT
```

## AAA Authentication

### AAA Authentication Summary

| Type | Sub-type | User Stores |
| ---- | -------- | ---------- |
| Login | default | group radius local |
| Login | console | local |

AAA Authentication on-failure log has been enabled

Policy local allow-nopassword-remote-login has been enabled.

### AAA Authentication Device Configuration

```eos
aaa authentication login default group radius local
aaa authentication login console local
aaa authentication enable default group radius local
aaa authentication policy on-failure log
aaa authentication policy local allow-nopassword-remote-login
!
```

## AAA Authorization

### AAA Authorization Summary

| Type | User Stores |
| ---- | ----------- |
| Exec | group radius local |

Authorization for configuration commands is disabled.

### AAA Authorization Privilege Levels Summary

| Privilege Level | User Stores |
| --------------- | ----------- |
| all | group radius local |

### AAA Authorization Device Configuration

```eos
aaa authorization exec default group radius local
aaa authorization commands all default group radius local
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
| 110 | pr01-demo | - |
| 111 | pr01-trust | - |
| 112 | pr01-trust | - |
| 131 | pure_type05_vl01 | - |
| 132 | pure_type05_vl02 | - |
| 201 | b-elan-201 | - |
| 301 | central_lan_01 | - |
| 302 | central_lan_02 | - |

## VLANs Device Configuration

```eos
!
vlan 110
   name pr01-demo
!
vlan 111
   name pr01-trust
!
vlan 112
   name pr01-trust
!
vlan 131
   name pure_type05_vl01
!
vlan 132
   name pure_type05_vl02
!
vlan 201
   name b-elan-201
!
vlan 301
   name central_lan_01
!
vlan 302
   name central_lan_02
```

# Interfaces

## Ethernet Interfaces

### Ethernet Interfaces Summary

#### L2

| Interface | Description | Mode | VLANs | Native VLAN | Trunk Group | Channel-Group |
| --------- | ----------- | ---- | ----- | ----------- | ----------- | ------------- |
| Ethernet1 |  - | trunk | 1-4000 | 1 | - | - |

*Inherited from Port-Channel Interface

### Ethernet Interfaces Device Configuration

```eos
!
interface Ethernet1
   no shutdown
   logging event link-status
   switchport trunk native vlan 1
   switchport trunk allowed vlan 1-4000
   switchport mode trunk
   switchport
   spanning-tree portfast
```

## VLAN Interfaces

### VLAN Interfaces Summary

| Interface | Description | VRF |  MTU | Shutdown |
| --------- | ----------- | --- | ---- | -------- |
| Vlan110 | SVI for Tenant A vlan 110 | tenant_a_110 | - | false |
| Vlan112 | SVI for Tenant A vlan 112 | tenant_a_112 | - | false |
| Vlan132 | SVI for Pure Type 05 vlan 132 | pure_type5 | - | false |
| Vlan201 | SVI for Tenant B vlan 201 | tenant_b_201 | - | false |

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
| default | true |
| MGMT | false |
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
| default | false |
| MGMT | false |
| pure_type5 | false |
| tenant_a_110 | false |
| tenant_a_112 | false |
| tenant_b_201 | false |

## Static Routes

### Static Routes Summary

| VRF | Destination Prefix | Next Hop IP             | Exit interface      | Administrative Distance       | Tag               | Route Name                    | Metric         |
| --- | ------------------ | ----------------------- | ------------------- | ----------------------------- | ----------------- | ----------------------------- | -------------- |
| tenant_a_110 | 0.0.0.0/0 | 10.1.10.254 | - | 1 | - | - | - |
| tenant_a_112 | 0.0.0.0/0 | 10.1.12.254 | - | 1 | - | - | - |
| pure_type5 | 0.0.0.0/0 | 10.1.32.254 | - | 1 | - | - | - |

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

| IGMP Snooping | Fast Leave | Interface Restart Query | Proxy | Restart Query Interval | Robustness Variable |
| ------------- | ---------- | ----------------------- | ----- | ---------------------- | ------------------- |
| Enabled | - | - | - | - | - |

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
