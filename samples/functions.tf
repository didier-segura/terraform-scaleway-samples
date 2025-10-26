resource "scaleway_function_namespace" "example" {
  name   = "example-namespace"
  region = "fr-par"
}

resource "scaleway_function" "example" {
  name         = "example-function"
  namespace_id = scaleway_function_namespace.example.id
  runtime      = "python39"
  handler      = "Handle"
  privacy      = "private"
  region       = "fr-par"
  tags = [
    "ecoscalpel:function:consumption_gb_s=8000",
    "ecoscalpel:function:requests=1500000",
  ]
}
