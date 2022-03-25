# k8s-cluster-creation

# Hardware

Yandex.Cloud
Ubuntu 20.04
2 vCPU, 2 GB RAM, 30Gb SSD

# Requirements

* k3s Kubernetes cluster

Checklist:

[x] Write simple PHP application
[x] Write Helm Chart for simple PHP application
[ ] Write Terraform code for GKE cluster provisioning
[ ] Write Terraform code for ingress-nginx provisioning or use GKE load balancer
[ ] Write Terraform code for application Helm Chart provisioning
[ ] Write pytest code for application availability check


PHP App:

* Code
* docker build . -t avtandilko/php-app:v1

To improve:

* Remove hack with postStart hook for nginx deployment in Helm chart


Steps:

* Fetch credentials from GCP (see https://registry.terraform.io/providers/hashicorp/google/latest/docs/guides/provider_reference#authentication) and place it into terraform/credentials.json file