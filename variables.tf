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

variable "selector" {
  description = "The selector, a map, which is used  for dependencies or collaborations."
  type        = map(any)
  default     = {}
}

variable "endpoint_internal" {
  description = "The internal endpoints of the resource."
  type        = list(string)
  default     = []
}

variable "endpoint_internal_readonly" {
  description = "The internal readonly endpoints of the resource."
  type        = list(string)
  default     = []
}

variable "password" {
  description = "The password of the redis service."
  type        = string
  sensitive   = true
}

