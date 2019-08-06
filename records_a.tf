resource "cloudflare_record" "terraform" {
  domain  = "${var.cloudflare_zone}"

  name    = "terraform"
  value   = "192.168.0.11"
  type    = "A"
  ttl     = 1
  proxied = true
}

resource "cloudflare_record" "a-root" {
  domain = "${var.cloudflare_zone}"

  name    = "@"
  value   = "${var.main_server}"
  type    = "A"
  ttl     = 3600
  proxied = false
}