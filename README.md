# Arista Validated Design Lab

- [Arista Validated Design Lab](#arista-validated-design-lab)
  - [Topology](#topology)
  - [Setup](#setup)
    - [Required tools:](#required-tools)
  - [Make commands](#make-commands)
  - [Make Options](#make-options)
  - [Ansible Execution Engine](#ansible-execution-engine)
    - [Build Image](#build-image)
    - [Run Execution Engine](#run-execution-engine)
  - [Inventory Information](#inventory-information)
    - [Inetsix eAPI Inventory](#inetsix-eapi-inventory)
  - [Make commands](#make-commands-1)

## Topology

![Topology](inventories/inetsix-eapi/medias/topology.png)

## Setup

- [`ansible-cvp`](https://github.com/aristanetworks/ansible-cvp): configured under ../ansible-cvp
- [`ansible-avd`](https://github.com/aristanetworks/ansible-avd): configured under ../ansible-avd
- If required, `make setup-development` will set up your environment
- Ansible playbook debugger activated in ansible.cfg
- Execution time configured
- Default inventory is set to [`inventories/inetsix-eapi/`](inventories/inetsix-eapi/inventory.yml)
- Playbooks are all saved under [playbooks](playbooks/)
- AVD outputs are generated under each `inventory`: directory

Inventory can be changed with following command:

```bash
$ make <command> INVENTORY=<your inventory>
```
### Required tools:

- Github CLI

## Make commands

- `avd-cvp-build`                  Run ansible playbook to build EVPN Fabric configuration with DC1 and CV
- `avd-cvp-deploy`                 Run ansible playbook to deploy EVPN Fabric.
- `avd-cvp-provision`              Run ansible playbook to deploy EVPN Fabric.
- `avd-eapi-apply`                 Run ansible playbook to Apply previously generated configuration
- `avd-eapi-build-all`             Run ansible playbook to build EVPN Fabric configuration for generic EOS AVD topology and NO CV
- `avd-eapi-build`                 Run ansible playbook to build EVPN Fabric configuration for generic EOS AVD topology and NO CV (No Documentation)
- `avd-eapi-deploy`                Run ansible playbook to build EVPN Fabric configuration for generic EOS AVD topology and NO CV
- `cli-config-gen`                 Run ansible playbook to build EVPN Fabric configuration for generic EOS AVD topology
- `eapi-states-validation`         eapi-states-validation description
- `ee-build-latest`                Build Ansible Execution Builder
- `ee-build`                       Build Ansible Execution Builder
- `ee-runner`                      Execute ansible EE runner in interactive mode
- `eos-backup`                     Backup current running configuration
- `eos-snapshot`                   Extract commands outputs
- `help`                           Display help message (*: main entry points / []: part of an entry point)
- `setup-development`              Setup development environment
- `setup-galaxy`                   Install arista collections using ansible galaxy

## Make Options

```bash
# Inventory for EOS playbooks
INVENTORY ?= inventories/inetsix-eapi
# Default Inventory file to look for
INVENTORY_FILE = inventory.yml
# Name of the Fabric to build. Used in --limit scope
SCOPE ?= EAPI_FABRIC
# For optional ansible options
ANSIBLE_ARGS ?= --diff
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

## Make commands

- `avd-cvp-build`                  Run ansible playbook to build EVPN Fabric configuration with DC1 and CV
- `avd-cvp-deploy`                 Run ansible playbook to deploy EVPN Fabric.
- `avd-cvp-provision`              Run ansible playbook to deploy EVPN Fabric.
- `avd-eapi-apply`                 Run ansible playbook to Apply previously generated configuration
- `avd-eapi-build-all`             Run ansible playbook to build EVPN Fabric configuration for generic EOS AVD topology and NO CV
- `avd-eapi-build`                 Run ansible playbook to build EVPN Fabric configuration for generic EOS AVD topology and NO CV (No Documentation)
- `avd-eapi-deploy`                Run ansible playbook to build EVPN Fabric configuration for generic EOS AVD topology and NO CV
- `cli-config-gen`                 Run ansible playbook to build EVPN Fabric configuration for generic EOS AVD topology
- `eapi-states-validation`         eapi-states-validation description
- `ee-build-latest`                Build Ansible Execution Builder
- `ee-build`                       Build Ansible Execution Builder
- `ee-runner`                      Execute ansible EE runner in interactive mode
- `eos-backup`                     Backup current running configuration
- `eos-snapshot`                   Extract commands outputs
- `help`                           Display help message (*: main entry points / []: part of an entry point)
- `setup-development`              Setup development environment
- `setup-galaxy`                   Install arista collections using ansible galaxy
