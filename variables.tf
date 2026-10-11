variable "application_lookup" {
  description = <<EOT
Map of application_lookup, attributes below
Required:
    - id
EOT

  type = map(object({
    id = string
  }))
}

