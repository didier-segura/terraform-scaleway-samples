resource "scaleway_k8s_cluster" "example_kapsule" {
  name                        = "example-kapsule"
  type                        = "kapsule-dedicated-4"
  version                     = "1.30.0"
  cni                         = "cilium"
  region                      = "fr-par"
  delete_additional_resources = true
}

resource "scaleway_k8s_pool" "example_kapsule_pool" {
  cluster_id = scaleway_k8s_cluster.example_kapsule.id
  name       = "example-pool"
  node_type  = "DEV1-M"
  size       = 7
  zone       = "fr-par-1"
}

resource "scaleway_k8s_cluster" "dedicated_8_kapsule" {
  name                        = "dedicated_8_kapsule"
  type                        = "kapsule-dedicated-8"
  version                     = "1.30.0"
  cni                         = "cilium"
  region                      = "fr-par"
  delete_additional_resources = true
}

resource "scaleway_k8s_pool" "dev_xl_kapsule_pool" {
  cluster_id = scaleway_k8s_cluster.dedicated_8_kapsule.id
  name       = "dev_xl_kapsule_pool"
  node_type  = "DEV1-XL"
  size       = 2
  zone       = "fr-par-1"
  root_volume_size_in_gb = 100
  root_volume_type       = "sbs_15k"
}

resource "scaleway_k8s_cluster" "dedicated_16_kapsule" {
  name                        = "dedicated_16_kapsule"
  type                        = "kapsule-dedicated-16"
  version                     = "1.30.0"
  cni                         = "cilium"
  region                      = "fr-par"
  delete_additional_resources = true
}

resource "scaleway_k8s_pool" "dev_l_kapsule_pool" {
  cluster_id = scaleway_k8s_cluster.dedicated_16_kapsule.id
  name       = "dev_l_kapsule_pool"
  node_type  = "DEV1-L"
  size       = 5
  zone       = "fr-par-1"
  root_volume_size_in_gb = 100
  root_volume_type       = "sbs_5k"
}

resource "scaleway_k8s_cluster" "example_kosmos" {
  name                        = "example-kosmos"
  type                        = "multicloud"
  version                     = "1.30.0"
  cni                         = "kilo"
  region                      = "nl-ams"
  delete_additional_resources = true
}

resource "scaleway_k8s_pool" "example_kosmos_pool" {
  cluster_id = scaleway_k8s_cluster.example_kosmos.id
  name       = "external-pool"
  node_type  = "external"
  size       = 0
  min_size   = 0
  zone       = "nl-ams-1"
}
