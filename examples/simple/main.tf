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
      is_public = false
    }
  ]
}
