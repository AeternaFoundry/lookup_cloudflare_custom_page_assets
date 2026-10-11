data "cloudflare_custom_page_assets" "custom_page_assets_lookup" {
  for_each = var.custom_page_assets_lookup

  account_id = each.value.account_id
  max_items  = each.value.max_items
  zone_id    = each.value.zone_id
}

