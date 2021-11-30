locals {
    project_id  = var.project_id
    tf_sa_email = "user2-sa@${local.project_id}.iam.gserviceaccount.com"
}

resource "vault_gcp_secret_static_account" "static_account" {
  backend        = "gcp"
  static_account = "my-token-account"
  secret_type    = "access_token"
  token_scopes   = ["https://www.googleapis.com/auth/cloud-platform"]

  service_account_email = local.tf_sa_email
}

