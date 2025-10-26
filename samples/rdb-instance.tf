resource "scaleway_rdb_instance" "postgresql_example" {
  node_type   = "DB-DEV-S"
  engine      = "PostgreSQL-15"
  region      = "fr-par"
  volume_type = "lssd"
}

resource "scaleway_rdb_instance" "mysql_ha_example" {
  node_type         = "DB-POP2-4C-16G"
  engine            = "MySQL-8"
  region            = "fr-par"
  is_ha_cluster     = true
  volume_type       = "sbs_5k"
  volume_size_in_gb = 100
}

resource "scaleway_rdb_instance" "mysql_standalone_example" {
  node_type         = "DB-POP2-4C-16G"
  engine            = "MySQL-8"
  region            = "fr-par"
  volume_type       = "sbs_15k"
  volume_size_in_gb = 100
}