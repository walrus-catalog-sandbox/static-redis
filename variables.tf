#
# Contextual Fields
#

variable "context" {
  description = <<-EOF
Receive contextual information. When Walrus deploys, Walrus will inject specific contextual information into this field.

Examples:
```
context:
  project:
    name: string
    id: string
  environment:
    name: string
    id: string
  resource:
    name: string
    id: string
```
EOF
  type        = map(any)
  default     = {}
}

#
# Connection Fields
#

variable "hosts" {
  description = "The host list of the Redis service."
  type        = list(string)
}

variable "hosts_readonly" {
  description = "The readonly host list of the Redis service."
  type        = list(string)
  default     = []
}

variable "port" {
  description = "The port of the Redis service."
  type        = number
  default     = 6379
}

variable "password" {
  description = "The password of the account to access the service."
  type        = string
  sensitive   = true
}
