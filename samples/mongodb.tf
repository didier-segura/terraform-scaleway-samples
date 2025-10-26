resource "scaleway_mongodb_instance" "example" {
  name              = "example-mongodb"
  region            = "fr-par"
  node_type         = "POP2-4C-16G"
  node_number       = 3
  volume_type       = "sbs_5k"
  volume_size_in_gb = 150
}
