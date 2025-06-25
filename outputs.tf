output "psql_fqdn" {
  value = azurerm_postgresql_flexible_server.psql.fqdn
  description = "PostgreSQL server fully qualified domain name"
}
