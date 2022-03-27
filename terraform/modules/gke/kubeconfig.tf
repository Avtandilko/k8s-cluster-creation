resource "null_resource" "configure_kubectl" {
  provisioner "local-exec" {
    command = "gcloud container clusters get-credentials ${google_container_cluster.primary.name} --region ${var.region}"
  }
  depends_on = [
    google_container_cluster.primary,
    google_container_node_pool.primary_nodes
  ]
}
