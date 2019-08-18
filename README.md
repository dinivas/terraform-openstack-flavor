# Terraform Openstack flavor module

This module create Openstack flavor using provided infos.


## Examples

```
module "flavor" {
  source = "../../"

  flavor_definitions = [
    {
      name = "flavor.test1"
      ram  = "256"
      vcpu = "1"
      disk = "1"
    },
    {
      name = "flavor.test2"
      ram  = "512"
      vcpu = "1"
      disk = "2"
    }
  ]
}

```

## Inputs

```
variable "enabled" {
  type        = "string"
  default     = "1"
  description = "Allow to create or not when used as a module"
}

variable "flavor_definitions" {
  type = list(map(any))
  description = "List of flavor definitions"
}
```

## Outputs

```
output "flavor_names" {
  description = ""
  value       = ["${openstack_compute_flavor_v2.this.*.name}"]
}
```