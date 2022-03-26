#!/bin/bash

# Provision base layer
terraform -chdir=terraform/layers/base init
terraform -chdir=terraform/layers/base plan
terraform -chdir=terraform/layers/base apply -auto-approve

# Provision infrastructure layer
terraform -chdir=terraform/layers/infrastructure init
terraform -chdir=terraform/layers/infrastructure plan
terraform -chdir=terraform/layers/infrastructure apply -auto-approve

# Provision service layer
terraform -chdir=terraform/layers/service init
terraform -chdir=terraform/layers/service plan
terraform -chdir=terraform/layers/service apply -auto-approve

# Provision application
helm upgrade --install php-app helm --namespace php-app --create-namespace --wait 

# Test application availability
python3 -m venv pytest/venv
source pytest/venv/bin/activate
pip install -r pytest/requirements.txt
pytest -v pytest/test.py