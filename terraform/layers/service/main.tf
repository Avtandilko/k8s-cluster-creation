module "ingress-nginx" {
  source     = "../../modules/ingress-nginx"
  enable_ingress_nginx = true
}