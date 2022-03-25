# k8s-cluster-creation

## Prerequisites

* Terraform (1.1.x)
* Helm (3.x)
* gcloud

❗❗❗ WARNING ❗❗❗

null-provisioner issues `gcloud container clusters get-credentials` command, that add new context into current kubeconfig and switch current context

## Checklist

* [x] Write simple PHP application
* [x] Write Helm Chart for simple PHP application
* [x] Write Terraform code for GKE cluster provisioning
* [ ] Write Terraform code for ingress-nginx provisioning or use GKE load balancer
* [ ] Write Terraform code for application provisioning
* [ ] Write pytest code for application availability check

PHP App:

* Code
* docker build . -t avtandilko/php-app:v1

To improve:

* Remove hack with postStart hook for nginx deployment in Helm chart
* Move Terraform state to S3
* Enable container.googleapis.com via Terraform before GKE provisioning

## Steps

* Authorize to GCP via gcloud (see https://registry.terraform.io/providers/hashicorp/google/latest/docs/guides/provider_reference#authentication):

```bash
gcloud auth application-default login --project=<project id>
gcloud auth login
```

* Install ingress-nginx and application to cluster (ToDo: manual steps now)
helm upgrade --install ingress-nginx --version=4.0.18 ingress-nginx/ingress-nginx -n ingress-nginx
helm upgrade --install app . -n app -f values.yaml

* Add external ip of ingress-nginx service to /etc/hosts file with `php-app.example` domain name (don't have any public DNS now and can't buy it)
