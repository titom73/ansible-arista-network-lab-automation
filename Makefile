### Generic Variables
SHELL := /bin/zsh

### Ansible variables
# Inventory for EOS playbooks
INVENTORY ?= inventories/emea-cvp-dc1
# Inventory for Linux tool box
TOOLS ?= inventories/tools/inetsix-eapi
# Default Inventory file to look for
INVENTORY_FILE = inventory.yml
# For optional ansible options
ANSIBLE_ARGS ?= --diff
FACTS_LOG ?= ../cvp-debug-logs/arista.cvp.facts.json
CV_PREFIX ?= ASE

### Docker variables
CURRENT_DIR = $(shell pwd)
DOCKER_NAME ?= avdteam/base
DOCKER_TAG ?= 3.6
AVD_REPOSITORY ?= ../ansible-avd/development/
ANSIBLE_VERSION ?=

.PHONY: help
help: ## Display help message (*: main entry points / []: part of an entry point)
	@grep -E '^[0-9a-zA-Z_-]+\.*[0-9a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: facts
facts: ## Get facts from CVP and save locally
	ansible-playbook playbooks/extract-facts.yml --extra-vars "output_file=${FACTS_LOG}" -i $(INVENTORY)/$(INVENTORY_FILE)

################################################################################
# AVD Commands for DC1 & Cloudvision
################################################################################

.PHONY: avd-build
avd-build: ## Run ansible playbook to build EVPN Fabric configuration with DC1 and CV
	ansible-playbook playbooks/avd-cvp-deploy-generic.yml --tags build -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

.PHONY: avd-provision
avd-provision: ## Run ansible playbook to deploy EVPN Fabric.
	ansible-playbook playbooks/avd-cvp-deploy-generic.yml --tags provision -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

.PHONY: avd-deploy
avd-deploy: ## Run ansible playbook to deploy EVPN Fabric.
	ansible-playbook playbooks/avd-cvp-deploy-generic.yml --extra-vars "execute_tasks=true" --tags "build,provision,apply" -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

### Sub-scenario

.PHONY: avd-build-isis
avd-build-isis: ## Run ansible playbook to build EVPN Fabric configuration with ISIS as underlay with DC1 and CV
	ansible-playbook playbooks/avd-cvp-deploy-generic.yml --tags build --extra-vars "underlay_routing_protocol=ISIS" -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

.PHONY: avd-deploy-isis
avd-deploy-isis: ## Run ansible playbook to deploy EVPN Fabric with ISIS as underlay.
	ansible-playbook playbooks/avd-cvp-deploy-generic.yml --extra-vars "underlay_routing_protocol=ISIS execute_tasks=true" --tags "build,provision,apply" -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

.PHONY: avd-build-ospf
avd-build-ospf: ## Run ansible playbook to build EVPN Fabric configuration with OSPF as underlay with DC1 and CV
	ansible-playbook playbooks/avd-cvp-deploy-generic.yml --tags build --extra-vars "underlay_routing_protocol=OSPF" -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

.PHONY: avd-deploy-ospf
avd-deploy-ospf: ## Run ansible playbook to deploy EVPN Fabric with OSPF as underlay.
	ansible-playbook playbooks/avd-cvp-deploy-generic.yml --extra-vars "underlay_routing_protocol=OSPF execute_tasks=true" --tags "build,provision,apply" -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

### Cleanup CVP

.PHONY: avd-reset
avd-reset: ## Run ansible playbook to reset all devices.
	ansible-playbook playbooks/avd-cvp-reset.yml -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

### Debug Actions

.PHONY: avd-vars-input
avd-vars-input: ## Run ansible playbook to extract EVPN Fabric variables.
	ansible-playbook playbooks/extract-avd-vars.yml --tags eos_l3ls_evpn -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

.PHONY: avd-vars-devices
avd-vars-devices: ## Run ansible playbook to extract Devices variables.
	ansible-playbook playbooks/extract-avd-vars.yml --tags cli -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

################################################################################
# AVD Commands for Generic Inventory and NO CV instance
################################################################################

.PHONY: eapi-build
eapi-build: ## Run ansible playbook to build EVPN Fabric configuration for generic EOS AVD topology and NO CV
	ansible-playbook playbooks/avd-eapi-generic.yml --tags build --tags build -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

.PHONY: eapi-deploy
eapi-deploy: ## Run ansible playbook to build EVPN Fabric configuration for generic EOS AVD topology and NO CV
	ansible-playbook playbooks/avd-eapi-generic.yml --tags "build, deploy" -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

.PHONY: eapi-check
eapi-check: ## Run ansible playbook to build EVPN Fabric configuration for generic EOS AVD topology and NO CV
	ansible-playbook playbooks/avd-eapi-generic.yml --tags "build, deploy" -i $(INVENTORY)/$(INVENTORY_FILE) --check --diff

.PHONY: eapi-states-validation
eapi-states-validation: ## eapi-states-validation description
	ansible-playbook playbooks/avd-eapi-states-validation.yml -i $(INVENTORY)/$(INVENTORY_FILE)

.PHONY: eapi-build-isis
eapi-build-isis: ## Run ansible playbook to build EVPN Fabric configuration for generic EOS AVD topology and NO CV with ISIS underlay
	ansible-playbook playbooks/avd-eapi-generic.yml --tags build --tags build --extra-vars "underlay_routing_protocol=ISIS" -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

.PHONY: eapi-deploy-isis
eapi-deploy-isis: ## Run ansible playbook to build EVPN Fabric configuration for generic EOS AVD topology and NO CV with ISIS underlay
	ansible-playbook playbooks/avd-eapi-generic.yml --tags "build, deploy" --extra-vars "underlay_routing_protocol=ISIS" -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

.PHONY: eapi-build-ospf
eapi-build-ospf: ## Run ansible playbook to build EVPN Fabric configuration for generic EOS AVD topology and NO CV with OSPF underlay
	ansible-playbook playbooks/avd-eapi-generic.yml --tags build --tags build --extra-vars "underlay_routing_protocol=OSPF" -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

.PHONY: eapi-deploy-ospf
eapi-deploy-ospf: ## Run ansible playbook to build EVPN Fabric configuration for generic EOS AVD topology and NO CV with OSPF underlay
	ansible-playbook playbooks/avd-eapi-generic.yml --tags "build, deploy" --extra-vars "underlay_routing_protocol=OSPF" -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

################################################################################
# AVD Commands for eos_cli_config_gen role
################################################################################

.PHONY: cli-config-gen
cli-config-gen: ## Run ansible playbook to build EVPN Fabric configuration for generic EOS AVD topology and NO CV with OSPF underlay
	ansible-playbook playbooks/avd-eos-cli-config-gen.yml -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

################################################################################
# AVD Commands for Generic Inventory and NO CV instance
################################################################################

.PHONY: eos-backup
eos-backup: ## Backup current running configuration
	ansible-playbook playbooks/eos-configuration-backup.yml -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

################################################################################
# Configlet Management
################################################################################

.PHONY: configlet-upload
configlet-upload: ## Upload configlets available in configlets/ to CVP.
	ansible-playbook playbooks/cv-configlet-upload.yml --extra-vars "configlets_prefix_var=$(CV_PREFIX)" -i $(INVENTORY)/$(INVENTORY_FILE)

.PHONY: configlet-unbound
configlet-unbound: ## Rebuild configlets binding based on AVD standard
	ansible-playbook playbooks/avd-cvp-rollback-configlet-binding.yml --extra-vars "execute_tasks=true" -i $(INVENTORY)/$(INVENTORY_FILE)

.PHONY: configlet-delete
configlet-delete: ## Delete Configlets (GLOBAL-ALIASES*) from CVP
	ansible-playbook playbooks/cv-configlet-delete.yml -i $(INVENTORY)/$(INVENTORY_FILE)

################################################################################
# Container Management
################################################################################

.PHONY: container-create
container-create: ## Create DC2 container topology on CVP.
	ansible-playbook playbooks/cv-container-testing.yml --extra-vars "run_mode=merge" -i $(INVENTORY)/$(INVENTORY_FILE)

.PHONY: container-delete
container-delete: ## Remove DC2 container topology from CVP.
	ansible-playbook playbooks/cv-container-testing.yml --extra-vars "run_mode=delete" -i $(INVENTORY)/$(INVENTORY_FILE)

.PHONY: dhcp-configure
dhcp-configure: ## Configure DHCP server with topology information.
	ansible-playbook playbooks/dhcp-configuration.yml -i $(INVENTORY)/$(INVENTORY_FILE)

.PHONY: dhcp-generate
dhcp-generate: ## Generate DHCPd configuration
	ansible-playbook playbooks/dhcp-generate-dhcpd-conf.yml -i $(INVENTORY)/$(INVENTORY_FILE)

################################################################################
# Tooling Management
################################################################################

.PHONY: centos-bootstrap
centos-bootstrap: ## Initial Centos 7 Configuration
	ansible-playbook playbooks/centos07-bootstrap.yml -i $(TOOLS)/$(INVENTORY_FILE)

.PHONY: dhcp-bootstrap
dhcp-bootstrap: ## Configure DHCP service
	ansible-playbook playbooks/dhcp-configuration.yml -i $(TOOLS)/$(INVENTORY_FILE)

################################################################################
# Repository Management
################################################################################

.PHONY: repo-rebuild
repo-rebuild: ## Delete previously generated outputs
	ansible-playbook playbooks/cleanup-outputs.yml -i $(INVENTORY)/$(INVENTORY_FILE)

.PHONY: repo-clean
repo-clean: ## Delete previously generated outputs
	sh playbooks/repository-cleanup.sh

.PHONY: log-clean
log-clean: ## log-clean description
	rm -f cvp-debug-logs/arista.cvp.debug.log*

.PHONY: install
install: ## Install arista collections
	git clone https://github.com/aristanetworks/ansible-avd.git collections/ansible-avd
	git clone https://github.com/aristanetworks/ansible-cvp.git collections/ansible-cvp

.PHONY: uninstall
uninstall: ## Remove arista collections
	rm -rf collections

################################################################################
# Docker Runner
################################################################################

.PHONY: docker-run
docker-run: ## Connect to docker container
	docker run -it --rm -e AVD_ANSIBLE=$(ANSIBLE_VERSION) -v $(CURRENT_DIR)/../:/projects $(DOCKER_NAME):$(DOCKER_TAG)
