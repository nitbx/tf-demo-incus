resource "incus_instance" "red" {
  name      = "test-red-${count.index}"
  count     = 1
  image     = "images:debian/12/cloud"
  ephemeral = false
  profiles  = ["${incus_profile.red.name}"]
  project   = incus_project.project.name
  wait_for_network = false
  config    = {
    "cloud-init.user-data" =  file("${path.module}/cloud-init/user-data")
  }
}

resource "incus_instance" "blue" {
  name      = "test-blue-${count.index}"
  count     = 1
  image     = "images:debian/12/cloud"
  ephemeral = false
  profiles  = ["${incus_profile.blue.name}"]
  project   = incus_project.project.name
  wait_for_network = false
  config    = {
    "cloud-init.user-data" =  file("${path.module}/cloud-init/user-data")
  }
}

resource "incus_instance" "purple" {
  name      = "test-purple-${count.index}"
  count     = 1
  image     = "images:debian/12/cloud"
  ephemeral = false
  profiles  = ["${incus_profile.purple.name}"]
  project   = incus_project.project.name
  wait_for_network = false
  config    = {
    "cloud-init.user-data" =  file("${path.module}/cloud-init/user-data")
  }
}
