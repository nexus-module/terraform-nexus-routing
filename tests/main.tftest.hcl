mock_provider "nexus" {}

run "creates_one_module_per_item" {
  command = plan

  variables {
    nexus_routing_rule = [
      {
        name        = "test-name-a"
        matchers    = ["test-matcher-a"]
        description = "test-description-a"
        mode        = "ALLOW"
      },
      {
        name        = "test-name-b"
        matchers    = ["test-matcher-b"]
        description = "test-description-b"
        mode        = "ALLOW"
      }
    ]
  }

  assert {
    condition     = length(module.nexus_routing_rule) == 2
    error_message = "nexus_routing_rule must create one nexus-routing-rule per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_routing_rule), k)])
    error_message = "nexus_routing_rule must be keyed by name"
  }

}

run "creates_nothing_by_default" {
  command = plan

  assert {
    condition     = length(module.nexus_routing_rule) == 0
    error_message = "nexus_routing_rule must be empty by default"
  }

}
