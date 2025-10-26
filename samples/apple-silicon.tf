resource "scaleway_apple_silicon_server" "example_no_vpc" {
  type = "M2-M"
  zone = "fr-par-1"

  # Optional commitment_type values like "monthly-1" will make EcoScalpel use monthly pricing.
  # commitment_type = "duration_24h"
}



resource "scaleway_apple_silicon_server" "example_vpc" {
  type = "M2-M"
  zone = "fr-par-1"
  enable_vpc = true
  private_network {
    id = "660cf64a-0144-4c14-8984-91c3c23d241d"
  }
  # Optional commitment_type values like "monthly-1" will make EcoScalpel use monthly pricing.
  # commitment_type = "duration_24h"
}
