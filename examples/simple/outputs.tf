output "flavor_names" {
  description = "The result of the random_shuffle module"
  value       = ["${module.flavor.flavor_names}"]
}
