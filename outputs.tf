output "build_folders_id" {
  description = "Map of id values across all build_folders, keyed the same as var.build_folders"
  value       = { for k, v in azuredevops_build_folder.build_folders : k => v.id }
}
output "build_folders_description" {
  description = "Map of description values across all build_folders, keyed the same as var.build_folders"
  value       = { for k, v in azuredevops_build_folder.build_folders : k => v.description }
}
output "build_folders_path" {
  description = "Map of path values across all build_folders, keyed the same as var.build_folders"
  value       = { for k, v in azuredevops_build_folder.build_folders : k => v.path }
}
output "build_folders_project_id" {
  description = "Map of project_id values across all build_folders, keyed the same as var.build_folders"
  value       = { for k, v in azuredevops_build_folder.build_folders : k => v.project_id }
}

