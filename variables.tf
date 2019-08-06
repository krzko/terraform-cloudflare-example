variable "cloudflare_email" {
  description = "The email associated with the account. This can also be specified with the CLOUDFLARE_EMAIL shell environment variable."
  default     = "default"
}

variable "cloudflare_token" {
  description = "The Cloudflare API token. This can also be specified with the CLOUDFLARE_TOKEN shell environment variable."
  default     = "default"
}

variable "cloudflare_zone" {
  description = "The DNS zone to add the record to."
  default     = "default"
}

variable "main_server" {
  description = "The main web server"
  default     = "127.0.0.1"
}
