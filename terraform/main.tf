module "gke" {
  source     = "./modules/gke"
  project_id = "12345"
  region     = "eu-west1"
}