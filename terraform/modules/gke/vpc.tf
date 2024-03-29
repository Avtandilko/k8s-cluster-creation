resource "google_compute_network" "vpc" {
  name                    = "primary-vpc"
  auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "subnet" {
  name          = "primary-subnet"
  region        = var.region
  network       = google_compute_network.vpc.name
  ip_cidr_range = var.subnet_ip_cidr_range
}