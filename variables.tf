variable "repository_environments_lookup" {
  description = <<EOT
Map of repository_environments_lookup, attributes below
Required:
    - repository
EOT

  type = map(object({
    repository = string
  }))
}

