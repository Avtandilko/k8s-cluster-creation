variable "enable_ingress_nginx" {
  description = <<-EOT
    (Optional) Enable installation of ingress-nginx Helm chart
    to Kubernetes cluster
  EOT
  type        = bool
  default     = false
}


