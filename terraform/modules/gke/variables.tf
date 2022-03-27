variable "region" {
  description = <<-EOT
    (Required) GCP Region"
  EOT
  type        = string
}

variable "gke_num_nodes" {
  description = <<-EOT
    (Optional) Number of gke nodes
  EOT
  default     = 1
  type        = number
}

variable "subnet_ip_cidr_range" {
  description = <<-EOT
    (Optional) CIDR range for the GKE subnet"
  EOT
  default     = "10.10.0.0/24"
  type        = string
}
