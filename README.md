# Arista Validated Design Lab

- [Arista Validated Design Lab](#arista-validated-design-lab)
  - [Topology](#topology)
  - [Setup](#setup)
  - [Ansible Execution Engine](#ansible-execution-engine)
    - [Build Image](#build-image)
    - [Run Execution Engine](#run-execution-engine)
  - [Inventory Information](#inventory-information)
    - [Inetsix eAPI Inventory](#inetsix-eapi-inventory)
    - [EMEA Inventory](#emea-inventory)
    - [Inetsix CVP Inventory](#inetsix-cvp-inventory)
  - [Enable debugging](#enable-debugging)
    - [Cloudvision collection](#cloudvision-collection)
  - [AVD Commands and Playbooks for CVP deployment](#avd-commands-and-playbooks-for-cvp-deployment)
  - [Make commands](#make-commands)
    - [AVD with Cloudvision deployment](#avd-with-cloudvision-deployment)
    - [AVD with EAPI deployment](#avd-with-eapi-deployment)
    - [AVD Tools](#avd-tools)
    - [Misc](#misc)

## Topology

![Topology](inventories/inetsix-eapi/medias/topology.png)

## Setup

- [`ansible-cvp`](https://github.com/aristanetworks/ansible-cvp): configured under ../ansible-cvp
- [`ansible-avd`](https://github.com/aristanetworks/ansible-avd): configured under ../ansible-avd
- If required, `make install`: will clone avd and cvp under `collections/`: folder
- Ansible playbook debugger activated in ansible.cfg
- Execution time configured
- Default inventory is set to [`inventories/inetsix-eapi/`](inventories/inetsix-eapi/inventory.yml)
- Playbooks are all saved under [playbooks](playbooks/)
- AVD outputs are generated under each `inventory`: directory

Inventory can be changed with following command:

```bash
$ make <command> INVENTORY=<your inventory>
```

## Ansible Execution Engine

### Build Image

```bash
$ make ee-build
ansible-builder build --tag inetsix/ansible-ee-avd:2.11 --container-runtime docker\
 -f docker-images/ansible-ee-avd/execution-environment.yml \
 --build-arg EE_BASE_IMAGE=quay.io/ansible/\
 ansible-runner:stable-2.11-latest
Running command:
  docker build -f context/Dockerfile -t inetsix/ansible-ee-avd:2.11 \
  --build-arg=EE_BASE_IMAGE=quay.io/ansible/ansible-runner:stable-2.11-latest context
Complete! The build context can be found at: ./context
```

__Options__:

- `EE_IMAGE`: default is `inetsix/ansible-ee-avd`
- `EE_TAG`: default is `2.11` It is also the tag used for ansible version in base EE image

### Run Execution Engine

```bash
$ make ee-runner EE_CMD='ansible --version'

ansible [core 2.11.6.post0]
  config file = /runner/ansible.cfg
  configured module search path = ['/runner/ansible-avd/library']
  ansible python module location = /usr/local/lib/python3.8/site-packages/ansible
  ansible collection location = /ansible-inetsix:/ansible-cvp:/ansible-avd:\
    /home/runner/.ansible/collections:/usr/share/ansible/collections
  executable location = /usr/local/bin/ansible
  python version = 3.8.8 (default, Aug 25 2021, 16:13:02) \
    [GCC 8.5.0 20210514 (Red Hat 8.5.0-3)]
  jinja version = 3.0.3
  libyaml = True
```

__Options__:

- `EE_IMAGE`: default is `inetsix/ansible-ee-avd`
- `EE_TAG`: default is `2.11` It is also the tag used for ansible version in base EE image
- `EE_CMD`: default is `/bin/bash` and can be customized

## Inventory Information

### Inetsix eAPI Inventory

- __Devices:__
  - Out of band network: 10.73.254.0/24
  - Username: ansible
  - Password: ansible

Available [here](inventories/inetsix-eapi/README.md)

Jumphost and Iptables are used in this inventory and must be configured prior any test.

### EMEA Inventory

- __Cloudvision__
  - IP: 10.83.28.164
  - Username: ansible
  - Password: ansible

- __Devices:__
  - Out of band network: 10.255.0.0/24
  - Username: ansible
  - Password: ansible

### Inetsix CVP Inventory

- __Cloudvision__
  - IP: 10.73.1.239
  - Username: ansible
  - Password: ansible

- __Devices:__
  - Out of band network: 10.73.255.0/24
  - Username: ansible
  - Password: ansible

Available [here](inventories/inetsix-cvp/README.md)

## Enable debugging

### Cloudvision collection

```shell
$ source activate-arista.cvp-logs.env

export ANSIBLE_CVP_LOG_FILE=cvp-debug-logs/arista.cvp.debug.log
export ANSIBLE_CVP_LOG_LEVEL=debug
export ANSIBLE_CVP_LOG_APICALL=warning
```

Log folder: `cvp-debug-logs/`

## AVD Commands and Playbooks for CVP deployment

__Available options:__

- `INVENTORY`: Variable to target a specific inventory.
- `ANSIBLE_ARGS`: Variable to pass some ansible arguments

## Make commands

[Makefile](./Makefile) provides some shortcuts:

### AVD with Cloudvision deployment

- `avd-build-all`:                  Run AVD Build for all ISIS, OSPF and BGP Underlay
- `avd-build-generic`:              Run ansible playbook to build EVPN Fabric configuration with DC1 and CV
- `avd-build-isis`:                 Run ansible playbook to build EVPN Fabric configuration with ISIS as underlay with DC1 and CV
- `avd-build-ospf`:                 Run ansible playbook to build EVPN Fabric configuration with OSPF as underlay with DC1 and CV
- `avd-build`:                      Run ansible playbook to build EVPN Fabric configuration with DC1 and CV
- `avd-deploy-isis`:                Run ansible playbook to deploy EVPN Fabric with ISIS as underlay.
- `avd-deploy-ospf`:                Run ansible playbook to deploy EVPN Fabric with OSPF as underlay.
- `avd-deploy`:                     Run ansible playbook to deploy EVPN Fabric.
- `avd-dhcp-generate`:              Generate DHCPd configuration
- `avd-dhcp-rollout`:               Configure DHCP server with topology information.
- `avd-migrate`:                    Run ansible playbook to build EVPN Fabric configuration with DC1 and CV
- `avd-provision`:                  Run ansible playbook to deploy EVPN Fabric.
- `avd-reset`:                      Run ansible playbook to reset all devices.
- `avd-vars-devices`:               Run ansible playbook to extract Devices variables.
- `avd-vars-input`:                 Run ansible playbook to extract EVPN Fabric variables.

### AVD with EAPI deployment

- `eapi-build-isis`:                Run ansible playbook to build EVPN Fabric configuration for generic EOS AVD topology and NO CV with ISIS underlay
- `eapi-build-ospf`:                Run ansible playbook to build EVPN Fabric configuration for generic EOS AVD topology and NO CV with OSPF underlay
- `eapi-build`:                     Run ansible playbook to build EVPN Fabric configuration for generic EOS AVD topology and NO CV
- `eapi-deploy-isis`:               Run ansible playbook to build EVPN Fabric configuration for generic EOS AVD topology and NO CV with ISIS underlay
- `eapi-deploy-ospf`:               Run ansible playbook to build EVPN Fabric configuration for generic EOS AVD topology and NO CV with OSPF underlay
- `eapi-deploy`:                    Run ansible playbook to build EVPN Fabric configuration for generic EOS AVD topology and NO CV
- `eapi-states-validation`:         eapi-states-validation description

### AVD Tools

- `eos-backup`:                     Backup current running configuration
- `snapshot`:                       Extract commands outputs

### Misc

- `centos-bootstrap`:               Initial Centos 7 Configuration
- `cli-config-gen`:                 Run ansible playbook to build EVPN Fabric configuration for generic EOS AVD topology and NO CV with OSPF underlay
- `configlet-delete`:               Delete Configlets (GLOBAL-ALIASES*) from CVP
- `configlet-unbound`:              Rebuild configlets binding based on AVD standard
- `configlet-upload`:               Upload configlets available in configlets/ to CVP.
- `container-create`:               Create DC2 container topology on CVP.
- `container-delete`:               Remove DC2 container topology from CVP.
- `dhcp-bootstrap`:                 Configure DHCP service
- `docker-run`:                     Connect to docker container
- `dump-vars`:                      Dump all ansible variables into $(INVENTORY)/dump.json
- `facts`:                          Get facts from CVP and save locally
- `help`:                           Display help message (*: main entry points / []: part of an entry point)
- `install`:                        Install arista collections
- `log-clean`:                      log-clean description
- `repo-clean`:                     Delete previously generated outputs
- `repo-rebuild`:                   Delete previously generated outputs
- `uninstall`:                      Remove arista collections
- `unit-configlet`:                 Unit test for cv_configlet
- `unit-container-v1`:              Unit test for cv_container
- `unit-container-v3`:              Unit test for cv_container
- `unit-container-v4`:              Unit test for cv_container
- `unit-device`:                    Unit test for cv_configlet