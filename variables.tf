variable "gitlab_token" {
  type = string
}

variable "gitlab_base_url" {
  type    = string
  default = "https://gitlab.com"
}

variable "gitlab_project_name" {
  type    = string
  default = "lab-web-app"
}

variable "gitlab_group_name" {
  type    = string
  default = "Instruqt Learners"
}

variable "gitlab_group_path" {
  type    = string
  default = "instruqt-learners"
}