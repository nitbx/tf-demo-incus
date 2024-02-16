terraform {
  required_providers {
    incus = {
      source = "lxc/incus"
      version = "0.1.0"
    }
  }
}

provider "incus" {
  generate_client_certificates = true
  accept_remote_certificate    = true

  remote {
    name     = "demo"
    scheme   = "https"
    address  = "demo.example.com"
    default  = true
  }

}

