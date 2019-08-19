variable "enabled" {
  type        = "string"
  default     = "1"
  description = "Allow to create or not when used as a module"
}

variable "flavor_definitions" {
  type        = list(map(any))
  description = "List of flavor definitions"
  default = [
    {
      name = "dinivas.small"
      ram  = "512"
      vcpu = "1"
      disk = "5"
    },
    {
      name = "dinivas.medium"
      ram  = "1024"
      vcpu = "1"
      disk = "10"
    },
    {
      name = "dinivas.large"
      ram  = "2024"
      vcpu = "1"
      disk = "10"
    },
    {
      name = "dinivas.xlarge"
      ram  = "4096"
      vcpu = "2"
      disk = "20"
    },
    {
      name = "dinivas.2xlarge"
      ram  = "8192"
      vcpu = "4"
      disk = "30"
    }
  ]
}
