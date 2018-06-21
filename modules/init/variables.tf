locals {
  bucket = "good-emporium-terraform-state"
  key    = "terraform/${var.state_key}.tfstate"
  region = "us-east-2"
}

variable "state_key" {}
