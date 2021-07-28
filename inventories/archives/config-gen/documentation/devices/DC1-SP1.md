# DC1-SP1

## Management Interfaces

### Management Interfaces Summary

IPv4

| Management Interface | description | VRF | IP Address | Gateway |
| -------------------- | ----------- | --- | ---------- | ------- |
| Management0 | MANAGEMENT_VRF | mgt | 10.10.10.11/24 | 10.10.10.1 |

IPv6

| Management Interface | description | VRF | IPv6 Address | IPv6 Gateway |
| -------------------- | ----------- | --- | ------------ | ------------ |
| Management0 | MANAGEMENT_VRF | mgt | 1b11:3a00:22b0:0083::11/64  | 1b11:3a00:22b0:0083::1 |

### Management Interfaces Device Configuration

```eos
interface Management0
   description MANAGEMENT_VRF
   vrf mgt
   ip address 10.10.10.11/24
   ipv6 enable
   ipv6 address 1b11:3a00:22b0:0083::11/64
!
```

## Hardware Counters

No Hardware Counters defined

## Aliases

alias sib show ip bgp
alias sibs show ip bgp summary
alias siib show ip int brief
alias sir show ip route
alias senz show interface counter error | nz
alias snz show interface counter | nz
alias sps show port-channel summary
alias spd show port-channel %1 detail all
alias sqnz show interface counter queue | nz
alias srnz show interface counter rate | nz
alias smac show mac address-table dynamic
alias sarp show ip arp
alias copp show policy-map copp copp-system-policy
alias help
10 bash echo -e "sib  : show ip bgp\nsibs : show ip bgp summary\nsiib : show ip int brief\nsir  : show ip route\nsenz : show interface counter error | nz\nsnz   : show interface counter | nz\nsps  : show port-channel summary\nspd  : show port-channel detail all\nsqnz : show interface counter queue | nz\nsrnz : show interface counter rate | nz\nsmac : show mac address-table dynamic\nsarp : show ip arp\ncopp : show policy-map copp copp-system-policy\ninfo : version, serial and mlag"
alias info
10 bash SERIAL=$(FastCli -p 15 -c 'show version' | grep Serial | tr -s ' ' | cut -d ' ' -f 3 | tr -d '\r');echo -e "SN : $SERIAL"
20 bash VERSION=$(FastCli -p 15 -c 'show version' | grep image | tr -s ' ' | cut -d ' ' -f 4 | tr -d '\r');echo -e "EOS VERSION : $VERSION"
30 bash DOMAIN=$(FastCli -p 15 -c 'show mlag' | grep domain | tr -s ' ' | cut -d ' ' -f 3 | tr -d '\r');echo -e "MLAG DOMAIN : $DOMAIN"
40 bash STATE=$(FastCli -p 15 -c 'show mlag' | grep state | tr -s ' ' | cut -d ' ' -f 3 | tr -d '\r');echo -e "MLAG STATE : $STATE"

!
## TerminAttr Daemon

### TerminAttr Daemon Summary

| CV Compression | Ingest gRPC URL | Ingest Authentication Key | Smash Excludes | Ingest Exclude | Ingest VRF |  NTP VRF |
| -------------- | --------------- | ------------------------- | -------------- | -------------- | ---------- | -------- |
| gzip | 10.10.10.8:9910,10.10.10.9:9910,10.10.10.10:9910 | magickey | ale,flexCounter,hardware,kni,pulse,strata | /Sysdb/cell/1/agent,/Sysdb/cell/2/agent | mgt | mgt |

### TerminAttr Daemon Device Configuration

```eos
daemon TerminAttr
   exec /usr/bin/TerminAttr -ingestgrpcurl=10.10.10.8:9910,10.10.10.9:9910,10.10.10.10:9910 -cvcompression=gzip -ingestauth=key,magickey -smashexcludes=ale,flexCounter,hardware,kni,pulse,strata -ingestexclude=/Sysdb/cell/1/agent,/Sysdb/cell/2/agent -ingestvrf=mgt -taillogs
   no shutdown
!
```

## IP DHCP Relay

IP DHCP Relay not defined

## Internal VLAN allocation Policy

### Internal VLAN Allocation Policy Summary

**Default Allocation Policy**

| Policy Allocation | Range Beginning | Range Ending |
| ------------------| --------------- | ------------ |
| ascending | 1006 | 4094 |


## IP IGMP Snooping


## Logging

### Logging Servers and Features Summary

| Type | Level |
| -----| ----- |
| Console | debugging |
| Buffer | informational  |
| Trap | informational |

| VRF | Source Interface |
| --- | ---------------- |
| mgt | Management0 |

| VRF | Hosts |
| --- | ---------------- |
| mgt | 10.10.10.7 |

### Logging Servers and Features Device Configuration

```eos
logging console debugging
logging buffered 1000000 informational
logging trap informational
logging vrf mgt source-interface Management0
logging vrf mgt host 10.10.10.7
!
```

## Domain Lookup


### DNS Domain Lookup Summary

| Source interface | vrf |
| ---------------- | --- |
| Management0 | mgt  |

### DNS Domain Lookup Device Configuration

```eos
ip domain lookup vrf mgt source-interface Management0
!
```

## Name Servers

### Name Servers Summary

| Name Server | Source VRF |
| ----------- | ---------- |
| 10.10.128.10 | mgt |
| 10.10.129.10 | mgt |

### Name Servers Device Configuration

```eos
ip name-server vrf mgt 10.10.128.10
ip name-server vrf mgt 10.10.129.10
!
```

## DNS Domain


### DNS domain: test.local

### DNS Domain Device Configuration

```eos
dns domain test.local
!
```

## NTP

### NTP Summary

Local Interface: Management0

VRF: mgt


| Node | Primary |
| ---- | ------- |
| 10.10.111.1 | true |
| 10.10.111.2 | - |

### NTP Device Configuration

```eos
ntp local-interface vrf mgt Management0
ntp server vrf mgt 10.10.111.1 prefer
ntp server vrf mgt 10.10.111.2
!
```

## Router L2 VPN

Router L2 VPN not defined

## SFlow

### SFlow Summary

| VRF | SFlow Source Interface | SFlow Destination | Port |
| --- | ---------------------- | ----------------- | ---- |
| GRT | - | 10.10.111.3 | 6343  |
| GRT | Loopback0 | - | - |

sFlow Sample Rate: 1000

sFlow is enabled.

### SFlow Device Configuration

```eos
sflow sample 1000
sflow destination 10.10.111.3
sflow source-interface Loopback0
sflow run
!
```

## Spanning Tree

Spanning-Tree Not Defined


### TACACS Servers

| VRF | TACACS Servers |
| --- | ---------------|
|  mgt | 10.10.10.157 |
|  mgt | 10.10.10.249 |

### TACACS Servers Device Configuration

```eos
tacacs-server host 10.10.10.157 vrf mgt  key 7 071B245F5A 
tacacs-server host 10.10.10.249 vrf mgt  key 7 071B245F5A 
!
```


### IP TACACS Source Interfaces

| VRF | Source Interface Name |
| --- | --------------- |
 mgt |Management0 |

### IP TACACS Source Interfaces Device Configuration

```eos
ip tacacs vrf mgt source-interface Management0
!
```


### AAA Server Groups

| Server Group Name | Type  | VRF | IP address |
| ------------------| ----- | --- | ---------- |
| TACACS | tacacs+ |  mgt | 10.10.10.157 |
| TACACS | tacacs+ |  mgt | 10.10.10.249 |

### AAA Server Groups Device Configuration

```eos
aaa group server tacacs+ TACACS
   server 10.10.10.157 vrf mgt
   server 10.10.10.249 vrf mgt
!
```

## AAA Authentication

### AAA Authentication Summary

| Type | Sub-type | User Stores |
| ---- | -------- | ---------- |
| Login | Default | group TACACS local |
| Login | Serial-console | local |

### AAA Authentication Device Configuration

```eos
aaa authentication login default group TACACS local
aaa authentication login serial-console local
!
```

## AAA Authorization

### AAA Authorization Summary

| Type | User Stores |
| ---- | ----------- |
| Exec | group TACACS local |

Authorization for configuration commands is enabled.

### AAA Authorization Device Configuration

```eos
aaa authorization exec default group TACACS local
!
```

## AAA Accounting

### AAA Accounting Summary

| Type | Sub-type | Record | Accounting Stores | Logging |
| ---- | -------- | ------ |------------------ | ------- |
| Exec | - | start-stop | TACACS | - |
| Commands | all | start-stop | TACACS  | True  |
| Commands | 0 | start-stop |  -  | True  |

### AAA Accounting Device Configuration

```eos
aaa accounting exec default start-stop group TACACS
aaa accounting commands all default start-stop group TACACS logging
aaa accounting commands 0 default start-stop logging
no aaa root
!
```

## Local Users

### Local Users Summary

| User | Privilege | role |
| ---- | --------- | ---- |
| admin | 15 | network-admin |
| ansible | 15 | network-admin |
| cvpadmin | 15 | network-admin |

### Local Users Device Configuration

```eos
username admin privilege 15 role network-admin secret sha512 $6$.I7/ZR/zlLIUv8fr$vR/JvLTbq5amMt6Y1SE4CKlPDv/AzJYlFYHkUZ17BDovm0Oi4aLdBULe1EmZ0Y9xKjVLMKpxCSKmlrAioDxbQ0
username ansible privilege 15 role network-admin secret sha512 $6$.I7/ZR/zlLIUv8fr$vR/JvLTbq5amMt6Y1SE4CKlPDv/AzJYlFYHkUZ17BDovm0Oi4aLdBULe1EmZ0Y9xKjVLMKpxCSKmlrAioDxbQ0
username cvpadmin privilege 15 role network-admin secret sha512 $6$.I7/ZR/zlLIUv8fr$vR/JvLTbq5amMt6Y1SE4CKlPDv/AzJYlFYHkUZ17BDovm0Oi4aLdBULe1EmZ0Y9xKjVLMKpxCSKmlrAioDxbQ0
!
```

## VLANs

No VLANs defined

## VRF Instances

### VRF Instances Summary

| VRF Name | IP Routing |
| -------- | ---------- |
| mgt |  disabled |

### VRF Instances Device Configuration

```eos
vrf instance mgt
!
```

## Port-Channel Interfaces

No Port-Channels defined

## Ethernet Interfaces

### Ethernet Interfaces Summary

| Interface | Description | MTU | Type | Mode | Allowed VLANs (Trunk) | Trunk Group | VRF | IP Address | Channel-Group ID | Channel-Group Type |
| --------- | ----------- | --- | ---- | ---- | --------------------- | ----------- | --- | ---------- | ---------------- | ------------------ |
| Ethernet3/1/1 | P2P_LINK_TO_BL1_Ethernet3/49/1 | 9214 | routed | access | - | - | - | 10.50.0.1/31 | - | - |
| Ethernet3/7/1 | P2P_LINK_TO_CL1_Ethernet49/1 | 9214 | routed | access | - | - | - | 10.50.0.13/31 | - | - |
| Ethernet3/8/1 | P2P_LINK_TO_CL3_Ethernet49/1 | 9214 | routed | access | - | - | - | 10.50.1.25/31 | - | - |
| Ethernet3/9/1 | P2P_LINK_TO_CL5_Ethernet49/1 | 9214 | routed | access | - | - | - | 10.50.0.37/31 | - | - |
| Ethernet3/10/1 | P2P_LINK_TO_CL7_Ethernet49/1 | 9214 | routed | access | - | - | - | 10.50.0.49/31 | - | - |
| Ethernet4/1/1 | P2P_LINK_TO_BL1_Ethernet3/49/1 | 9214 | routed | access | - | - | - | 10.50.2.7/31 | - | - |
| Ethernet4/7/1 | P2P_LINK_TO_CL2_Ethernet49/1 | 9214 | routed | access | - | - | - | 10.50.0.19/31 | - | - |
| Ethernet4/8/1 | P2P_LINK_TO_CL4_Ethernet49/1 | 9214 | routed | access | - | - | - | 10.50.0.31/31 | - | - |
| Ethernet4/9/1 | P2P_LINK_TO_CL6_Ethernet49/1 | 9214 | routed | access | - | - | - | 10.50.0.43/31 | - | - |
| Ethernet4/10/1 | P2P_LINK_TO_CL8_Ethernet49/1 | 9214 | routed | access | - | - | - | 10.50.0.55/31 | - | - |

*Inherited from Port-Channel Interface

### Ethernet Interfaces Device Configuration

```eos
interface Ethernet3/1/1
   description P2P_LINK_TO_BL1_Ethernet3/49/1
   mtu 9214
   no switchport
   ip address 10.50.0.1/31
   ipv6 address 1b11:3a00:22b0:0088::1/127
   ipv6 nd ra disabled
   pim ipv4 sparse-mode
!
interface Ethernet3/7/1
   description P2P_LINK_TO_CL1_Ethernet49/1
   mtu 9214
   no switchport
   ip address 10.50.0.13/31
   ipv6 address 1b11:3a00:22b0:0088::13/127
   pim ipv4 sparse-mode
!
interface Ethernet3/8/1
   description P2P_LINK_TO_CL3_Ethernet49/1
   mtu 9214
   no switchport
   ip address 10.50.1.25/31
   ipv6 address 1b11:3a00:22b0:0088::25/127
   pim ipv4 sparse-mode
!
interface Ethernet3/9/1
   description P2P_LINK_TO_CL5_Ethernet49/1
   mtu 9214
   no switchport
   ip address 10.50.0.37/31
   ipv6 address 1b11:3a00:22b0:0088::37/127
   pim ipv4 sparse-mode
!
interface Ethernet3/10/1
   description P2P_LINK_TO_CL7_Ethernet49/1
   mtu 9214
   no switchport
   ip address 10.50.0.49/31
   ipv6 address 1b11:3a00:22b0:0088::49/127
   pim ipv4 sparse-mode
!
interface Ethernet4/1/1
   description P2P_LINK_TO_BL1_Ethernet3/49/1
   mtu 9214
   no switchport
   ip address 10.50.2.7/31
   ipv6 address 1b11:3a00:22b0:0088::7/127
   pim ipv4 sparse-mode
!
interface Ethernet4/7/1
   description P2P_LINK_TO_CL2_Ethernet49/1
   mtu 9214
   no switchport
   ip address 10.50.0.19/31
   ipv6 address 1b11:3a00:22b0:0088::2/127
   pim ipv4 sparse-mode
!
interface Ethernet4/8/1
   description P2P_LINK_TO_CL4_Ethernet49/1
   mtu 9214
   no switchport
   ip address 10.50.0.31/31
   ipv6 address 1b11:3a00:22b0:0088::31/127
   pim ipv4 sparse-mode
!
interface Ethernet4/9/1
   description P2P_LINK_TO_CL6_Ethernet49/1
   mtu 9214
   no switchport
   ip address 10.50.0.43/31
   ipv6 address 1b11:3a00:22b0:0088::43/127
   pim ipv4 sparse-mode
!
interface Ethernet4/10/1
   description P2P_LINK_TO_CL8_Ethernet49/1
   mtu 9214
   no switchport
   ip address 10.50.0.55/31
   ipv6 address 1b11:3a00:22b0:0088::55/127
   ip ospf network point-to-point
   ip ospf area 0.0.0.0
   isis enable EVPN_UNDERLAY
   isis metric 50
   isis network point-to-point
   pim ipv4 sparse-mode
!
```

## Loopback Interfaces

### Loopback Interfaces Summary

IPv4

| Interface | Description | VRF | IP Address |
| --------- | ----------- | --- | ---------- |
| Loopback0 | ROUTER-ID | Global Routing Table | 10.50.64.11/32 |

IPv6

| Interface | Description | VRF | IPv6 Address |
| --------- | ----------- | --- | ------------ |
| Loopback0 | ROUTER-ID | Global Routing Table | 1b11:3a00:22b0:0082::11/128 |

### Loopback Interfaces Device Configuration

```eos
interface Loopback0
   description ROUTER-ID
   ip address 10.50.64.11/32
   ipv6 enable
   ipv6 address 1b11:3a00:22b0:0082::11/128
!
```

## VLAN Interfaces

No VLAN interfaces defined

## VXLAN Interface

No VXLAN interface defined

## Virtual Router MAC Address & Virtual Source NAT


## IPv6 Extended Access-lists

IPv6 Extended Access-lists not defined

## IPv6 Standard Access-lists

IPv6 Standard Access-lists not defined

## Extended Access-lists

Extended Access-lists not defined

## Standard Access-lists

### Standard Access-lists Summary

**ACL-API:**

| Sequence | Action |
| -------- | ------ |
| 10 | remark ACL to restrict access to switch API to CVP and Ansible |
| 20 | permit host 10.10.10.7 |
| 30 | permit host 10.10.10.8 |
| 40 | permit host 10.10.10.9 |
| 50 | permit host 10.10.10.9 |

**ACL-SSH:**

| Sequence | Action |
| -------- | ------ |
| 10 | remark ACL to restrict access RFC1918 addresses |
| 20 | permit 10.0.0.0/8 |
| 30 | permit 172.16.0.0/12 |
| 40 | permit 192.168.0.0/16 |

**ACL-SSH-VRF:**

| Sequence | Action |
| -------- | ------ |
| 10 | remark ACL to restrict access RFC1918 addresses |
| 20 | permit 10.0.0.0/8 |
| 30 | permit 172.16.0.0/12 |
| 40 | permit 192.168.0.0/16 |

### Standard Access-lists Device Configuration

```eos
ip access-list standard ACL-API
   10 remark ACL to restrict access to switch API to CVP and Ansible
   20 permit host 10.10.10.7
   30 permit host 10.10.10.8
   40 permit host 10.10.10.9
   50 permit host 10.10.10.9
!
ip access-list standard ACL-SSH
   10 remark ACL to restrict access RFC1918 addresses
   20 permit 10.0.0.0/8
   30 permit 172.16.0.0/12
   40 permit 192.168.0.0/16
!
ip access-list standard ACL-SSH-VRF
   10 remark ACL to restrict access RFC1918 addresses
   20 permit 10.0.0.0/8
   30 permit 172.16.0.0/12
   40 permit 192.168.0.0/16
!
```

## Static Routes

### Static Routes Summary

| VRF | Destination Prefix | Fowarding Address / Interface |
| --- | ------------------ | ----------------------------- |
| mgt | 0.0.0.0/0 | 10.10.10.1 |

### Static Routes Device Configuration

```eos
ip route vrf mgt 0.0.0.0/0 10.10.10.1
!
```

## Event Handler

No Event Handler Defined

## IP Routing

### IP Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| mgt | False |

### IP Routing Device Configuration

```eos
ip routing
no ip routing vrf mgt
!
```

## Prefix Lists

### Prefix Lists Summary

**PL-LOOPBACKS:**

| Sequence | Action |
| -------- | ------ |
| 10 | permit 10.50.64.0/23 eq 32 |

### Prefix Lists Device Configuration

```eos
ip prefix-list PL-LOOPBACKS
   seq 10 permit 10.50.64.0/23 eq 32
!
```

## IPv6 Prefix Lists

### IPv6 Prefix Lists Summary

**PL-IPV6-LOOPBACKS:**

| Sequence | Action |
| -------- | ------ |
| 10 | permit 1b11:3a00:22b0:0092::/64 eq 128 |

### IPv6 Prefix Lists Device Configuration

```eos
ipv6 prefix-list PL-IPV6-LOOPBACKS
   seq 10 permit 1b11:3a00:22b0:0092::/64 eq 128
!
```

## IPv6 Routing

### IPv6 Routing Summary

| VRF | IPv6 Routing Enabled |
| --- | -------------------- |
| mgt | False |

### IPv6 Routing Device Configuration

```eos
ipv6 unicast-routing
!
```

## MLAG

MLAG not defined

## Community Lists

Community Lists not defined

## Route Maps

### Route Maps Summary

**RM-CONN-2-BGP:**

| Sequence | Type | Match and/or Set |
| -------- | ---- | ---------------- |
| 10 | permit | match   |
| 10 | permit | match   |
| 10 | permit | match   |
| 10 | permit | match - |
| 10 | permit | match - |
| 10 | permit | match a |
| 10 | permit | match A |
| 10 | permit | match B |
| 10 | permit | match C |
| 10 | permit | match d |
| 10 | permit | match d |
| 10 | permit | match e |
| 10 | permit | match e |
| 10 | permit | match f |
| 10 | permit | match i |
| 10 | permit | match i |
| 10 | permit | match i |
| 10 | permit | match K |
| 10 | permit | match l |
| 10 | permit | match L |
| 10 | permit | match L |
| 10 | permit | match O |
| 10 | permit | match O |
| 10 | permit | match p |
| 10 | permit | match p |
| 10 | permit | match P |
| 10 | permit | match P |
| 10 | permit | match r |
| 10 | permit | match r |
| 10 | permit | match s |
| 10 | permit | match s |
| 10 | permit | match s |
| 10 | permit | match S |
| 10 | permit | match t |
| 10 | permit | match x |
| 20 | permit | match 6 |
| 20 | permit | match 6 |
| 20 | permit | match   |
| 20 | permit | match   |
| 20 | permit | match   |
| 20 | permit | match - |
| 20 | permit | match - |
| 20 | permit | match - |
| 20 | permit | match a |
| 20 | permit | match A |
| 20 | permit | match B |
| 20 | permit | match C |
| 20 | permit | match d |
| 20 | permit | match d |
| 20 | permit | match e |
| 20 | permit | match e |
| 20 | permit | match f |
| 20 | permit | match i |
| 20 | permit | match i |
| 20 | permit | match i |
| 20 | permit | match I |
| 20 | permit | match K |
| 20 | permit | match l |
| 20 | permit | match L |
| 20 | permit | match L |
| 20 | permit | match O |
| 20 | permit | match O |
| 20 | permit | match p |
| 20 | permit | match p |
| 20 | permit | match P |
| 20 | permit | match P |
| 20 | permit | match P |
| 20 | permit | match r |
| 20 | permit | match r |
| 20 | permit | match s |
| 20 | permit | match s |
| 20 | permit | match s |
| 20 | permit | match S |
| 20 | permit | match t |
| 20 | permit | match v |
| 20 | permit | match V |
| 20 | permit | match x |

### Route Maps Device Configuration

```eos
route-map RM-CONN-2-BGP permit 10
   match  
   match  
   match  
   match -
   match -
   match a
   match A
   match B
   match C
   match d
   match d
   match e
   match e
   match f
   match i
   match i
   match i
   match K
   match l
   match L
   match L
   match O
   match O
   match p
   match p
   match P
   match P
   match r
   match r
   match s
   match s
   match s
   match S
   match t
   match x
!
route-map RM-CONN-2-BGP permit 20
   match 6
   match 6
   match  
   match  
   match  
   match -
   match -
   match -
   match a
   match A
   match B
   match C
   match d
   match d
   match e
   match e
   match f
   match i
   match i
   match i
   match I
   match K
   match l
   match L
   match L
   match O
   match O
   match p
   match p
   match P
   match P
   match P
   match r
   match r
   match s
   match s
   match s
   match S
   match t
   match v
   match V
   match x
!
```

## Peer Filters

### Peer Filters Summary

**LEAF-AS-RANGE:**

| Sequence | Match |
| -------- | ----- |
| 10 | as-range 65001-65200 result accept |

### Peer Filters Device Configuration

```eos
peer-filter LEAF-AS-RANGE
   10 match as-range 65001-65200 result accept
!
```

## Router BFD

### Router BFD Multihop Summary

| Interval | Minimum RX | Multiplier |
| -------- | ---------- | ---------- |
| 1200 | 1200 | 3 |

### Router BFD Multihop Device Configuration

```eos
router bfd
   multihop interval 1200 min-rx 1200 multiplier 3
!
```

## Router BGP

### Router BGP Summary

| BGP AS | Router ID |
| ------ | --------- |
| 65000|  10.50.64.11 |

| BGP Tuning |
| ---------- |
| no bgp default ipv4-unicast |
| update wait-install |
| update wait-for-convergence |
| distance bgp 20 200 200 |
| maximum-paths 4 ecmp 4 |

### Router BGP Peer Groups

**EVPN-OVERLAY**:

| Settings | Value |
| -------- | ----- |
| listen range prefix | 10.50.64.0/23 |
| next-hop unchanged | true |
| source | Loopback0 |
| bfd | true |
| ebgp multihop | 5 |
| send community | true |
| maximum routes | 0 (no limit) |
**IPV4-UNDERLAY**:

| Settings | Value |
| -------- | ----- |
| listen range prefix | 10.50.0.0/21 |
| send community | true |
| maximum routes | 12000 |
**IPV6-UNDERLAY**:

| Settings | Value |
| -------- | ----- |
| listen range prefix | 1b11:3a00:22b0:0088::/64 |
| send community | true |
| maximum routes | 12000 |

### Router BGP EVPN Address Family

#### Router BGP EVPN MAC-VRFs



#### Router BGP EVPN VRFs


### Router BGP Device Configuration

```eos
router bgp 65000
   router-id 10.50.64.11
   no bgp default ipv4-unicast
   update wait-install
   update wait-for-convergence
   distance bgp 20 200 200
   maximum-paths 4 ecmp 4
   bgp listen range 10.50.64.0/23 peer-group EVPN-OVERLAY peer-filter LEAF-AS-RANGE
   bgp listen range 10.50.0.0/21 peer-group IPV4-UNDERLAY peer-filter LEAF-AS-RANGE
   bgp listen range 1b11:3a00:22b0:0088::/64 peer-group IPV6-UNDERLAY peer-filter LEAF-AS-RANGE
   neighbor EVPN-OVERLAY peer group
   neighbor EVPN-OVERLAY next-hop-unchanged
   neighbor EVPN-OVERLAY update-source Loopback0
   neighbor EVPN-OVERLAY bfd
   neighbor EVPN-OVERLAY ebgp-multihop 5
   neighbor EVPN-OVERLAY password 7 SLh4FyuEQ+GWSmzJyJ3O8A==
   neighbor EVPN-OVERLAY send-community
   neighbor EVPN-OVERLAY maximum-routes 0
   neighbor IPV4-UNDERLAY peer group
   neighbor IPV4-UNDERLAY password 7 SLh4FyuEQ+GWSmzJyJ3O8A==
   neighbor IPV4-UNDERLAY send-community
   neighbor IPV4-UNDERLAY maximum-routes 12000
   neighbor IPV6-UNDERLAY peer group
   neighbor IPV6-UNDERLAY password 7 SLh4FyuEQ+GWSmzJyJ3O8A==
   neighbor IPV6-UNDERLAY send-community
   neighbor IPV6-UNDERLAY maximum-routes 12000
   redistribute connected route-map RM-CONN-2-BGP
   !
   address-family evpn
      neighbor EVPN-OVERLAY activate
   !
   address-family ipv4
      neighbor IPV4-UNDERLAY activate
   !
   address-family ipv4 multicast
      neighbor IPV4-UNDERLAY activate
   !
   address-family ipv6
      neighbor IPV6-UNDERLAY activate
!
```

## Router Multicast

### IP Router Multicast Summary
Routing for IPv4 multicast is enabled.

### Router Multicast Device Configuration

```eos
router multicast
   ipv4
      routing
!
```


## Router PIM Sparse Mode

### IP Sparse Mode Information

### IP Rendez-vous Information

| Rendez-vous Point Address | Group Address |
| ------------------------- | ------------- |
| 10.238.1.161 | 239.12.12.12/32 |
| 10.238.1.161 | 239.12.12.13/32 |
| 10.238.1.161 | 239.12.12.14/32 |
| 10.238.1.161 | 239.12.12.16/32 |
| 10.238.1.161 | 239.12.12.20/32 |
| 10.238.1.161 | 239.12.12.21/32 |



### Router Multicast Device Configuration

```eos
router pim sparse-mode
   ipv4
      rp address 10.238.1.161 239.12.12.12/32
      rp address 10.238.1.161 239.12.12.13/32
      rp address 10.238.1.161 239.12.12.14/32
      rp address 10.238.1.161 239.12.12.16/32
      rp address 10.238.1.161 239.12.12.20/32
      rp address 10.238.1.161 239.12.12.21/32
!
```

## VM Tracer Sessions

No VM tracer session defined

## Management Security

### Management Security

   Management Security password encryption is common.

### Management Security Configuration

```eos
management security
   password encryption-key common
!
```

## Platform

No Platform parameters defined

## Router ISIS

### Router ISIS Summary

| Settings | Value |
| -------- | ----- |
| Instance | EVPN_UNDERLAY |
| Net-ID | 49.0001.0001.0001.0001.00 |
| Type | level-2 |
| Address Family | ipv4 unicast |

### Router ISIS Device Configuration

```eos
router isis EVPN_UNDERLAY
   net 49.0001.0001.0001.0001.00
   is-type level-2
   router-id ipv4 192.168.255.3
   log-adjacency-changes
   !
   address-family ipv4 unicast
      maximum-paths 2
   !
!
```

