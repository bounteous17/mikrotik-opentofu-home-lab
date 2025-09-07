terraform {
  required_version = ">= 1.10"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.12.0"
    }
    routeros = {
      source  = "terraform-routeros/routeros"
      version = "1.86.3"
    }
  }
}

provider "routeros" {
  hosturl        = var.mikrotik_host
  username       = var.mikrotik_username
  password       = var.mikrotik_password
  ca_certificate = "cert_export_localCA.crt"
}

provider "aws" {
  region     = var.region
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_access_key
  token      = var.aws_session_token
}
