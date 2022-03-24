terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "gllaw"

    workspaces {
      name = "bighand-mobile-gateway"
    }
  }
}