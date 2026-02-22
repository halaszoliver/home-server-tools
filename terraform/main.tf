
resource "kubernetes_namespace_v1" "tools" {
  metadata {
    name   = "tools"
    labels = { app : "tools" }
  }
}

resource "kubernetes_secret_v1" "tools-secrets" {
  metadata {
    name      = "tools-secrets"
    namespace = "tools"
    labels    = { app : "tools" }
  }

  data = {
    RENOVATE_TOKEN = vars.github_token
  }
}
