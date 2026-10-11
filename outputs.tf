output "repository_environments_lookup_id" {
  description = "Map of id values across all repository_environments_lookup, keyed the same as var.repository_environments_lookup"
  value       = { for k, v in data.github_repository_environments.repository_environments_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "repository_environments_lookup_environments" {
  description = "Map of environments values across all repository_environments_lookup, keyed the same as var.repository_environments_lookup"
  value       = { for k, v in data.github_repository_environments.repository_environments_lookup : k => v.environments if v.environments != null && length(v.environments) > 0 }
}
output "repository_environments_lookup_repository" {
  description = "Map of repository values across all repository_environments_lookup, keyed the same as var.repository_environments_lookup"
  value       = { for k, v in data.github_repository_environments.repository_environments_lookup : k => v.repository if v.repository != null && length(v.repository) > 0 }
}

