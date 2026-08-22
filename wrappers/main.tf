module "wrapper" {
  source = "../"

  for_each = var.items

  nexus_routing_rule = try(each.value.nexus_routing_rule, var.defaults.nexus_routing_rule, [])
}
