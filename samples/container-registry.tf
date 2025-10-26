resource "scaleway_registry_namespace" "example" {
  name   = "example-registry"
  region = "fr-par"

  description = <<EOT
Example namespace with EcoScalpel hints.
ecoscalpel:registry:storage_gb=200
ecoscalpel:registry:external_bandwidth_gb=60
EOT
}
