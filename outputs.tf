output "lbs_id" {
  description = "Map of id values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "lbs_access_logs" {
  description = "Map of access_logs values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => one(v.access_logs) if v.access_logs != null && length(v.access_logs) > 0 }
}
output "lbs_arn" {
  description = "Map of arn values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "lbs_arn_suffix" {
  description = "Map of arn_suffix values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => v.arn_suffix if v.arn_suffix != null && length(v.arn_suffix) > 0 }
}
output "lbs_client_keep_alive" {
  description = "Map of client_keep_alive values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => v.client_keep_alive if v.client_keep_alive != null }
}
output "lbs_connection_logs" {
  description = "Map of connection_logs values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => one(v.connection_logs) if v.connection_logs != null && length(v.connection_logs) > 0 }
}
output "lbs_customer_owned_ipv4_pool" {
  description = "Map of customer_owned_ipv4_pool values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => v.customer_owned_ipv4_pool if v.customer_owned_ipv4_pool != null && length(v.customer_owned_ipv4_pool) > 0 }
}
output "lbs_desync_mitigation_mode" {
  description = "Map of desync_mitigation_mode values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => v.desync_mitigation_mode if v.desync_mitigation_mode != null && length(v.desync_mitigation_mode) > 0 }
}
output "lbs_dns_name" {
  description = "Map of dns_name values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => v.dns_name if v.dns_name != null && length(v.dns_name) > 0 }
}
output "lbs_dns_record_client_routing_policy" {
  description = "Map of dns_record_client_routing_policy values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => v.dns_record_client_routing_policy if v.dns_record_client_routing_policy != null && length(v.dns_record_client_routing_policy) > 0 }
}
output "lbs_drop_invalid_header_fields" {
  description = "Map of drop_invalid_header_fields values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => v.drop_invalid_header_fields if v.drop_invalid_header_fields != null }
}
output "lbs_enable_cross_zone_load_balancing" {
  description = "Map of enable_cross_zone_load_balancing values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => v.enable_cross_zone_load_balancing if v.enable_cross_zone_load_balancing != null }
}
output "lbs_enable_deletion_protection" {
  description = "Map of enable_deletion_protection values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => v.enable_deletion_protection if v.enable_deletion_protection != null }
}
output "lbs_enable_http2" {
  description = "Map of enable_http2 values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => v.enable_http2 if v.enable_http2 != null }
}
output "lbs_enable_prefix_for_ipv6_source_nat" {
  description = "Map of enable_prefix_for_ipv6_source_nat values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => v.enable_prefix_for_ipv6_source_nat if v.enable_prefix_for_ipv6_source_nat != null && length(v.enable_prefix_for_ipv6_source_nat) > 0 }
}
output "lbs_enable_tls_version_and_cipher_suite_headers" {
  description = "Map of enable_tls_version_and_cipher_suite_headers values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => v.enable_tls_version_and_cipher_suite_headers if v.enable_tls_version_and_cipher_suite_headers != null }
}
output "lbs_enable_waf_fail_open" {
  description = "Map of enable_waf_fail_open values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => v.enable_waf_fail_open if v.enable_waf_fail_open != null }
}
output "lbs_enable_xff_client_port" {
  description = "Map of enable_xff_client_port values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => v.enable_xff_client_port if v.enable_xff_client_port != null }
}
output "lbs_enable_zonal_shift" {
  description = "Map of enable_zonal_shift values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => v.enable_zonal_shift if v.enable_zonal_shift != null }
}
output "lbs_enforce_security_group_inbound_rules_on_private_link_traffic" {
  description = "Map of enforce_security_group_inbound_rules_on_private_link_traffic values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => v.enforce_security_group_inbound_rules_on_private_link_traffic if v.enforce_security_group_inbound_rules_on_private_link_traffic != null && length(v.enforce_security_group_inbound_rules_on_private_link_traffic) > 0 }
}
output "lbs_health_check_logs" {
  description = "Map of health_check_logs values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => one(v.health_check_logs) if v.health_check_logs != null && length(v.health_check_logs) > 0 }
}
output "lbs_idle_timeout" {
  description = "Map of idle_timeout values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => v.idle_timeout if v.idle_timeout != null }
}
output "lbs_internal" {
  description = "Map of internal values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => v.internal if v.internal != null }
}
output "lbs_ip_address_type" {
  description = "Map of ip_address_type values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => v.ip_address_type if v.ip_address_type != null && length(v.ip_address_type) > 0 }
}
output "lbs_ipam_pools" {
  description = "Map of ipam_pools values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => one(v.ipam_pools) if v.ipam_pools != null && length(v.ipam_pools) > 0 }
}
output "lbs_load_balancer_type" {
  description = "Map of load_balancer_type values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => v.load_balancer_type if v.load_balancer_type != null && length(v.load_balancer_type) > 0 }
}
output "lbs_minimum_load_balancer_capacity" {
  description = "Map of minimum_load_balancer_capacity values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => one(v.minimum_load_balancer_capacity) if v.minimum_load_balancer_capacity != null && length(v.minimum_load_balancer_capacity) > 0 }
}
output "lbs_name" {
  description = "Map of name values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "lbs_name_prefix" {
  description = "Map of name_prefix values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => v.name_prefix if v.name_prefix != null && length(v.name_prefix) > 0 }
}
output "lbs_preserve_host_header" {
  description = "Map of preserve_host_header values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => v.preserve_host_header if v.preserve_host_header != null }
}
output "lbs_region" {
  description = "Map of region values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => v.region if v.region != null && length(v.region) > 0 }
}
output "lbs_secondary_ips_auto_assigned_per_subnet" {
  description = "Map of secondary_ips_auto_assigned_per_subnet values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => v.secondary_ips_auto_assigned_per_subnet if v.secondary_ips_auto_assigned_per_subnet != null }
}
output "lbs_security_groups" {
  description = "Map of security_groups values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => v.security_groups if v.security_groups != null && length(v.security_groups) > 0 }
}
output "lbs_subnet_mapping" {
  description = "Map of subnet_mapping values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => v.subnet_mapping if v.subnet_mapping != null && length(v.subnet_mapping) > 0 }
}
output "lbs_subnets" {
  description = "Map of subnets values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => v.subnets if v.subnets != null && length(v.subnets) > 0 }
}
output "lbs_tags" {
  description = "Map of tags values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "lbs_tags_all" {
  description = "Map of tags_all values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "lbs_vpc_id" {
  description = "Map of vpc_id values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => v.vpc_id if v.vpc_id != null && length(v.vpc_id) > 0 }
}
output "lbs_xff_header_processing_mode" {
  description = "Map of xff_header_processing_mode values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => v.xff_header_processing_mode if v.xff_header_processing_mode != null && length(v.xff_header_processing_mode) > 0 }
}
output "lbs_zone_id" {
  description = "Map of zone_id values across all lbs, keyed the same as var.lbs"
  value       = { for k, v in aws_lb.lbs : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

