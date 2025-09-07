variable "aws_access_key_id" {
  type      = string
  sensitive = true
}
variable "aws_secret_access_key" {
  type      = string
  sensitive = true
}
variable "aws_session_token" {
  type      = string
  sensitive = true
  default   = null
}

variable "region" {
  type    = string
  default = "eu-west-3"
}

variable "mikrotik_host" {
  type        = string
  description = "MikroTik router URL (e.g., https://192.168.1.1)"
}

variable "mikrotik_username" {
  type      = string
  sensitive = true
}

variable "mikrotik_password" {
  type      = string
  sensitive = true
}
