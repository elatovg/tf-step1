data "vault_generic_secret" "gcp_sa_token" {
  path = "gcp/static-account/my-token-account"
}

output "gcp_auth_token" {
    value = data.vault_generic_secret.gcp_auth_token.data["token"]
}