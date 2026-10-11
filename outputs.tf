output "application_lookup_application_id" {
  description = "Map of application_id values across all application_lookup, keyed the same as var.application_lookup except keys with no application_id are omitted"
  value       = { for k, v in data.gitlab_application.application_lookup : k => v.application_id if v.application_id != null && length(v.application_id) > 0 }
}
output "application_lookup_confidential" {
  description = "Map of confidential values across all application_lookup, keyed the same as var.application_lookup except keys with no confidential are omitted"
  value       = { for k, v in data.gitlab_application.application_lookup : k => v.confidential if v.confidential != null }
}
output "application_lookup_id" {
  description = "Map of id values across all application_lookup, keyed the same as var.application_lookup except keys with no id are omitted"
  value       = { for k, v in data.gitlab_application.application_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "application_lookup_name" {
  description = "Map of name values across all application_lookup, keyed the same as var.application_lookup except keys with no name are omitted"
  value       = { for k, v in data.gitlab_application.application_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "application_lookup_redirect_url" {
  description = "Map of redirect_url values across all application_lookup, keyed the same as var.application_lookup except keys with no redirect_url are omitted"
  value       = { for k, v in data.gitlab_application.application_lookup : k => v.redirect_url if v.redirect_url != null && length(v.redirect_url) > 0 }
}

