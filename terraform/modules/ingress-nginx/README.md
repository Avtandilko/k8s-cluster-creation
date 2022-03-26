## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | ~> 2.4 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | ~> 2.8 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | ~> 2.4 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | ~> 2.8 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|

| helm_release.ingress_nginx | resource |

| kubernetes_namespace.ingress_nginx | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enable_ingress_nginx"></a> [enable\_ingress\_nginx](#input\_enable\_ingress\_nginx) | (Optional) Enable installation of ingress-nginx Helm chart<br>to Kubernetes cluster | `bool` | `false` | no |

## Outputs

No outputs.
