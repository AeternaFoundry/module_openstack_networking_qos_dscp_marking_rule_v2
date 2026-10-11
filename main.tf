resource "openstack_networking_qos_dscp_marking_rule_v2" "networking_qos_dscp_marking_rule_v2s" {
  for_each = var.networking_qos_dscp_marking_rule_v2s

  dscp_mark     = each.value.dscp_mark
  qos_policy_id = each.value.qos_policy_id
  region        = each.value.region

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

