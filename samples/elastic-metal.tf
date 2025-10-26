resource "scaleway_baremetal_server" "em_a116x_ssd_fr_par_1" {
  name  = "em-a116x-ssd-fr-par-1"
  offer = "8779d2c1-cd10-4a34-a006-cb5b1fb5cbc7" # Elastic Metal EM-A116X-SSD hourly offer
  zone  = "fr-par-1"
}

resource "scaleway_baremetal_server" "em_a116x_ssd_fr_par_2" {
  name  = "em-a116x-ssd-fr-par-2"
  offer = "7b3dae29-0658-4351-b8a7-7b97aef6efc2" # Elastic Metal EM-A116X-SSD monthly offer
  zone  = "fr-par-2"

  tags = [
    "ecoscalpel:private_network:bandwidth=10g",
  ]
}
