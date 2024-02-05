# Create GitLab repo for app lz module
## Creates a new group in Gitlab
resource "gitlab_group" "instruqt_group" {
  name             = var.gitlab_group_name
  path             = var.gitlab_group_path
  description      = "Group for Instruqt Learners"
  visibility_level = "public"
}

## Creates a new project under the Instruqt Group
resource "gitlab_project" "lab_web_app_repo" {
  name                   = var.gitlab_project_name
  namespace_id           = gitlab_group.instruqt_group.id
  visibility_level       = "public"
  default_branch         = "main"
  initialize_with_readme = false
}