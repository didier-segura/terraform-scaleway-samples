resource "scaleway_lb" "example-public" {
  name               = "example-lb"
  type               = "LB-S"
  zone               = "fr-par-1"
  assign_flexible_ip = true
}

resource "scaleway_lb" "example-private" {
  name               = "example-lb"
  type               = "LB-S"
  zone               = "fr-par-1"
  assign_flexible_ip = false
}

resource "scaleway_lb_ip" "main" {
  zone = "fr-par-1"
}

resource "scaleway_lb" "base" {
  ip_ids = [scaleway_lb_ip.main.id]
  zone   = "fr-par-1"
  type   = "LB-S"
}
