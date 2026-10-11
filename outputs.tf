output "custom_page_assets_lookup_account_id" {
  description = "Map of account_id values across all custom_page_assets_lookup, keyed the same as var.custom_page_assets_lookup except keys with no account_id are omitted"
  value       = { for k, v in data.cloudflare_custom_page_assets.custom_page_assets_lookup : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "custom_page_assets_lookup_max_items" {
  description = "Map of max_items values across all custom_page_assets_lookup, keyed the same as var.custom_page_assets_lookup except keys with no max_items are omitted"
  value       = { for k, v in data.cloudflare_custom_page_assets.custom_page_assets_lookup : k => v.max_items if v.max_items != null }
}
output "custom_page_assets_lookup_result" {
  description = "Map of result values across all custom_page_assets_lookup, keyed the same as var.custom_page_assets_lookup except keys with no result are omitted"
  value       = { for k, v in data.cloudflare_custom_page_assets.custom_page_assets_lookup : k => v.result if v.result != null && length(v.result) > 0 }
}
output "custom_page_assets_lookup_zone_id" {
  description = "Map of zone_id values across all custom_page_assets_lookup, keyed the same as var.custom_page_assets_lookup except keys with no zone_id are omitted"
  value       = { for k, v in data.cloudflare_custom_page_assets.custom_page_assets_lookup : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

