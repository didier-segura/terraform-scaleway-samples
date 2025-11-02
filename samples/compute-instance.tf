resource "scaleway_instance_ip" "public_ip1" {
  zone = "fr-par-1"
}

resource "scaleway_instance_ip" "public_ip2" {
  zone = "fr-par-1"
}

resource "scaleway_instance_ip" "public_ip3" {
  zone = "fr-par-1"
}

resource "scaleway_instance_server" "example1" {
  type  = "DEV1-S"
  image = "ubuntu_focal"
  zone  = "fr-par-1"
  root_volume {
    volume_type = "sbs_volume"
    sbs_iops    = 5000
    size_in_gb  = 50
  }
  ip_id = scaleway_instance_ip.public_ip1.id
}

resource "scaleway_instance_server" "example2" {
  type  = "DEV1-S"
  image = "ubuntu_focal"
  zone  = "fr-par-1"
  root_volume {
    volume_type = "sbs_volume"
    sbs_iops    = 15000
    size_in_gb  = 500
  }
  ip_id = scaleway_instance_ip.public_ip2.id
}

resource "scaleway_instance_server" "example3" {
  type  = "DEV1-S"
  image = "ubuntu_focal"
  zone  = "fr-par-1"
  root_volume {
    volume_type = "l_ssd"
    size_in_gb  = 20
  }
  ip_id = scaleway_instance_ip.public_ip3.id
}
