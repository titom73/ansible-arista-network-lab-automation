# DC1-BL1

## Management Interfaces

### Management Interfaces Summary

IPv4

| Management Interface | description | VRF | IP Address | Gateway |
| -------------------- | ----------- | --- | ---------- | ------- |
| Management0 | MANAGEMENT_VRF | mgt | 10.10.10.15/24 | 10.10.10.1 |

IPv6

| Management Interface | description | VRF | IPv6 Address | IPv6 Gateway |
| -------------------- | ----------- | --- | ------------ | ------------ |
| Management0 | MANAGEMENT_VRF | mgt | 1b11:3a00:22b0:0083::15/64  | 1b11:3a00:22b0:0083::1 |

### Management Interfaces Device Configuration

```eos
interface Management0
   description MANAGEMENT_VRF
   vrf mgt
   ip address 10.10.10.15/24
   ipv6 enable
   ipv6 address 1b11:3a00:22b0:0083::15/64
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

| Policy Allocation | Range Beginning | Range Ending |
| ------------------| --------------- | ------------ |
| ascending | 4000 | 4080 |

### Internal VLAN Allocation Policy Configuration

```eos
vlan internal order ascending range 4000 4080
!
```

## IP IGMP Snooping

### IP IGMP Snooping Summary

| VLAN | IGMP Snooping |
| --- | --------------- |
| 320 | Disabled |

### IP IGMP Snooping Device Configuration

```eos
no ip igmp snooping vlan 320
!
```

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
| AAA | - | 10.6.75.62 | 123 |
| AAA | - | 10.6.75.63 | 333 |
| AAA | Ethernet2 | - | - |
| MGMT | - | 10.6.75.59 | 6343  |
| MGMT | - | 10.6.75.62 | 123 |
| MGMT | - | 10.6.75.63 | 333 |
| MGMT | Ethernet3 | - | - |
| GRT | - | 10.6.75.62 | 123  |
| GRT | - | 10.6.75.61 | 6343  |
| GRT | Management0 | - | - |

sFlow Sample Rate: 1000

sFlow is enabled.

### SFlow Device Configuration

```eos
sflow sample dangerous 1000
sflow vrf AAA destination 10.6.75.62 123
sflow vrf AAA destination 10.6.75.63 333
sflow vrf AAA source-interface Ethernet2
sflow vrf MGMT destination 10.6.75.59
sflow vrf MGMT destination 10.6.75.62 123
sflow vrf MGMT destination 10.6.75.63 333
sflow vrf MGMT source-interface Ethernet3
sflow destination 10.6.75.61
sflow destination 10.6.75.62 123
sflow source-interface Management0
sflow run
!
```

## Spanning Tree

### Spanning Tree Summary

Mode: mstp

**MSTP Instance and Priority**:

| Instance | Priority |
| -------- | -------- |
| 0 | 4096 |

### Spanning Tree Device Configuration

```eos
spanning-tree edge-port bpduguard default
spanning-tree mode mstp
no spanning-tree vlan-id 4094
spanning-tree mst 0 priority 4096
!
```


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
| Exec | local |

Authorization for configuration commands is enabled.

### AAA Authorization Device Configuration

```eos
aaa authorization exec default local
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

### VLANs Summary

| VLAN ID | Name | Trunk Groups |
| ------- | ---- | ------------ |
| 24 | PROD_24 | none  |
| 41 | PROD_41 | none  |
| 42 | PROD_42 | none  |
| 65 | PROD_65 | none  |
| 69 | INTERCO_LAN2 | none  |
| 71 | PROD_71 | none  |
| 75 | PROD_75 | none  |
| 76 | INTERCO_MAN | none  |
| 77 | INTERCO_WAN1 | none  |
| 78 | INTERCO_WAN2 | none  |
| 80 | INTERCO_WAN3 | none  |
| 81 | INTERCO_WAN4 | none  |
| 82 | PROD_82 | none  |
| 83 | PROD_83 | none  |
| 84 | PROD_84 | none  |
| 87 | PROD_87 | none  |
| 89 | PROD_89 | none  |
| 501 | INTERCO_FTD_BL | none  |
| 1001 | Tenant_A_Z1 | none  |
| 1002 | Tenant_A_Z2 | none  |
| 2001 | Tenant_B_Z1 | none  |
| 2002 | Tenant_B_Z2 | none  |
| 4094 | MLAG_PEER | MLAG  |

### VLANs Device Configuration

```eos
vlan 24
   name PROD_24
!
vlan 41
   name PROD_41
!
vlan 42
   name PROD_42
!
vlan 65
   name PROD_65
!
vlan 69
   name INTERCO_LAN2
!
vlan 71
   name PROD_71
!
vlan 75
   name PROD_75
!
vlan 76
   name INTERCO_MAN
!
vlan 77
   name INTERCO_WAN1
!
vlan 78
   name INTERCO_WAN2
!
vlan 80
   name INTERCO_WAN3
!
vlan 81
   name INTERCO_WAN4
!
vlan 82
   name PROD_82
!
vlan 83
   name PROD_83
!
vlan 84
   name PROD_84
!
vlan 87
   name PROD_87
!
vlan 89
   name PROD_89
!
vlan 501
   name INTERCO_FTD_BL
!
vlan 1001
   name Tenant_A_Z1
!
vlan 1002
   name Tenant_A_Z2
!
vlan 2001
   name Tenant_B_Z1
!
vlan 2002
   name Tenant_B_Z2
!
vlan 4094
   name MLAG_PEER
   trunk group MLAG
!
```

## VRF Instances

### VRF Instances Summary

| VRF Name | IP Routing |
| -------- | ---------- |
| mgt |  disabled |
| Tenant_A |  enabled |
| Tenant_B |  enabled |

### VRF Instances Device Configuration

```eos
vrf instance mgt
   description MANAGEMENT VRF
!
vrf instance Tenant_A
   description TEST TENANT_A VRF
!
vrf instance Tenant_B
   description TEST TENANT_B VRF
!
```

## Port-Channel Interfaces

### Port-Channel Interfaces Summary

| Interface | Description | MTU | Type | Mode | Allowed VLANs (trunk) | Trunk Group | MLAG ID | VRF | IP Address | IPv6 Address |
| --------- | ----------- | --- | ---- | ---- | --------------------- | ----------- | ------- | --- | ---------- | ------------ |
| Port-Channel8 | N7K12 | 1500 | switched | trunk | - | - | 8 | - | - | - |
| Port-Channel25 | FTD01 | 1500 | switched | trunk | 65,69,76,322-326,329,334,501 | - | 25 | - | - | - |
| Port-Channel26 | FTD02 | 1500 | switched | trunk | 65,69,76,322-326,329,334,501 | - | 26 | - | - | - |
| Port-Channel41 | PROD_41_ESX1 | 1500 | switched | trunk | - | - | 41 | - | - | - |
| Port-Channel69 | INTERCO_EXT_SIDE_CHECKPOINT | 1500 | switched | access | 69 | - | 69 | - | - | - |
| Port-Channel1000 | MLAG_PEER_BL2_Po1000 | 1500 | switched | trunk | - | MLAG | - | - | - | - |

### Port-Channel Interfaces Device Configuration

```eos
interface Port-Channel8
   description N7K12
   switchport mode trunk
   mlag 8
   spanning-tree portfast
   spanning-tree bpdufilter enable
!
interface Port-Channel25
   description FTD01
   switchport trunk allowed vlan 65,69,76,322-326,329,334,501
   switchport mode trunk
   mlag 25
   spanning-tree portfast
   spanning-tree bpdufilter enable
!
interface Port-Channel26
   description FTD02
   switchport trunk allowed vlan 65,69,76,322-326,329,334,501
   switchport mode trunk
   mlag 26
   spanning-tree portfast
   spanning-tree bpdufilter enable
!
interface Port-Channel41
   description PROD_41_ESX1
   switchport mode trunk
   mlag 41
   qos trust dscp
   vmtracer vmware-esx
!
interface Port-Channel69
   description INTERCO_EXT_SIDE_CHECKPOINT
   switchport access vlan 69
   mlag 69
   vmtracer vmware-esx
!
interface Port-Channel1000
   description MLAG_PEER_BL2_Po1000
   switchport mode trunk
   switchport trunk group MLAG
!
```

## Ethernet Interfaces

### Ethernet Interfaces Summary

| Interface | Description | MTU | Type | Mode | Allowed VLANs (Trunk) | Trunk Group | VRF | IP Address | Channel-Group ID | Channel-Group Type |
| --------- | ----------- | --- | ---- | ---- | --------------------- | ----------- | --- | ---------- | ---------------- | ------------------ |
| Ethernet3/1/1 | FTD01_Eth2/1 | *1500 | *switched | *trunk | *65,69,76,322-326,329,334,501 | - | - | - | 25 | active |
| Ethernet3/2/1 | FTD01_Eth2/3 | *1500 | *switched | *trunk | *65,69,76,322-326,329,334,501 | - | - | - | 25 | active |
| Ethernet3/3/1 | FTD02_Eth2/1 | *1500 | *switched | *trunk | *65,69,76,322-326,329,334,501 | - | - | - | 26 | active |
| Ethernet3/44/1 | N7K2_1/17 | 9000 | routed | access | - | - | - | 10.8.2.217/31 | - | - |
| Ethernet3/47/1 | N7K2_1/41 | *1500 | *switched | *trunk | - | - | - | - | 8 | active |
| Ethernet3/49/1 | P2P_LINK_TO_SP1_Ethernet3/1/1 | 9214 | routed | access | - | - | - | 10.50.0.0/31 | - | - |
| Ethernet3/50/1 | MLAG_PEER_BL1_Ethernet3/50/1 | *1500 | *switched | *trunk | - | *MLAG | - | - | 1000 | active |
| Ethernet4/1/1 | FTD01_Eth2/2 | *1500 | *switched | *trunk | *65,69,76,322-326,329,334,501 | - | - | - | 25 | active |
| Ethernet4/2/1 | FTD01_Eth2/4 | *1500 | *switched | *trunk | *65,69,76,322-326,329,334,501 | - | - | - | 25 | active |
| Ethernet4/3/1 | FTD02_Eth2/2 | *1500 | *switched | *trunk | *65,69,76,322-326,329,334,501 | - | - | - | 26 | active |
| Ethernet4/44/1 | N7K2_1/17 | 9000 | routed | access | - | - | - | 10.238.2.221/31 | - | - |
| Ethernet4/47/1 | N7K2_1/41 | *1500 | *switched | *trunk | - | - | - | - | 8 | active |
| Ethernet4/49/1 | P2P_LINK_TO_SP2_Ethernet3/1/1 | 9214 | routed | access | - | - | - | 10.50.0.2/31 | - | - |
| Ethernet4/50/1 | MLAG_PEER_BL1_Ethernet4/50/1 | *1500 | *switched | *trunk | - | *MLAG | - | - | 1000 | active |
| Ethernet5/1/1 | P2P_LINK_TO_SP3_Ethernet3/1/1 | 9214 | routed | access | - | - | - | 10.50.0.4/31 | - | - |

*Inherited from Port-Channel Interface

### Ethernet Interfaces Device Configuration

```eos
interface Ethernet3/1/1
   description FTD01_Eth2/1
   channel-group 25 mode active
!
interface Ethernet3/2/1
   description FTD01_Eth2/3
   channel-group 25 mode active
!
interface Ethernet3/3/1
   description FTD02_Eth2/1
   channel-group 26 mode active
!
interface Ethernet3/44/1
   description N7K2_1/17
   mtu 9000
   no switchport
   ip address 10.8.2.217/31
   ipv6 address 1b11:3a00:22b0:0088::217/127
   ipv6 nd ra disabled
   pim ipv4 sparse-mode
!
interface Ethernet3/47/1
   description N7K2_1/41
   channel-group 8 mode active
!
interface Ethernet3/49/1
   description P2P_LINK_TO_SP1_Ethernet3/1/1
   mtu 9214
   no switchport
   ip address 10.50.0.0/31
   ipv6 address 1b11:3a00:22b0:0088::0/127
   ipv6 nd ra disabled
   pim ipv4 sparse-mode
!
interface Ethernet3/50/1
   description MLAG_PEER_BL1_Ethernet3/50/1
   channel-group 1000 mode active
!
interface Ethernet4/1/1
   description FTD01_Eth2/2
   channel-group 25 mode active
!
interface Ethernet4/2/1
   description FTD01_Eth2/4
   channel-group 25 mode active
!
interface Ethernet4/3/1
   description FTD02_Eth2/2
   channel-group 26 mode active
!
interface Ethernet4/44/1
   description N7K2_1/17
   mtu 9000
   no switchport
   ip address 10.238.2.221/31
   ipv6 address 1b11:3a00:22b0:0088::221/127
   ipv6 nd ra disabled
   pim ipv4 sparse-mode
!
interface Ethernet4/47/1
   description N7K2_1/41
   channel-group 8 mode active
!
interface Ethernet4/49/1
   description P2P_LINK_TO_SP2_Ethernet3/1/1
   mtu 9214
   no switchport
   ip address 10.50.0.2/31
   ipv6 address 1b11:3a00:22b0:0088::2/127
   ipv6 nd ra disabled
   pim ipv4 sparse-mode
!
interface Ethernet4/50/1
   description MLAG_PEER_BL1_Ethernet4/50/1
   channel-group 1000 mode active
!
interface Ethernet5/1/1
   description P2P_LINK_TO_SP3_Ethernet3/1/1
   mtu 9214
   no switchport
   ip address 10.50.0.4/31
   ipv6 address 1b11:3a00:22b0:0088::4/127
   ipv6 nd ra disabled
   pim ipv4 sparse-mode
!
```

## Loopback Interfaces

### Loopback Interfaces Summary

IPv4

| Interface | Description | VRF | IP Address |
| --------- | ----------- | --- | ---------- |
| Loopback0 | ROUTER-ID | Global Routing Table | 10.50.64.15/32 |
| Loopback1 | VTEP_VXLAN_Tunnel_Source | Global Routing Table | 10.50.66.15/32 |
| Loopback2 | Multicast_RDV_Point | Global Routing Table | 10.38.1.161/32 |

IPv6

| Interface | Description | VRF | IPv6 Address |
| --------- | ----------- | --- | ------------ |
| Loopback0 | ROUTER-ID | Global Routing Table | 1b11:3a00:22b0:0082::15/128 |
| Loopback1 | VTEP_VXLAN_Tunnel_Source | Global Routing Table | - |
| Loopback2 | Multicast_RDV_Point | Global Routing Table | - |

### Loopback Interfaces Device Configuration

```eos
interface Loopback0
   description ROUTER-ID
   ip address 10.50.64.15/32
   ipv6 address 1b11:3a00:22b0:0082::15/128
!
interface Loopback1
   description VTEP_VXLAN_Tunnel_Source
   ip address 10.50.66.15/32
!
interface Loopback2
   description Multicast_RDV_Point
   ip address 10.38.1.161/32
!
```

## VLAN Interfaces

### VLAN Interfaces Summary

| Interface | Description | VRF | IP Address | IP Address Virtual | IP Router Virtual Address (vARP) |
| --------- | ----------- | --- | ---------- | ------------------ | -------------------------------- |
| Vlan24 | PROD_24 | Global Routing Table | - | 10.10.24.1/24 | - |
| Vlan41 | PROD_41 | Global Routing Table | - | 10.10.41.1/24 | - |
| Vlan42 | PROD_42 | Global Routing Table | - | 10.10.42.1/24 | - |
| Vlan75 | PROD_75 | Global Routing Table | - | 10.10.75.1/24 | - |
| Vlan83 | PROD_83 | Global Routing Table | - | 10.10.83.1/24 | - |
| Vlan84 | PROD_84 | Global Routing Table | - | 10.10.84.1/24 | - |
| Vlan87 | PROD_87 | Global Routing Table | - | 10.10.87.1/23 | - |
| Vlan89 | PROD_320 | Global Routing Table | - | 10.10.144.3/20 | - |
| Vlan501 | INTERCO_FTD_BL | Global Routing Table | 10.50.26.29/27 | - | - |
| Vlan1001 | Tenant_A_Z1 | Tenant_A | - | 10.1.1.1/24 | - |
| Vlan1002 | Tenant_A_Z2 | Tenant_A | - | 10.1.2.1/24 | - |
| Vlan2001 | Tenant_B_Z1 | Tenant_B | - | 10.2.1.1/24 | - |
| Vlan2002 | Tenant_B_Z2 | Tenant_B | - | 10.2.2.1/24 | - |
| Vlan4094 | MLAG_PEER_LINK | Global Routing Table | 169.254.252.0/31 | - | - |

### VLAN Interfaces Device Configuration

```eos
interface Vlan24
   description PROD_24
   ip address virtual 10.10.24.1/24
   ipv6 address 1b11:3a00:22b0:6::15/64
   ipv6 nd managed-config-flag
   ipv6 nd prefix 1b11:3a00:22b0:6::/64 infinite infinite no-autoconfig
   ipv6 virtual-router address 1b11:3a00:22b0:6::1
!
interface Vlan41
   description PROD_41
   ip address virtual 10.10.41.1/24
   ip helper-address 10.10.64.150  source-interface Loopback0
   ip helper-address 10.10.96.150  source-interface Loopback0
   ip helper-address 10.10.96.151  source-interface Loopback0
!
interface Vlan42
   description PROD_42
   ip address virtual 10.10.42.1/24
!
interface Vlan75
   description PROD_75
   ip address virtual 10.10.75.1/24
   ipv6 address 1b11:3a00:22b0:1000::15/64
   ipv6 nd managed-config-flag
   ipv6 nd prefix 1b11:3a00:22b0:1000::/64 infinite infinite no-autoconfig
   ipv6 virtual-router address 1b11:3a00:22b0:1000::1
!
interface Vlan83
   description PROD_83
   ip address virtual 10.10.83.1/24
!
interface Vlan84
   description PROD_84
   ip address virtual 10.10.84.1/24
!
interface Vlan87
   description PROD_87
   ip address virtual 10.10.87.1/23
!
interface Vlan89
   description PROD_320
   ip address virtual 10.10.144.3/20
   ipv6 address 1b11:3a00:22b0:5200::15/64
   ipv6 nd managed-config-flag
   ipv6 nd prefix 1b11:3a00:22b0:5200::/64 infinite infinite no-autoconfig
   multicast ipv4 source route export 
   pim ipv4 sparse-mode
   pim ipv4 local-interface Loopback0
   ipv6 virtual-router address 1b11:3a00:22b0:5200::3
!
interface Vlan501
   description INTERCO_FTD_BL
   ip address 10.50.26.29/27
   ipv6 address 1b11:3a00:22b0:0088::207/127
   ipv6 nd ra disabled
!
interface Vlan1001
   description Tenant_A_Z1
   vrf Tenant_A
   ip address virtual 10.1.1.1/24
   ipv6 address a1::1/64
   ipv6 nd managed-config-flag
   ipv6 nd prefix a1::/64 infinite infinite no-autoconfig
!
interface Vlan1002
   description Tenant_A_Z2
   vrf Tenant_A
   ip address virtual 10.1.2.1/24
   ipv6 address a2::1/64
   ipv6 nd ra disabled
   ipv6 nd managed-config-flag
   ipv6 nd prefix a2::/64 infinite infinite no-autoconfig
!
interface Vlan2001
   description Tenant_B_Z1
   vrf Tenant_B
   ip address virtual 10.2.1.1/24
!
interface Vlan2002
   description Tenant_B_Z2
   vrf Tenant_B
   ip address virtual 10.2.2.1/24
!
interface Vlan4094
   description MLAG_PEER_LINK
   mtu 9214
   ip address 169.254.252.0/31
   ipv6 address fe80::a/64 link-local
   pim ipv4 sparse-mode
!
```

## VXLAN Interface

### VXLAN Interface Summary

**Source Interface:** Loopback1
**UDP port:** 4789

**VLAN to VNI Mappings:**

| VLAN | VNI |
| ---- | --- |
| 24 | 10024 |
| 41 | 10041 |
| 42 | 10042 |
| 65 | 10065 |
| 71 | 10071 |
| 75 | 10075 |
| 82 | 10082 |
| 83 | 10083 |
| 84 | 10084 |
| 87 | 10087 |
| 89 | 10089 |
| 1001 | 11001 |
| 1002 | 11002 |
| 2001 | 12001 |
| 2002 | 12002 |

**VRF to VNI Mappings:**

| VLAN | VNI |
| ---- | --- |
| Tenant_A | 30001 |
| Tenant_B | 30002 |

### VXLAN Interface Device Configuration

```eos
interface Vxlan1
   vxlan source-interface Loopback1
   vxlan udp-port 4789
   vxlan vlan 24 vni 10024
   vxlan vlan 41 vni 10041
   vxlan vlan 42 vni 10042
   vxlan vlan 65 vni 10065
   vxlan vlan 71 vni 10071
   vxlan vlan 75 vni 10075
   vxlan vlan 82 vni 10082
   vxlan vlan 83 vni 10083
   vxlan vlan 84 vni 10084
   vxlan vlan 87 vni 10087
   vxlan vlan 89 vni 10089
   vxlan vlan 1001 vni 11001
   vxlan vlan 1002 vni 11002
   vxlan vlan 2001 vni 12001
   vxlan vlan 2002 vni 12002
   vxlan vrf Tenant_A vni 30001
   vxlan vrf Tenant_B vni 30002
!
```

## Virtual Router MAC Address & Virtual Source NAT

### Virtual Router MAC Address and Virtual Source NAT Summary

**Virtual Router MAC Address:** 00:1c:73:aa:bb:cc

### Virtual Router MAC Address Device and Virtual Source NAT Configuration

```eos
ip virtual-router mac-address 00:1c:73:aa:bb:cc
!
```

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
| 20 | permit host 10.10.10.10 |
| 30 | permit host 10.10.10.11 |
| 40 | permit host 10.10.10.12 |

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
   20 permit host 10.10.10.10
   30 permit host 10.10.10.11
   40 permit host 10.10.10.12
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
| Global Routing Table | 10.6.70.0/24 | 10.10.154.3 |
| Global Routing Table | 10.6.71.0/24 | 10.10.245.254 |
| mgt | 0.0.0.0/0 | 10.10.10.1 |

### Static Routes Device Configuration

```eos
ip route 10.6.70.0/24 10.10.154.3 tag 65100 name LAN1
ip route 10.6.71.0/24 10.10.245.254 3 tag 65100 name LAN2
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
| Tenant_A | True |
| Tenant_B | True |

### IP Routing Device Configuration

```eos
ip routing
no ip routing vrf mgt
ip routing vrf Tenant_A
ip routing vrf Tenant_B
!
```

## Prefix Lists

### Prefix Lists Summary

**PL-LOOPBACKS:**

| Sequence | Action |
| -------- | ------ |
| 10 | permit 10.50.64.0/23 eq 32 |
| 20 | permit 10.50.66.0/23 eq 32 |
| 30 | permit 10.238.1.161/32 |

**PL-MLAG:**

| Sequence | Action |
| -------- | ------ |
| 10 | permit 169.254.252.0/31 |

### Prefix Lists Device Configuration

```eos
ip prefix-list PL-LOOPBACKS
   seq 10 permit 10.50.64.0/23 eq 32
   seq 20 permit 10.50.66.0/23 eq 32
   seq 30 permit 10.238.1.161/32
!
ip prefix-list PL-MLAG
   seq 10 permit 169.254.252.0/31
!
```

## IPv6 Prefix Lists

### IPv6 Prefix Lists Summary

**PL-IPV6-LOOPBACKS:**

| Sequence | Action |
| -------- | ------ |
| 10 | permit 1b11:3a00:22b0:0082::/64 eq 128 |

### IPv6 Prefix Lists Device Configuration

```eos
ipv6 prefix-list PL-IPV6-LOOPBACKS
   seq 10 permit 1b11:3a00:22b0:0082::/64 eq 128
!
```

## IPv6 Routing

### IPv6 Routing Summary

| VRF | IPv6 Routing Enabled |
| --- | -------------------- |
| mgt | False |
| Tenant_A | True |
| Tenant_B | True |

### IPv6 Routing Device Configuration

```eos
ipv6 unicast-routing
ipv6 unicast-routing vrf Tenant_A
ipv6 unicast-routing vrf Tenant_B
!
```

## MLAG

### MLAG Summary

| domain-id | local-interface | peer-address | peer-link |
| --------- | --------------- | ------------ | --------- |
| MLAG_BL | Vlan4094 | 169.254.252.1 | Port-Channel1000 |

Dual primary detection is disabled.

### MLAG Device Configuration

```eos
mlag configuration
   domain-id MLAG_BL
   local-interface Vlan4094
   peer-address 169.254.252.1
   peer-link Port-Channel1000
   reload-delay mlag 1800
   reload-delay non-mlag 2000
!
```

## Community Lists

### Community Lists Summary

| Name | Action |
| -------- | ------ |
| LIST-COM | permit 65000:1 |

### Community Lists Device Configuration

```eos
ip community-list LIST-COM permit 65000:1
!
```

## Route Maps

### Route Maps Summary

**RM-CONN-BL-BGP:**

| Sequence | Type | Match and/or Set |
| -------- | ---- | ---------------- |
| 10 | deny | match ip address prefix-list PL-MLAG |

**RM-HIDE-ASPATH-IN:**

| Sequence | Type | Match and/or Set |
| -------- | ---- | ---------------- |
| 10 | permit | set as-path match all replacement auto |
| 10 | permit | set community 65000:1 additive |

**RM-HIDE-ASPATH-OUT:**

| Sequence | Type | Match and/or Set |
| -------- | ---- | ---------------- |
| 10 | deny | match community LIST-COM |
| 20 | permit | set as-path match all replacement auto |

**RM-STATIC-2-BGP:**

| Sequence | Type | Match and/or Set |
| -------- | ---- | ---------------- |
| 10 | permit | set tag 65100 |

### Route Maps Device Configuration

```eos
route-map RM-CONN-BL-BGP deny 10
   match ip address prefix-list PL-MLAG
!
route-map RM-CONN-BL-BGP permit 20
!
route-map RM-HIDE-ASPATH-IN permit 10
   set as-path match all replacement auto
   set community 65000:1 additive
!
route-map RM-HIDE-ASPATH-OUT deny 10
   match community LIST-COM
!
route-map RM-HIDE-ASPATH-OUT permit 20
   set as-path match all replacement auto
!
route-map RM-STATIC-2-BGP permit 10
   description tag for static routes
   set tag 65100
!
```

## Peer Filters

No Peer Filters defined

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
| 65100|  10.50.64.15 |

| BGP Tuning |
| ---------- |
| no bgp default ipv4-unicast |
| update wait-install |
| distance bgp 20 200 200 |
| maximum-paths 4 ecmp 4 |

### Router BGP Peer Groups

**EVPN-OVERLAY**:

| Settings | Value |
| -------- | ----- |
| remote_as | 65000 |
| next-hop unchanged | true |
| source | Loopback0 |
| bfd | true |
| ebgp multihop | 5 |
| send community | true |
| maximum routes | 0 (no limit) |
**IPV4-UNDERLAY**:

| Settings | Value |
| -------- | ----- |
| remote_as | 65000 |
| send community | true |
| maximum routes | 12000 |
**IPV4-UNDERLAY-MLAG**:

| Settings | Value |
| -------- | ----- |
| remote_as | 65100 |
| next-hop self | true |
| send community | true |
| maximum routes | 12000 |
**IPV6-UNDERLAY**:

| Settings | Value |
| -------- | ----- |
| remote_as | 65000 |
| send community | true |
| maximum routes | 12000 |
**IPV6-UNDERLAY-MLAG**:

| Settings | Value |
| -------- | ----- |
| remote_as | 65100 |
| next-hop self | true |
| send community | true |
| maximum routes | 12000 |

### BGP Neighbors

| Neighbor | Remote AS |
| -------- | ---------
| 1.1.1.1 | 1 |
| 1b11:3a00:22b0:0088::1 | Inherited from peer group IPV6-UNDERLAY |
| 1b11:3a00:22b0:0088::3 | Inherited from peer group IPV6-UNDERLAY |
| 1b11:3a00:22b0:0088::5 | Inherited from peer group IPV6-UNDERLAY |
| 10.50.2.1 | Inherited from peer group IPV4-UNDERLAY |
| 10.50.2.3 | Inherited from peer group IPV4-UNDERLAY |
| 10.50.2.5 | Inherited from peer group IPV4-UNDERLAY |
| 10.50.64.11 | Inherited from peer group EVPN-OVERLAY |
| 10.50.64.12 | Inherited from peer group EVPN-OVERLAY |
| 10.50.64.13 | Inherited from peer group EVPN-OVERLAY |
| 169.254.252.1 | Inherited from peer group IPV4-UNDERLAY-MLAG |
| fe80::b%Vl4094 | Inherited from peer group IPV6-UNDERLAY-MLAG |

### Router BGP EVPN Address Family

#### Router BGP EVPN MAC-VRFs


**VLAN Based:**

| VLAN | Route-Distinguisher | Both Route-Target | Import Route Target | Export Route-Target | Redistribute |
| ---- | ------------------- | ----------------- | ------------------- | ------------------- | ------------ |
| 24 | 10.50.64.15:10024 |  1:10024 |  -  | -  | learned |
| 41 | 10.50.64.15:10041 |  1:10041 |  -  | -  | learned |
| 42 | 10.50.64.15:10042 |  1:10042 |  -  | -  | learned |
| 65 | 10.50.64.15:10065 |  1:10065 |  -  | -  | learned |

#### Router BGP EVPN VRFs

| VRF | Route-Distinguisher | Redistribute |
| --- | ------------------- | ------------ |
| Tenant_A | 10.50.64.15:30001 | connected  |
| Tenant_B | 10.50.64.15:30002 | |

### Router BGP Device Configuration

```eos
router bgp 65100
   router-id 10.50.64.15
   no bgp default ipv4-unicast
   update wait-install
   distance bgp 20 200 200
   maximum-paths 4 ecmp 4
   neighbor EVPN-OVERLAY peer group
   neighbor EVPN-OVERLAY remote-as 65000
   neighbor EVPN-OVERLAY next-hop-unchanged
   neighbor EVPN-OVERLAY update-source Loopback0
   neighbor EVPN-OVERLAY bfd
   neighbor EVPN-OVERLAY ebgp-multihop 5
   neighbor EVPN-OVERLAY password 7 $1c$G8BQN0ezkiJOX2cuAYpsEA==
   neighbor EVPN-OVERLAY send-community
   neighbor EVPN-OVERLAY maximum-routes 0
   neighbor IPV4-UNDERLAY peer group
   neighbor IPV4-UNDERLAY remote-as 65000
   neighbor IPV4-UNDERLAY password 7 $1c$G8BQN0ezkiJOX2cuAYpsEA==
   neighbor IPV4-UNDERLAY send-community
   neighbor IPV4-UNDERLAY maximum-routes 12000
   neighbor IPV4-UNDERLAY-MLAG peer group
   neighbor IPV4-UNDERLAY-MLAG remote-as 65100
   neighbor IPV4-UNDERLAY-MLAG next-hop-self
   neighbor IPV4-UNDERLAY-MLAG password 7 $1c$G8BQN0ezkiJOX2cuAYpsEA==
   neighbor IPV4-UNDERLAY-MLAG send-community
   neighbor IPV4-UNDERLAY-MLAG maximum-routes 12000
   neighbor IPV6-UNDERLAY peer group
   neighbor IPV6-UNDERLAY remote-as 65000
   neighbor IPV6-UNDERLAY password 7 $1c$G8BQN0ezkiJOX2cuAYpsEA==
   neighbor IPV6-UNDERLAY send-community
   neighbor IPV6-UNDERLAY maximum-routes 12000
   neighbor IPV6-UNDERLAY-MLAG peer group
   neighbor IPV6-UNDERLAY-MLAG remote-as 65100
   neighbor IPV6-UNDERLAY-MLAG next-hop-self
   neighbor IPV6-UNDERLAY-MLAG password 7 $1c$G8BQN0ezkiJOX2cuAYpsEA==
   neighbor IPV6-UNDERLAY-MLAG send-community
   neighbor IPV6-UNDERLAY-MLAG maximum-routes 12000
   neighbor 1.1.1.1 remote-as 1
   neighbor 1.1.1.1 description TEST
   neighbor 1b11:3a00:22b0:0088::1 peer group IPV6-UNDERLAY
   neighbor 1b11:3a00:22b0:0088::3 peer group IPV6-UNDERLAY
   neighbor 1b11:3a00:22b0:0088::5 peer group IPV6-UNDERLAY
   neighbor 10.50.2.1 peer group IPV4-UNDERLAY
   neighbor 10.50.2.3 peer group IPV4-UNDERLAY
   neighbor 10.50.2.5 peer group IPV4-UNDERLAY
   neighbor 10.50.64.11 peer group EVPN-OVERLAY
   neighbor 10.50.64.12 peer group EVPN-OVERLAY
   neighbor 10.50.64.13 peer group EVPN-OVERLAY
   neighbor 169.254.252.1 peer group IPV4-UNDERLAY-MLAG
   neighbor fe80::b%Vl4094 peer group IPV6-UNDERLAY-MLAG
   redistribute connected route-map RM-CONN-2-BGP
   redistribute static route-map RM-STATIC-2-BGP
   !
   vlan 24
      rd 10.50.64.15:10024
      route-target both 1:10024
      redistribute learned
   !
   vlan 41
      rd 10.50.64.15:10041
      route-target both 1:10041
      redistribute learned
   !
   vlan 42
      rd 10.50.64.15:10042
      route-target both 1:10042
      redistribute learned
   !
   vlan 65
      rd 10.50.64.15:10065
      route-target both 1:10065
      redistribute learned
   !
   address-family evpn
      neighbor EVPN-OVERLAY activate
   !
   address-family ipv4
      neighbor IPV4-UNDERLAY route-map RM-HIDE-AS-PATH in
      neighbor IPV4-UNDERLAY route-map RM-HIDE-AS-PATH out
      neighbor IPV4-UNDERLAY activate
      neighbor IPV4-UNDERLAY-MLAG activate
   !
   address-family ipv4 multicast
      neighbor IPV4-UNDERLAY activate
      neighbor IPV4-UNDERLAY-MLAG activate
      redistribute attached-host 
   !
   address-family ipv6
      neighbor IPV6-UNDERLAY route-map RM-HIDE-AS-PATH in
      neighbor IPV6-UNDERLAY route-map RM-HIDE-AS-PATH out
      neighbor IPV6-UNDERLAY activate
      neighbor IPV6-UNDERLAY-MLAG activate
   !
   vrf Tenant_A
      rd 10.50.64.15:30001
      route-target import evpn 1:30001
      route-target export evpn 1:30001
      redistribute connected
   !
   vrf Tenant_B
      rd 10.50.64.15:30002
      route-target import evpn 1:30002
      route-target export evpn 1:30002
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


### IP Anycast Information

| IP Anycast Address | Other Rendez-vous Point Address | Register Count |
| ------------------ | ------------------------------- | -------------- |
| 10.38.1.161 | 10.50.64.16 |  15 | |

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
      anycast-rp 10.38.1.161 10.50.64.16 register-count 15 
!
```

## VM Tracer Sessions

### VM Tracer Summary

| Session | URL | Username | Autovlan | Source Interface |
| ------- | --- | -------- | -------- | ---------------- |
| esx101sas |  https://esx101sas.test.local/ | testuser | disabled |  Loopback0 |
| esx201sas |  https://esx201sas.test.local/ | testuser | disabled |  Loopback0 |
| esx301sas |  https://esx301sas.test.local/ | testuser | disabled |  Loopback0 |
| esx401sas |  https://esx401sas.test.local/ | testuser | disabled |  Loopback0 |

### VM Tracer Device Configuration

```eos
vmtracer session esx101sas
   url https://esx101sas.test.local/
   username testuser
   password 7 SUCF7CNfXw4=
   autovlan disable
   source-interface Loopback0
!
vmtracer session esx201sas
   url https://esx201sas.test.local/
   username testuser
   password 7 SUCF7CNfXw4=
   autovlan disable
   source-interface Loopback0
!
vmtracer session esx301sas
   url https://esx301sas.test.local/
   username testuser
   password 7 SUCF7CNfXw4=
   autovlan disable
   source-interface Loopback0
!
vmtracer session esx401sas
   url https://esx401sas.test.local/
   username testuser
   password 7 SUCF7CNfXw4=
   autovlan disable
   source-interface Loopback0
!
```

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

Router ISIS not defined
