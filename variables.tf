variable "enabled" {
  type        = "string"
  default     = "1"
  description = "Allow to create or not when used as a module"
}

variable "flavor_definitions" {
  type = list(map(any))
  description = "List of flavor definitions"
}
