resource "openstack_compute_flavor_v2" "this" {
  count = "${length(var.flavor_definitions) > 0 ? var.enabled * length(var.flavor_definitions) : 0}"

  name      = "${lookup(var.flavor_definitions[count.index], "name")}"
  ram       = "${lookup(var.flavor_definitions[count.index], "ram")}"
  vcpus     = "${lookup(var.flavor_definitions[count.index], "vcpu")}"
  disk      = "${lookup(var.flavor_definitions[count.index], "disk")}"
  is_public = "true"
}
