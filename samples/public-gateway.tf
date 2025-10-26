resource "scaleway_vpc_public_gateway" "vpc-gw-s" {
  name = "example-gateway"
  type = "VPC-GW-S"
  zone = "fr-par-1"
}

resource "scaleway_vpc_public_gateway" "vpc-gw-m" {
  name = "example-gateway"
  type = "VPC-GW-M"
  zone = "fr-par-1"
}

resource "scaleway_vpc_public_gateway" "vpc-gw-l" {
  name = "example-gateway"
  type = "VPC-GW-L"
  zone = "fr-par-1"
}

resource "scaleway_vpc_public_gateway" "vpc-gw-xl" {
  name = "example-gateway"
  type = "VPC-GW-XL"
  zone = "fr-par-1"
}