output "kubernetes_cluster_name" {
  description = <<-EOT
    GKE Cluster Name
  EOT
  value       = module.gke.kubernetes_cluster_name
}

output "kubernetes_cluster_host" {
  description = <<-EOT
    GKE Cluster Host
  EOT
  value       = module.gke.kubernetes_cluster_host
}

output "kubernetes_client_key" {
  description = <<-EOT
      Base64 encoded private key used by clients to authenticate to the cluster endpoint"
  EOT
  value       = module.gke.kubernetes_client_key
  sensitive   = true
}

output "kubernetes_cluster_ca_certificate" {
  description = <<-EOT
    Base64 encoded public certificate that is the root of trust for the cluster
  EOT
  value       = module.gke.kubernetes_cluster_ca_certificate
}