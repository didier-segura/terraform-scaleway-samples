resource "scaleway_redis_cluster" "example-par2" {
  name         = "example-redis-cluster"
  version      = "7.0.10"
  node_type    = "RED1-XS"
  zone         = "fr-par-2"
  user_name    = "example_user"
  password     = "change_me_please"
  cluster_size = 3
  tls_enabled  = true

  settings = {
    "maxmemory-policy" = "allkeys-lru"
  }

  acl {
    ip          = "0.0.0.0/0"
    description = "Allow all"
  }
}

resource "scaleway_redis_cluster" "example-par1" {
  name         = "example-redis-cluster"
  version      = "7.0.10"
  node_type    = "RED1-XS"
  zone         = "fr-par-1"
  user_name    = "example_user"
  password     = "change_me_please"
  cluster_size = 3
  tls_enabled  = true

  settings = {
    "maxmemory-policy" = "allkeys-lru"
  }

  acl {
    ip          = "0.0.0.0/0"
    description = "Allow all"
  }
}

resource "scaleway_redis_cluster" "example-nl-ams-1" {
  name         = "example-redis-cluster"
  version      = "7.0.10"
  node_type    = "RED1-XS"
  zone         = "nl-ams-1"
  user_name    = "example_user"
  password     = "change_me_please"
  cluster_size = 1
  tls_enabled  = true

  settings = {
    "maxmemory-policy" = "allkeys-lru"
  }

  acl {
    ip          = "0.0.0.0/0"
    description = "Allow all"
  }
}

resource "scaleway_redis_cluster" "example-pl-waw-2" {
  name         = "example-redis-cluster"
  version      = "7.0.10"
  node_type    = "RED1-XS"
  zone         = "pl-waw-2"
  user_name    = "example_user"
  password     = "change_me_please"
  cluster_size = 2
  tls_enabled  = true

  settings = {
    "maxmemory-policy" = "allkeys-lru"
  }

  acl {
    ip          = "0.0.0.0/0"
    description = "Allow all"
  }
}