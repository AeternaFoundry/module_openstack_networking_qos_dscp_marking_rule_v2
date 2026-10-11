variable "networking_qos_dscp_marking_rule_v2s" {
  description = <<EOT
Map of networking_qos_dscp_marking_rule_v2s, attributes below
Required:
    - dscp_mark
    - qos_policy_id
Optional:
    - region
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    dscp_mark     = number
    qos_policy_id = string
    region        = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

