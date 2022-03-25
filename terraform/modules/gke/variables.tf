variable "project_id" {
  description = "Project ID"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
}

variable "gke_num_nodes" {
  default     = 1
  description = "Number of gke nodes"
  type        = number
}

variable "subnet_ip_cidr_range" {
  default     = "10.10.0.0/24"
  description = "CIDR range for the GKE subnet"
  type        = string
}
