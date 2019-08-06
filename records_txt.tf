resource "cloudflare_record" "txt-amazonses" {
  domain = "${var.cloudflare_zone}"

  name  = "_amazonses"
  value = "xxxxxxxx"
  type  = "TXT"
  ttl   = 300
}

resource "cloudflare_record" "txt-dmarc" {
  domain = "${var.cloudflare_zone}"

  name  = "_dmarc"
  value = "v=DMARC1; p=none; pct=100; rua=mailto:xxxxxxxx@dmarc.example.com; sp=none; aspf=r;"
  type  = "TXT"
  ttl   = 300
}

resource "cloudflare_record" "txt-mandrill-domainkey" {
  domain = "${var.cloudflare_zone}"

  name  = "mandrill._domainkey"
  value = "v=DKIM1; k=rsa; p=xxxxxxxx;"
  type  = "TXT"
  ttl   = 300
}
