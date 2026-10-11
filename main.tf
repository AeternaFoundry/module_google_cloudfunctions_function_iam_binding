resource "google_cloudfunctions_function_iam_binding" "cloudfunctions_function_iam_bindings" {
  for_each = var.cloudfunctions_function_iam_bindings

  cloud_function = each.value.cloud_function
  members        = each.value.members
  role           = each.value.role
  project        = each.value.project
  region         = each.value.region

  dynamic "condition" {
    for_each = each.value.condition != null ? [each.value.condition] : []
    content {
      description = condition.value.description
      expression  = condition.value.expression
      title       = condition.value.title
    }
  }
}

