resource "cloudflare_record" "cname-www" {
  domain = "${var.cloudflare_zone}"

  name    = "www"
  value   = "${cloudflare_record.a-root.hostname}"
  type    = "CNAME"
  ttl     = 3600
  proxied = false
}

resource "cloudflare_record" "cname-mail" {
  domain = "${var.cloudflare_zone}"

  name    = "mail"
  value   = "ghs.googlehosted.com"
  type    = "CNAME"
  ttl     = 3600
  proxied = false
}