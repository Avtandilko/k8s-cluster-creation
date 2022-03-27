resource "google_project_service" "project" {
  service            = "container.googleapis.com"
  disable_on_destroy = false
}