#!/bin/bash

# Provision base layer
terraform -chdir=terraform/layers/base init
terraform -chdir=terraform/layers/base plan
terraform -chdir=terraform/layers/base apply

# Provision service layer
terraform -chdir=terraform/layers/service init
terraform -chdir=terraform/layers/service plan
terraform -chdir=terraform/layers/service apply

# Provision app layer
terraform -chdir=terraform/layers/app init
terraform -chdir=terraform/layers/app plan
terraform -chdir=terraform/layers/app apply
