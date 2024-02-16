resource "incus_project" "project" {
  name        = "demo"
  description = "Terraform provider example project"
  config = {
    "features.storage.volumes" = false
    "features.images"          = false
    "features.profiles"        = false
    "features.storage.buckets" = false
  }
}

