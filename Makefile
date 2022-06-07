### Generic Variables
SHELL := /bin/zsh
GH_CLI := $(which gh)

### Ansible variables
# Inventory for EOS playbooks
INVENTORY ?= inventories/inetsix-lab
# Default Inventory file to look for
INVENTORY_FILE = inventory.yml
# VAULT file
VAULT_FILE ?= ~/bin/op-vault
# Name of the SCOPE to build. Used in --limit scope
SCOPE ?= avd,tooling
# For optional ansible options
ANSIBLE_ARGS ?= --skip-tags debug --diff
# Email to login with Mysocket.io
EMAIL ?=
# Topology file generated for containerlab
CLAB_TOPO ?= containerlabs.yml
# EAPI NAT Host
JUMP ?= 10.73.1.27

# Ansible Execution builder
EE_FILE ?= docker-images/ansible-ee-avd/execution-environment-default.yml
EE_IMAGE ?= titom73/ansible-ee-avd
EE_TAG ?= stable-2.12-devel

.PHONY: help
help: ## Display help message (*: main entry points / []: part of an entry point)
	@grep -E '^[0-9a-zA-Z_-]+\.*[0-9a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'


################################################################################
### Generic commands & aliases
################################################################################

.PHONY: build
build: build-avd build-tooling build-clab ## Build AVD topology, tooling configuration and Containerlab topology

.PHONY: push
push: push-clab ## Alias to push configuration to default lab

.PHONY: clean
clean: clab-clean clean-avd  ## Cleanup local environment (AVD and Containerlab)

.PHONE: deploy
deploy: deploy-clab

################################################################################
### AVD build & deploy
################################################################################

.PHONY: build-avd
build-avd: ## Run ansible playbook to build EVPN SCOPE configuration for generic EOS AVD topology and NO CV (No Documentation)
	ansible-playbook playbooks/topology/avd-build-and-deploy.yml --vault-password-file=$(VAULT_FILE) --tags build --skip-tags documentation --limit $(SCOPE) -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

.PHONY: build-tooling
build-tooling: ## Run ansible playbook to build EVPN SCOPE configuration for generic EOS AVD topology and NO CV (No Documentation)
	ansible-playbook playbooks/topology/avd-build-and-deploy.yml --vault-password-file=$(VAULT_FILE) --tags build --skip-tags documentation --limit tooling -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

.PHONY: build-avd-complete
build-avd-complete: ## Run ansible playbook to build EVPN SCOPE configuration for generic EOS AVD topology and NO CV (No Documentation)
	ansible-playbook playbooks/topology/avd-build-and-deploy.yml --vault-password-file=$(VAULT_FILE) --tags build --limit $(SCOPE) -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

.PHONY: push-clab
push-clab: ## Run ansible playbook to push previsouly generated configurations via eAPI
	ansible-playbook playbooks/topology/avd-build-and-deploy.yml --vault-password-file=$(VAULT_FILE) --tags "deploy_eapi" --extra-vars "ansible_port=443" --limit $(SCOPE) -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

.PHONY: push-jump
push-jump: ## Run ansible playbook to push previsouly generated configurations via eAPI
	ansible-playbook playbooks/topology/avd-build-and-deploy.yml --vault-password-file=$(VAULT_FILE) --tags "deploy_eapi"  --limit $(SCOPE) -i $(INVENTORY)/$(INVENTORY_FILE) --skip-tags debug --diff --extra-vars "ansible_host=$(JUMP)" $(ANSIBLE_ARGS)

.PHONY: clean-avd
clean-avd: ## Clenup Build environment
	cd $(INVENTORY) && rm -rf intended && rm -rf documentation && rm -rf config_backup && rm -f .$(CLAB_TOPO)

################################################################################
### AVD Tools
################################################################################

# .PHONY: eos-backup
# eos-backup: ## Backup current running configuration
# 	ansible-playbook playbooks/eos-configuration-backup.yml --limit $(SCOPE) -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

# .PHONY: eos-snapshot
# eos-snapshot: ## Extract commands outputs
# 	ansible-playbook playbooks/eos-snapshot.yml --limit $(SCOPE) -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

# .PHONY: eos-states-validation
# eapi-states-validation: ## eapi-states-validation description
# 	ansible-playbook playbooks/eos-states-validation.yml --limit $(SCOPE) -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

################################################################################
### Containerlab Tools
################################################################################

.PHONY: build-clab
build-clab:
	ansible-playbook playbooks/topology/containerlab-build-topology-file.yml -i $(INVENTORY)/$(INVENTORY_FILE) --skip-tags debug --diff --vault-password-file=$(VAULT_FILE)

.PHONY: deploy-clab
deploy-clab: ## Deploy containerlab topology
	cd ${INVENTORY} && sudo -E containerlab deploy --topo ${CLAB_TOPO} --reconfigure

.PHONY: destroy-clab
destroy-clab:  ## Destroy Containerlab topology
	cd ${INVENTORY} && sudo containerlab destroy --topo ${CLAB_TOPO}

.PHONY: clab-clean
clab-clean: destroy-clab ## Cleanup Containerlab previous builds
	cd ${INVENTORY} && sudo rm -rf clab-*/*

.PHONY: mysocket-login
mysocket-login: ## Login Mysocket.io with Containerlab
	cd ${INVENTORY} && sudo -E containerlab tools mysocketio login -e ${EMAIL}

.PHONY: reload-clab
reload-clab: clab-clean build-clab deploy-clab

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
	ansible-builder build --tag $(EE_IMAGE):$(EE_TAG) --container-runtime docker -f $(EE_FILE) --build-arg EE_BASE_IMAGE=quay.io/ansible/ansible-runner:$(EE_TAG)

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


