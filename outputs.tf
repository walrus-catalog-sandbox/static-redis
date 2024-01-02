locals {
  endpoints = flatten([
    for c in var.hosts : format("%s:%d", c, var.port)
  ])
  endpoints_readonly = flatten([
    for c in(var.hosts_readonly != null ? var.hosts_readonly : []) : format("%s:%d", c, var.port)
  ])
}

#
# Orchestration
#

output "context" {
  description = "The input context, a map, which is used for orchestration."
  value       = var.context
}

output "refer" {
  description = "The refer, a map, including hosts, ports and account, which is used for dependencies or collaborations."
  sensitive   = true
  value = {
    schema = "static:redis"
    params = {
      selector           = {}
      hosts              = var.hosts
      hosts_readonly     = var.hosts_readonly
      port               = var.port
      endpoints          = local.endpoints
      endpoints_readonly = local.endpoints_readonly
      password           = nonsensitive(var.password)
    }
  }
}

#
# Reference
#

output "connection" {
  description = "The connection, a string combined host and port, might be a comma separated string or a single string."
  value       = join(",", local.endpoints)
}

output "connection_readonly" {
  description = "The readonly connection, a string combined host and port, might be a comma separated string or a single string."
  value       = join(",", local.endpoints_readonly)
}

output "address" {
  description = "The address, a string only has host, might be a comma separated string or a single string."
  value       = join(",", var.hosts)
}

output "address_readonly" {
  description = "The readonly address, a string only has host, might be a comma separated string or a single string."
  value       = join(",", var.hosts_readonly)
}

output "port" {
  description = "The port of the service."
  value       = var.port
}

output "password" {
  value       = var.password
  description = "The password of the account to access the service."
  sensitive   = true
}
