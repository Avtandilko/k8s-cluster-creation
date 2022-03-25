terraform {
  required_providers {
    helm = {
      # Official Terraform registry doesn't work in Russia
      source  = "terraform-registry.storage.yandexcloud.net/hashicorp/helm"
      version = "~> 2.4"
    }
    kubernetes = {
      # Official Terraform registry doesn't work in Russia 
      source  = "terraform-registry.storage.yandexcloud.net/hashicorp/kubernetes"
      version = "~> 2.9"
    }
  }
}