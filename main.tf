resource "cloudflare_zone_settings_override" "this" {
  name = "${var.cloudflare_zone}"

  settings {
    always_use_https = "on"
    tls_1_3          = "on"
    ssl              = "strict"
    min_tls_version  = "1.2"
  }
}