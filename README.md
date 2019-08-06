# terraform-cloudflare-example

🌑 This Cloudflare provider is used to interact with resources supported by Cloudflare. The provider needs to be configured with the proper credentials before it can be used.

This is example code of how to use the update your DNS records for your zones.

## Cloudflare Token

In order to use the provider you need to obtain the necessary token. It seems that Cloudflare provide **API Tokens** which are in beta as of writing, they dont seem to be supportedm so ensure you use your **Global API Key**.

[https://dash.cloudflare.com/GUID/profile/api-tokens](https://dash.cloudflare.com/GUID/profile/api-tokens)

## Terraform Enterprise Remote Backend

This example utilises `app.terraform.io` as a backend, if you require something else then modify `backend.tf` to suit your setup. 

- - - -

# Usage

```
# Initialise the backemd
terraform init

# Plan
terraform plan -varfile=tfvars/prod_example_com.tfvars -out=prod_example_com.plan

# Apply
terraform apply -auto-approve prod_example_com.plan
```
