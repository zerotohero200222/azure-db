resource "azurerm_postgresql_flexible_server" "psql" {
  name                   = var.psql_server_name
  resource_group_name    = var.resource_group_name
  location               = var.location
  administrator_login    = var.psql_admin_username
  administrator_password = var.psql_admin_password
  version                = "13"

  storage_mb             = 32768  # Free-tier size
  sku_name               = "B1ms" # Free/low-cost
  zone                   = "1"

  backup_retention_days        = 7
  geo_redundant_backup_enabled = false
  auto_grow_enabled            = true

  authentication {
    password_enabled = true
  }
}
