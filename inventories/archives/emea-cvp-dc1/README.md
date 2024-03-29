# Virtual Lab 01

![Topology](media/lab-topology.png)

```yaml
---
all:
  children:
    ZTP:
      hosts:
        cv_ztp:
          ansible_host: 10.83.28.162
          ansible_user: root
          ansible_password: ...
    CVP:
      hosts:
        cv_server:
          ansible_host: 10.83.28.164
          ansible_user: ansible
          ansible_password: ...
    # DC1_Fabric - EVPN Fabric running in home lab
    DC1:
      vars:
        ansible_host: 10.83.28.162
        ansible_user: ansible
        ansible_ssh_pass: ...
        ansible_connection: httpapi
        ansible_network_os: eos
      children:
        DC1_FABRIC:
          children:
            DC1_SPINES:
              hosts:
                DC1-SPINE1:
                  ansible_port: 8001
                DC1-SPINE2:
                  ansible_port: 8002
            DC1_L3LEAFS:
              children:
                DC1_LEAF1:
                  hosts:
                    DC1-LEAF1A:
                      ansible_port: 8003
                    DC1-LEAF1B:
                      ansible_port: 8004
                DC1_LEAF2:
                  hosts:
                    DC1-LEAF2A:
                      ansible_port: 8005
                    DC1-LEAF2B:
                      ansible_port: 8006
                DC1_LEAF3:
                  hosts:
                    DC1-LEAF3A:
                      ansible_port: 8011
                DC1_BL1:
                  hosts:
                    DC1-BL1A:
                      ansible_port: 8012
                    DC1-BL1B:
                      ansible_port: 8013
            DC1_L2LEAFS:
              children:
                DC1_L2LEAF1:
                  hosts:
                    DC1-L2LEAF1A:
                      ansible_port: 8007
                DC1_L2LEAF2:
                  hosts:
                    DC1-L2LEAF2A:
                      ansible_port: 8008
        DC1_TENANTS_NETWORKS:
          children:
            DC1_L3LEAFS:
            DC1_L2LEAFS:
        DC1_SERVERS:
          children:
            DC1_L3LEAFS:
            DC1_L2LEAFS:
```
