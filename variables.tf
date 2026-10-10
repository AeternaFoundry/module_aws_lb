variable "lbs" {
  description = <<EOT
Map of lbs, attributes below
Optional:
    - client_keep_alive
    - customer_owned_ipv4_pool
    - desync_mitigation_mode
    - dns_record_client_routing_policy
    - drop_invalid_header_fields
    - enable_cross_zone_load_balancing
    - enable_deletion_protection
    - enable_http2
    - enable_prefix_for_ipv6_source_nat
    - enable_tls_version_and_cipher_suite_headers
    - enable_waf_fail_open
    - enable_xff_client_port
    - enable_zonal_shift
    - enforce_security_group_inbound_rules_on_private_link_traffic
    - idle_timeout
    - internal
    - ip_address_type
    - load_balancer_type
    - name
    - name_prefix
    - preserve_host_header
    - region
    - secondary_ips_auto_assigned_per_subnet
    - security_groups
    - subnets
    - tags
    - tags_all
    - xff_header_processing_mode
    - access_logs (block):
        - bucket (required)
        - enabled (optional)
        - prefix (optional)
    - connection_logs (block):
        - bucket (required)
        - enabled (optional)
        - prefix (optional)
    - health_check_logs (block):
        - bucket (required)
        - enabled (optional)
        - prefix (optional)
    - ipam_pools (block):
        - ipv4_ipam_pool_id (required)
    - minimum_load_balancer_capacity (block):
        - capacity_units (required)
    - subnet_mapping (block):
        - allocation_id (optional)
        - ipv6_address (optional)
        - private_ipv4_address (optional)
        - subnet_id (required)
EOT

  type = map(object({
    client_keep_alive                                            = optional(number)
    tags                                                         = optional(map(string))
    subnets                                                      = optional(set(string))
    security_groups                                              = optional(set(string))
    secondary_ips_auto_assigned_per_subnet                       = optional(number)
    region                                                       = optional(string)
    preserve_host_header                                         = optional(bool)
    name_prefix                                                  = optional(string)
    name                                                         = optional(string)
    load_balancer_type                                           = optional(string)
    ip_address_type                                              = optional(string)
    internal                                                     = optional(bool)
    idle_timeout                                                 = optional(number)
    enforce_security_group_inbound_rules_on_private_link_traffic = optional(string)
    enable_zonal_shift                                           = optional(bool)
    enable_xff_client_port                                       = optional(bool)
    enable_waf_fail_open                                         = optional(bool)
    enable_tls_version_and_cipher_suite_headers                  = optional(bool)
    enable_prefix_for_ipv6_source_nat                            = optional(string)
    enable_http2                                                 = optional(bool)
    enable_deletion_protection                                   = optional(bool)
    enable_cross_zone_load_balancing                             = optional(bool)
    drop_invalid_header_fields                                   = optional(bool)
    dns_record_client_routing_policy                             = optional(string)
    desync_mitigation_mode                                       = optional(string)
    customer_owned_ipv4_pool                                     = optional(string)
    tags_all                                                     = optional(map(string))
    xff_header_processing_mode                                   = optional(string)
    access_logs = optional(object({
      bucket  = string
      enabled = optional(bool)
      prefix  = optional(string)
    }))
    connection_logs = optional(object({
      bucket  = string
      enabled = optional(bool)
      prefix  = optional(string)
    }))
    health_check_logs = optional(object({
      bucket  = string
      enabled = optional(bool)
      prefix  = optional(string)
    }))
    ipam_pools = optional(object({
      ipv4_ipam_pool_id = string
    }))
    minimum_load_balancer_capacity = optional(object({
      capacity_units = number
    }))
    subnet_mapping = optional(list(object({
      allocation_id        = optional(string)
      ipv6_address         = optional(string)
      private_ipv4_address = optional(string)
      subnet_id            = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.lbs : (
        v.secondary_ips_auto_assigned_per_subnet == null || (v.secondary_ips_auto_assigned_per_subnet >= 0 && v.secondary_ips_auto_assigned_per_subnet <= 7)
      )
    ])
    error_message = "must be between 0 and 7"
  }
  # Note: 18 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

