### Generic Variables
SHELL := /bin/zsh
GH_CLI := $(which gh)

### Ansible variables
# Inventory for EOS playbooks
INVENTORY ?= inventories/inetsix-eapi
# Default Inventory file to look for
INVENTORY_FILE = inventory.yml
# Name of the Fabric to build. Used in --limit scope
FABRIC ?= EAPI_FABRIC
# For optional ansible options
ANSIBLE_ARGS ?= --diff



.PHONY: help
help: ## Display help message (*: main entry points / []: part of an entry point)
	@grep -E '^[0-9a-zA-Z_-]+\.*[0-9a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'


################################################################################
### Installation process
################################################################################

.PHONY: install
setup-galaxy: ## Install arista collections using ansible galaxy
	ansible-galaxy collection install -r collections.yml

.PHONY: setup-development
setup-development: ## Setup development environment
	cd ../ && gh repo clone titom73/ansible-cvp
	cd ../ && gh repo clone titom73/ansible-avd
	cd ../ && gh repo clone titom73/ansible-inetsix


################################################################################
### Ansible Executor Engine
################################################################################

.PHONY: ee-build
ee-build: ## Build Ansible Execution Builder
	ansible-builder build --tag $(EE_IMAGE):$(EE_TAG) --container-runtime docker -f $(EE_FILE) --build-arg EE_BASE_IMAGE=quay.io/ansible/ansible-runner:stable-$(EE_TAG)-latest

.PHONY: ee-build-latest
ee-build-latest: ## Build Ansible Execution Builder
	ansible-builder build --tag $(EE_IMAGE):latest --container-runtime docker -f $(EE_FILE) --build-arg EE_BASE_IMAGE=quay.io/ansible/ansible-runner:latest

.PHONY: ee-runner
ee-runner: ## Execute ansible EE runner in interactive mode
	docker run -it --rm -v ${PWD}:/runner \
		-v ${PWD}/../ansible-avd:/ansible-avd \
		-v ${PWD}/../ansible-cvp:/ansible-cvp \
		-v ${PWD}../ansible-inetsix:/ansible-inetsix \
		$(EE_IMAGE):$(EE_TAG) $(EE_CMD)


################################################################################
### AVD with CVP targets
################################################################################

.PHONY: avd-cvp-build
avd-cvp-build:  ## Run ansible playbook to build EVPN Fabric configuration with DC1 and CV
	ansible-playbook playbooks/avd-cvp-deploy-generic.yml --tags build --limit $(FABRIC) -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

.PHONY: avd-cvp-provision
avd-cvp-provision: ## Run ansible playbook to deploy EVPN Fabric.
	ansible-playbook playbooks/avd-cvp-deploy-generic.yml --tags provision --limit CVP -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

.PHONY: avd-cvp-deploy
avd-cvp-deploy: ## Run ansible playbook to deploy EVPN Fabric.
	ansible-playbook playbooks/avd-cvp-deploy-generic.yml --extra-vars "execute_tasks=true" --tags "build,provision,apply" --limit $(FABRIC),CVP -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)


################################################################################
### AVD with EAPI targets
################################################################################

.PHONY: avd-eapi-build
avd-eapi-build: ## Run ansible playbook to build EVPN Fabric configuration for generic EOS AVD topology and NO CV (No Documentation)
	ansible-playbook playbooks/avd-eapi-generic.yml --tags build --skip-tags documentation --limit $(FABRIC) -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

.PHONY: avd-eapi-build-all
avd-eapi-build-all: ## Run ansible playbook to build EVPN Fabric configuration for generic EOS AVD topology and NO CV
	ansible-playbook playbooks/avd-eapi-generic.yml --tags build --limit $(FABRIC) -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

.PHONY: avd-eapi-apply
avd-eapi-apply: ## Run ansible playbook to Apply previously generated configuration
	ansible-playbook playbooks/avd-eapi-generic.yml --tags "deploy" --limit $(FABRIC) -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

.PHONY: avd-eapi-deploy
avd-eapi-deploy: ## Run ansible playbook to build EVPN Fabric configuration for generic EOS AVD topology and NO CV
	ansible-playbook playbooks/avd-eapi-generic.yml --tags "build, deploy" --skip-tags documentation --limit $(FABRIC) -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)


################################################################################
### EOS_CLI_CONFIG_GEN targets
################################################################################

.PHONY: cli-config-gen
cli-config-gen: ## Run ansible playbook to build EVPN Fabric configuration for generic EOS AVD topology
	ansible-playbook playbooks/avd-eos-cli-config-gen.yml -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)


################################################################################
### AVD Tools
################################################################################

.PHONY: eos-backup
eos-backup: ## Backup current running configuration
	ansible-playbook playbooks/eos-configuration-backup.yml --limit $(FABRIC) -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

.PHONY: eos-snapshot
eos-snapshot: ## Extract commands outputs
	ansible-playbook playbooks/eos-snapshot.yml --limit $(FABRIC) -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

.PHONY: eapi-states-validation
eapi-states-validation: ## eapi-states-validation description
	ansible-playbook playbooks/avd-eapi-states-validation.yml --limit $(FABRIC) -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)