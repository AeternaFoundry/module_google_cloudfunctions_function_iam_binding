variable "cloudfunctions_function_iam_bindings" {
  description = <<EOT
Map of cloudfunctions_function_iam_bindings, attributes below
Required:
    - cloud_function
    - members
    - role
Optional:
    - project
    - region
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    cloud_function = string
    members        = set(string)
    role           = string
    project        = optional(string)
    region         = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

