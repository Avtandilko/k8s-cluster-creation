terraform {
  required_version = ">= 1.1.0"

  required_providers {
    google = {
      # Official Terraform registry doesn't work in Russia. Latest vesrion in Yandex.Cloud registry is 4.12
      source  = "terraform-registry.storage.yandexcloud.net/hashicorp/google"
      version = "~> 4.12"
    }
    helm = {
      # Official Terraform registry doesn't work in Russia
      source  = "terraform-registry.storage.yandexcloud.net/hashicorp/helm"
      version = "~> 2.4"
    }
  }
}