data "gitlab_application" "application_lookup" {
  for_each = var.application_lookup

  id = each.value.id
}

