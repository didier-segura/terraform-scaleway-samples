terraform {
  # Terraform latest version
  required_version = "= 1.13.2"

  required_providers {
    scaleway = {
      source  = "scaleway/scaleway"
      version = "2.59.0"
    }
  }
}
