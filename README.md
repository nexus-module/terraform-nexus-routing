# Nexus Routing

This module allows you to create **Nexus Routing as a global resource** and **individual Nexus Routing resources.** For individual examples, see the usage snippets and [examples](https://github.com/nexus-module/terraform-nexus-routing/tree/main/examples).

## Provider
You need use a [Nexus provider](https://registry.terraform.io/providers/datadrivers/nexus/latest/docs).
```hcl
provider "nexus" {
  insecure = true
  password = "admin123"
  url      = "https://127.0.0.1:8080"
  username = "admin"
}
```

## Root module usage

`nexus-routing`:

```hcl
module "nexus_routing" {
  source  = "nexus-module/routing/nexus"

 nexus_routing_rule = [
    {
      name        = "stop-leaks"
      description = "Prevent requests of internal names"
      mode        = "BLOCK"
      matchers = [
        "^/com/example/.*",
        "^/org/example/.*",
      ]
    },
  ]
}
```

## Individual module usage

`nexus-routing-rule`:

```hcl
module "nexus_routing_rule" {
  source  = "nexus-module/routing/nexus//modules/nexus-routing-rule"

  name        = "stop-leaks"
  description = "Prevent requests of internal names"
  mode        = "BLOCK"
  matchers = [
    "^/com/example/.*",
    "^/org/example/.*",
  ]
}
```

## Terraform Docs

### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_nexus"></a> [nexus](#requirement\_nexus) | >= 2.0.0 |

### Providers

No providers.

### Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_nexus_routing_rule"></a> [nexus\_routing\_rule](#module\_nexus\_routing\_rule) | ./modules/nexus-routing-rule | n/a |

### Resources

No resources.

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_nexus_routing_rule"></a> [nexus\_routing\_rule](#input\_nexus\_routing\_rule) | Routing Rule. | <pre>list(object({<br>    name        = string<br>    matchers    = set(string)<br>    description = optional(string)<br>    mode        = optional(string)<br>  }))</pre> | `[]` | no |

### Outputs

| Name | Description |
|------|-------------|
| <a name="output_routing_rule_name"></a> [routing\_rule\_name](#output\_routing\_rule\_name) | The name of the routing rule. |

## Authors

Module is maintained by [DevOps IA](https://github.com/devops-ia) with help from [these awesome contributors](https://github.com/nexus-module/terraform-nexus-routing/graphs/contributors).
