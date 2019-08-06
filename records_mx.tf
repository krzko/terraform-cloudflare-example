resource "cloudflare_record" "mx-aspmx" {
  domain = "${var.cloudflare_zone}"

  name     = "@"
  value    = "aspmx.l.google.com"
  type     = "MX"
  priority = 10
}

resource "cloudflare_record" "mx-alt1" {
  domain = "${var.cloudflare_zone}"

  name     = "@"
  value    = "alt1.aspmx.l.google.com"
  type     = "MX"
  priority = 20
}

resource "cloudflare_record" "mx-alt2" {
  domain = "${var.cloudflare_zone}"

  name     = "@"
  value    = "alt2.aspmx.l.google.com"
  type     = "MX"
  priority = 20
}

resource "cloudflare_record" "mx-alt3" {
  domain = "${var.cloudflare_zone}"

  name     = "@"
  value    = "alt3.aspmx.l.google.com"
  type     = "MX"
  priority = 30
}

resource "cloudflare_record" "mx-alt4" {
  domain = "${var.cloudflare_zone}"

  name     = "@"
  value    = "alt4.aspmx.l.google.com"
  type     = "MX"
  priority = 30
}
