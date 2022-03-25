module "gke" {
  source     = "../../modules/gke"
  project_id = "playground-s-11-c5d3107d"
  region     = "us-west1"
}