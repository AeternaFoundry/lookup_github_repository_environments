output "repository_environments_lookup_id" {
  description = "Map of id values across all repository_environments_lookup, keyed the same as var.repository_environments_lookup"
  value       = { for k, v in data.github_repository_environments.repository_environments_lookup : k => v.id }
}
output "repository_environments_lookup_environments" {
  description = "Map of environments values across all repository_environments_lookup, keyed the same as var.repository_environments_lookup"
  value       = { for k, v in data.github_repository_environments.repository_environments_lookup : k => v.environments }
}
output "repository_environments_lookup_repository" {
  description = "Map of repository values across all repository_environments_lookup, keyed the same as var.repository_environments_lookup"
  value       = { for k, v in data.github_repository_environments.repository_environments_lookup : k => v.repository }
}

