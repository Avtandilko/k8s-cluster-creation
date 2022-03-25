output "region" {
  description = <<-EOT
    GCloud Region
  EOT
  value       = var.region
}

output "project_id" {
  description = <<-EOT
    GCloud Project ID
  EOT
  value       = var.project_id
}

output "kubernetes_cluster_name" {
  description = <<-EOT
    GKE Cluster Name
  EOT
  value       = google_container_cluster.primary.name
}

output "kubernetes_cluster_host" {
  description = <<-EOT
    GKE Cluster Host
  EOT
  value       = google_container_cluster.primary.endpoint
}

output "kubernetes_client_key" {
  description = <<-EOT
      Base64 encoded private key used by clients to authenticate to the cluster endpoint"
  EOT
  value       = google_container_cluster.primary.master_auth.0.client_key
  sensitive   = true
}

output "kubernetes_cluster_ca_certificate" {
  description = <<-EOT
    Base64 encoded public certificate that is the root of trust for the cluster
  EOT
  value       = google_container_cluster.primary.master_auth.0.cluster_ca_certificate
}

