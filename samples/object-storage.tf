resource "scaleway_object_bucket" "example_bucket" {
  name   = "example-bucket"
  region = "fr-par"

  tags = {
    # Estimated monthly usage for EcoScalpel
    "ecoscalpel:object_storage:standard_gb"           = "500"
    "ecoscalpel:object_storage:glacier_gb"            = "200"
    "ecoscalpel:object_storage:bandwidth_external_gb" = "100"
  }
}
