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

variable "client_id" {
  type        = string
  description = "Azure Client ID"
}

variable "client_secret" {
  type        = string
  description = "Azure Client Secret"
  sensitive   = true
}

variable "subscription_id" {
  type        = string
  description = "Azure Subscription ID"
}

variable "tenant_id" {
  type        = string
  description = "Azure Tenant ID"
}
