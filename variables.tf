variable "psql_server_name" {
  description = "PostgreSQL server name"
  type        = string
}

variable "resource_group_name" {
  description = "Azure resource group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "psql_admin_username" {
  description = "DB admin username"
  type        = string
}

variable "psql_admin_password" {
  description = "DB admin password"
  type        = string
  sensitive   = true
}
