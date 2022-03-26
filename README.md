# k8s-cluster-creation

## Prerequisites

The following utilities must be installed on the workstation:

* Terraform (1.1.x)
* Helm (3.x)
* gcloud
* python3

❗❗❗ WARNING ❗❗❗

null-provisioner issues `gcloud container clusters get-credentials` command, that add new context into current kubeconfig and switch current context

## Description

### BISA model

Base - infrastructure - service - app model is a way to decompose overall infrastructure into different layers

picture

#### Base

The main goal of this step is to prepare GCP project:

* Create project
* Set up IAM users and roles
* Enable APIs
* Enable billing
* ...

#### Infrastructure

The main goal of this step is to create cloud resources:

* GKE
* Network resources (VPC, subnets)
* Managed databases
* ...

#### Service

The main goal of this step is to prepare Kubernetes cluster for application deploy and create infrastructure components inside Kubernetes:

* Ingress
* Monitoring and logging tools
* RBAC tools
* ...

#### Application

The main goal of this step is to provision application and provide simple way to update it. In real world it should be done via CI/CD tools like GitLab CI, Circle CI, etc...

## Checklist

* [x] Write simple PHP application
* [x] Write Helm Chart for simple PHP application
* [x] Write Terraform code for GKE cluster provisioning
* [x] Write Terraform code for ingress-nginx provisioning or use GKE load balancer
* [ ] Write Terraform code for application provisioning
* [x] Write pytest code for application availability check
* [ ] Create makefile or CI/CD configuration

PHP App

* Code
* docker build . -t avtandilko/php-app:v1

To improve:

* Remove hack with postStart hook for nginx deployment in Helm chart
* Move Terraform state to S3
* Enable container.googleapis.com via Terraform before GKE provisioning
* Add linters for Terraform
* Provide a better way of authorization for Kubernetes and Helm Terraform providers

## Steps

* Authorize to GCP via gcloud (see https://registry.terraform.io/providers/hashicorp/google/latest/docs/guides/provider_reference#authentication)

```bash
gcloud auth application-default login --project=<project id>
gcloud auth login
```

* ~Install ingress-nginx and application to cluster (ToDo: manual steps now)~

```bash
helm upgrade --install ingress-nginx --version=4.0.18 ingress-nginx/ingress-nginx -n ingress-nginx
helm upgrade --install app . -n app -f values.yaml
```

* Add external ip of ingress-nginx service to /etc/hosts file with `php-app.example` domain name (don't have any public DNS now and can't buy it)
