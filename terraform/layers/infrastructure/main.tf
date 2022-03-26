module "gke" {
  source     = "../../modules/gke"
  project_id = "playground-s-11-884f1834"
  region     = "us-west1"
}