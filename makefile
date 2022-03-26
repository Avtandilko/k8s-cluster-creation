all: base infrastructure service application test

# Provision base layer
base:
	terraform -chdir=terraform/layers/base init
	terraform -chdir=terraform/layers/base plan
	terraform -chdir=terraform/layers/base apply -auto-approve

# Provision infrastructure layer
infrastructure:
	terraform -chdir=terraform/layers/infrastructure init
	terraform -chdir=terraform/layers/infrastructure plan
	terraform -chdir=terraform/layers/infrastructure apply -auto-approve

# Provision service layer
service:
	terraform -chdir=terraform/layers/service init
	terraform -chdir=terraform/layers/service plan
	terraform -chdir=terraform/layers/service apply -auto-approve

# Deploy application
application:
	helm upgrade --install php-app helm --namespace php-app --create-namespace --wait 

# Test application availability
test:
	python3 -m venv pytest/venv
	. ./pytest/venv/bin/activate
	pip install -r pytest/requirements.txt
	pytest -v pytest/test.py

# Clean all resources in cloud
clean:
    terraform -chdir=terraform/layers/service destroy -auto-approve
 	terraform -chdir=terraform/layers/infrastructure destroy -auto-approve
 	terraform -chdir=terraform/layers/base destroy -auto-approve
