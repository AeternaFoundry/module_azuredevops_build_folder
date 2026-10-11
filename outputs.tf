output "build_folders_id" {
  description = "Map of id values across all build_folders, keyed the same as var.build_folders except keys with no id are omitted"
  value       = { for k, v in azuredevops_build_folder.build_folders : k => v.id if v.id != null && length(v.id) > 0 }
}
output "build_folders_description" {
  description = "Map of description values across all build_folders, keyed the same as var.build_folders except keys with no description are omitted"
  value       = { for k, v in azuredevops_build_folder.build_folders : k => v.description if v.description != null && length(v.description) > 0 }
}
output "build_folders_path" {
  description = "Map of path values across all build_folders, keyed the same as var.build_folders except keys with no path are omitted"
  value       = { for k, v in azuredevops_build_folder.build_folders : k => v.path if v.path != null && length(v.path) > 0 }
}
output "build_folders_project_id" {
  description = "Map of project_id values across all build_folders, keyed the same as var.build_folders except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_build_folder.build_folders : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}

