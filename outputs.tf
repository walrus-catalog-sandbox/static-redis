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
      selector       = {}
      hosts          = var.hosts
      hosts_readonly = var.hosts_readonly
      ports          = var.ports
      password       = nonsensitive(var.password)
    }
  }
}

#
# Reference
#

locals {
  endpoints = flatten([
    for c in var.hosts : formatlist("%s:%d", c, var.ports)
  ])
  endpoints_readonly = flatten([
    for c in(var.hosts_readonly != null ? var.hosts_readonly : []) : formatlist("%s:%d", c, var.ports)
  ])
}

output "connection" {
  description = "The connection, a string combined host and port, might be a comma string or a single string."
  value       = join(",", local.endpoints)
}

output "connection_readonly" {
  description = "The readonly connection, a string combined host and port, might be a comma string or a single string."
  value       = join(",", local.endpoints_readonly)
}

output "password" {
  value       = var.password
  description = "The password of Redis service."
  sensitive   = true
}

## UI display

output "endpoints" {
  description = "The endpoints, a string, might be a comma string or a single string."
  value       = local.endpoints
}

output "endpoints_readonly" {
  description = "The readonly endpoints, a string, might be a comma string or a single string."
  value       = local.endpoints_readonly
}
