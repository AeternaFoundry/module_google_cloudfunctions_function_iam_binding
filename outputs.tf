output "cloudfunctions_function_iam_bindings_id" {
  description = "Map of id values across all cloudfunctions_function_iam_bindings, keyed the same as var.cloudfunctions_function_iam_bindings except keys with no id are omitted"
  value       = { for k, v in google_cloudfunctions_function_iam_binding.cloudfunctions_function_iam_bindings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloudfunctions_function_iam_bindings_cloud_function" {
  description = "Map of cloud_function values across all cloudfunctions_function_iam_bindings, keyed the same as var.cloudfunctions_function_iam_bindings except keys with no cloud_function are omitted"
  value       = { for k, v in google_cloudfunctions_function_iam_binding.cloudfunctions_function_iam_bindings : k => v.cloud_function if v.cloud_function != null && length(v.cloud_function) > 0 }
}
output "cloudfunctions_function_iam_bindings_condition" {
  description = "Map of condition values across all cloudfunctions_function_iam_bindings, keyed the same as var.cloudfunctions_function_iam_bindings except keys with no condition are omitted"
  value       = { for k, v in google_cloudfunctions_function_iam_binding.cloudfunctions_function_iam_bindings : k => one(v.condition) if v.condition != null && length(v.condition) > 0 }
}
output "cloudfunctions_function_iam_bindings_etag" {
  description = "Map of etag values across all cloudfunctions_function_iam_bindings, keyed the same as var.cloudfunctions_function_iam_bindings except keys with no etag are omitted"
  value       = { for k, v in google_cloudfunctions_function_iam_binding.cloudfunctions_function_iam_bindings : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "cloudfunctions_function_iam_bindings_members" {
  description = "Map of members values across all cloudfunctions_function_iam_bindings, keyed the same as var.cloudfunctions_function_iam_bindings except keys with no members are omitted"
  value       = { for k, v in google_cloudfunctions_function_iam_binding.cloudfunctions_function_iam_bindings : k => v.members if v.members != null && length(v.members) > 0 }
}
output "cloudfunctions_function_iam_bindings_project" {
  description = "Map of project values across all cloudfunctions_function_iam_bindings, keyed the same as var.cloudfunctions_function_iam_bindings except keys with no project are omitted"
  value       = { for k, v in google_cloudfunctions_function_iam_binding.cloudfunctions_function_iam_bindings : k => v.project if v.project != null && length(v.project) > 0 }
}
output "cloudfunctions_function_iam_bindings_region" {
  description = "Map of region values across all cloudfunctions_function_iam_bindings, keyed the same as var.cloudfunctions_function_iam_bindings except keys with no region are omitted"
  value       = { for k, v in google_cloudfunctions_function_iam_binding.cloudfunctions_function_iam_bindings : k => v.region if v.region != null && length(v.region) > 0 }
}
output "cloudfunctions_function_iam_bindings_role" {
  description = "Map of role values across all cloudfunctions_function_iam_bindings, keyed the same as var.cloudfunctions_function_iam_bindings except keys with no role are omitted"
  value       = { for k, v in google_cloudfunctions_function_iam_binding.cloudfunctions_function_iam_bindings : k => v.role if v.role != null && length(v.role) > 0 }
}

