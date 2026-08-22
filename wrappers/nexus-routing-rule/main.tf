module "wrapper" {
  source = "../../modules/nexus-routing-rule"

  for_each = var.items

  description = try(each.value.description, var.defaults.description, "")
  matchers    = try(each.value.matchers, var.defaults.matchers)
  mode        = try(each.value.mode, var.defaults.mode, "BLOCK")
  name        = try(each.value.name, var.defaults.name)
}
