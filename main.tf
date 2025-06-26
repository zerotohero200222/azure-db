resource "azurerm_resource_group" "psql_rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_postgresql_flexible_server" "psql" {
  name                   = var.psql_server_name
  resource_group_name    = azurerm_resource_group.psql_rg.name
  location               = azurerm_resource_group.psql_rg.location
  administrator_login    = var.psql_admin_username
  administrator_password = var.psql_admin_password
  version                = "13"

  storage_mb             = 32768
  sku_name               = "B_Standard_B1ms"
  zone                   = "1"

  backup_retention_days        = 7
  geo_redundant_backup_enabled = false
  auto_grow_enabled            = true
}
