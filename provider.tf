provider "cloudflare" {
  version = "~> 1.16"

  email = "${var.cloudflare_email}"
  token = "${var.cloudflare_token}"
}