data "github_repository_environments" "repository_environments_lookup" {
  for_each = var.repository_environments_lookup

  repository = each.value.repository
}

