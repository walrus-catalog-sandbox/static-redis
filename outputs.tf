output "context" {
  description = "The input context, a map, which is used for orchestration."
  value       = var.context
}

output "selector" {
  description = "The selector, a map, which is used for dependencies or collaborations."
  value       = var.selector
}

output "endpoint_internal" {
  description = "The internal endpoints, a string list, which are used for internal access."
  value       = var.endpoint_internal
}

output "endpoint_internal_readonly" {
  description = "The internal readonly endpoints, a string list, which are used for internal readonly access."
  value       = var.endpoint_internal_readonly
}

output "password" {
  value       = var.password
  description = "The password of redis service."
  sensitive   = true
}