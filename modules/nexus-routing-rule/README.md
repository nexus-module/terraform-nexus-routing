## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_nexus"></a> [nexus](#requirement\_nexus) | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_nexus"></a> [nexus](#provider\_nexus) | >= 3.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [nexus_routing_rule.main](https://registry.terraform.io/providers/datadrivers/nexus/latest/docs/resources/routing_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | The description of the routing rule | `string` | `""` | no |
| <a name="input_matchers"></a> [matchers](#input\_matchers) | Matchers is a list of regular expressions used to identify request paths that are allowed or blocked (depending on above mode) | `set(string)` | n/a | yes |
| <a name="input_mode"></a> [mode](#input\_mode) | The mode describe how to hande with mathing requests | `string` | `"BLOCK"` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the routing rule | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | The name of the resource. |

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_nexus"></a> [nexus](#requirement\_nexus) | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_nexus"></a> [nexus](#provider\_nexus) | >= 3.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [nexus_routing_rule.main](https://registry.terraform.io/providers/datadrivers/nexus/latest/docs/resources/routing_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | The description of the routing rule | `string` | `""` | no |
| <a name="input_matchers"></a> [matchers](#input\_matchers) | Matchers is a list of regular expressions used to identify request paths that are allowed or blocked (depending on above mode) | `set(string)` | n/a | yes |
| <a name="input_mode"></a> [mode](#input\_mode) | The mode describe how to hande with mathing requests | `string` | `"BLOCK"` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the routing rule | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | The name of the resource. |
<!-- END_TF_DOCS -->
