variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "Resource Group Name for resources been created"
  type        = string
  default     = "restaurantfetch"
}

variable "administrator_login" {
  description = "User name for Mysql Server Database"
  type        = string
  default     = "mysqladmin"
}

variable "administrator_login_password" {
  description = "Login Password for Mysql Database"
  type        = string
  default     = "assignment#123"
}

variable "repo_url" {
  description = "URL for the Git Repo to be deployed."
  type        = string
  default     = "https://github.com/Eglodji1618/simple_webapp_project/tree/main/web-app"
}
