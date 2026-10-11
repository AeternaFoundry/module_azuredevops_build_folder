variable "build_folders" {
  description = <<EOT
Map of build_folders, attributes below
Required:
    - path
    - project_id
Optional:
    - description
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    path        = string
    project_id  = string
    description = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.build_folders : (
        length(v.path) >= 1
      )
    ])
    error_message = "[from validate.Path: invalid when len(value) < 1]"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

