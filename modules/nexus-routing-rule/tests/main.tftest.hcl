mock_provider "nexus" {}

run "maps_all_inputs_to_resource" {
  command = plan

  variables {
    description = "test-description"
    matchers    = ["test-matcher"]
    mode        = "ALLOW"
    name        = "test-name"
  }

  assert {
    condition     = nexus_routing_rule.main.name == var.name
    error_message = "name does not match var.name"
  }

  assert {
    condition     = nexus_routing_rule.main.description == var.description
    error_message = "description does not match var.description"
  }

  assert {
    condition     = nexus_routing_rule.main.mode == var.mode
    error_message = "mode does not match var.mode"
  }

  assert {
    condition     = nexus_routing_rule.main.matchers == var.matchers
    error_message = "matchers does not match var.matchers"
  }

}

run "omits_optional_blocks" {
  command = plan

  variables {
    matchers = ["test-matcher"]
    name     = "test-name"
  }

  assert {
    condition     = nexus_routing_rule.main.name == var.name
    error_message = "name does not match var.name"
  }

}
