# terraform-cloudflare-example

🌑 This Cloudflare provider is used to interact with resources supported by Cloudflare. The provider needs to be configured with the proper credentials before it can be used.

This is example code of how to use the update your DNS records for your zones.

## Cloudflare Token

In order to use the provider you need to obtain the necessary token. It seems that Cloudflare provide **API Tokens** which are in beta as of writing, they dont seem to be supportedm so ensure you use your **Global API Key**.

[https://dash.cloudflare.com/GUID/profile/api-tokens](https://dash.cloudflare.com/GUID/profile/api-tokens)

- - - -

# Usage

```
$ make
apply                          Have terraform do the things. This will cost money.
destroy-backend                Destroy S3 bucket and DynamoDB table
destroy                        Destroy the things
destroy-target                 Destroy a specific resource. Caution though, this destroys chained resources.
plan-destroy                   Creates a destruction plan.
plan                           Show what terraform thinks it will do
plan-target                    Shows what a plan looks like for applying a specific resource
prep                           Prepare a new workspace (environment) if needed, configure the tfstate backend, update any modules, and switch to the workspace
```
