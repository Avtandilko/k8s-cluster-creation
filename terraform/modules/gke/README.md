## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | ~> 4.12 |
| <a name="requirement_null"></a> [null](#requirement\_null) | ~> 3.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | ~> 4.12 |
| <a name="provider_null"></a> [null](#provider\_null) | ~> 3.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|

| google_compute_network.vpc | resource |

| google_compute_subnetwork.subnet | resource |

| google_container_cluster.primary | resource |

| google_container_node_pool.primary_nodes | resource |

| null_resource.configure_kubectl | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_gke_num_nodes"></a> [gke\_num\_nodes](#input\_gke\_num\_nodes) | (Optional) Number of gke nodes | `number` | `1` | no |
| <a name="input_region"></a> [region](#input\_region) | (Required) GCP Region" | `string` | n/a | yes |
| <a name="input_subnet_ip_cidr_range"></a> [subnet\_ip\_cidr\_range](#input\_subnet\_ip\_cidr\_range) | (Optional) CIDR range for the GKE subnet" | `string` | `"10.10.0.0/24"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_kubernetes_client_key"></a> [kubernetes\_client\_key](#output\_kubernetes\_client\_key) | Base64 encoded private key used by clients to authenticate to the cluster endpoint" |
| <a name="output_kubernetes_cluster_ca_certificate"></a> [kubernetes\_cluster\_ca\_certificate](#output\_kubernetes\_cluster\_ca\_certificate) | Base64 encoded public certificate that is the root of trust for the cluster |
| <a name="output_kubernetes_cluster_host"></a> [kubernetes\_cluster\_host](#output\_kubernetes\_cluster\_host) | GKE Cluster Host |
| <a name="output_kubernetes_cluster_name"></a> [kubernetes\_cluster\_name](#output\_kubernetes\_cluster\_name) | GKE Cluster Name |
| <a name="output_region"></a> [region](#output\_region) | GCloud Region |
