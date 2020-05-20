FACTS_LOG ?= ../cvp-debug-logs/arista.cvp.facts.json
SHELL := /bin/bash
INVENTORY ?= vlab-inventory

.PHONY: help
help: ## Display help message (*: main entry points / []: part of an entry point)
	@grep -E '^[0-9a-zA-Z_-]+\.*[0-9a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: facts
facts: ## Get facts from CVP and save locally
	ansible-playbook playbooks/extract-facts.yml --extra-vars "output_file=${FACTS_LOG}" -i $(INVENTORY)

################################################################################
# AVD Commands
################################################################################

.PHONY: avd-build
avd-build: ## Run ansible playbook to build EVPN Fabric configuration.
	ansible-playbook playbooks/dc1-fabric-deploy-cvp.yml --tags build -i $(INVENTORY)

.PHONY: avd-build-isis
avd-build-isis: ## Run ansible playbook to build EVPN Fabric configuration with ISIS as underlay.
	ansible-playbook playbooks/dc1-fabric-deploy-cvp.yml --tags build --extra-vars "underlay_routing_protocol=ISIS" -i $(INVENTORY)

.PHONY: avd-provision
avd-provision: ## Run ansible playbook to deploy EVPN Fabric.
	ansible-playbook playbooks/dc1-fabric-deploy-cvp.yml --tags provision -i $(INVENTORY)

.PHONY: avd-deploy
avd-deploy: ## Run ansible playbook to deploy EVPN Fabric.
	ansible-playbook playbooks/dc1-fabric-deploy-cvp.yml --extra-vars "execute_tasks=true" --tags "build,provision,apply" -i $(INVENTORY)

.PHONY: avd-deploy-isis
avd-deploy-isis: ## Run ansible playbook to deploy EVPN Fabric.
	ansible-playbook playbooks/dc1-fabric-deploy-cvp.yml --extra-vars "underlay_routing_protocol=ISIS execute_tasks=true" --tags "build,provision,apply" -i $(INVENTORY)


.PHONY: avd-reset
avd-reset: ## Run ansible playbook to reset all devices.
	ansible-playbook playbooks/dc1-fabric-reset-cvp.yml -i $(INVENTORY)

.PHONY: avd-vars-input
avd-vars-input: ## Run ansible playbook to extract EVPN Fabric variables.
	ansible-playbook playbooks/extract-avd-vars.yml --tags eos_l3ls_evpn -i $(INVENTORY)

.PHONY: avd-vars-devices
avd-vars-devices: ## Run ansible playbook to extract Devices variables.
	ansible-playbook playbooks/extract-avd-vars.yml --tags cli -i $(INVENTORY)


################################################################################
# Configlet Management
################################################################################

.PHONY: configlet-upload
configlet-upload: ## Upload configlets available in configlets/ to CVP.
	ansible-playbook playbooks/dc1-upload-configlets.yml -i $(INVENTORY)

.PHONY: configlet-unbound
configlet-unbound: ## Rebuild configlets binding based on AVD standard
	ansible-playbook playbooks/dc1-fabric-rollback-to-avd.yml --extra-vars "execute_tasks=true" -i $(INVENTORY)

.PHONY: configlet-delete
configlet-delete: ## Delete Configlets (GLOBAL-ALIASES*) from CVP
	ansible-playbook playbooks/dc1-remove-configlets.yml -i $(INVENTORY)

################################################################################
# Container Management
################################################################################

.PHONY: container-create
container-create: ## Create DC2 container topology on CVP.
	ansible-playbook playbooks/cv-container-testing.yml --extra-vars "run_mode=merge" -i $(INVENTORY)

.PHONY: container-delete
container-delete: ## Remove DC2 container topology from CVP.
	ansible-playbook playbooks/cv-container-testing.yml --extra-vars "run_mode=delete" -i $(INVENTORY)

.PHONY: dhcp-configure
dhcp-configure: ## Configure DHCP server with topology information.
	ansible-playbook playbooks/dc1-ztp-configuration.yml -i $(INVENTORY)

################################################################################
# Repository Management
################################################################################

.PHONY: repo-rebuild
repo-rebuild: ## Delete previously generated outputs
	ansible-playbook playbooks/cleanup-outputs.yml -i $(INVENTORY)

.PHONY: repo-clean
repo-clean: ## Delete previously generated outputs
	sh playbooks/repository-cleanup.sh
