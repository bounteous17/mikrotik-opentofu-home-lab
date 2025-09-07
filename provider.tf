terraform {
  required_version = ">= 1.10"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.12.0"
    }
    mikrotik = {
      source  = "terraform-routeros/routeros"
      version = "1.86.3"
    }
  }
}

provider "mikrotik" {
  hosturl  = var.mikrotik_host
  username = var.mikrotik_username
  password = var.mikrotik_password
}

provider "aws" {
  region     = var.region
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_access_key
  token      = var.aws_session_token
}
