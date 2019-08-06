resource "cloudflare_record" "sip-tls-terraform-srv" {
  domain = "${var.cloudflare_zone}"

  name   = "_sip._tls"
  type   = "SRV"

  data = {
    service  = "_sip"
    proto    = "_tls"
    name     = "terraform-srv"
    priority = 0
    weight   = 0
    port     = 443
    target   = "example.com"
  }
}