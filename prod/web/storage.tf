provider "aws" {
  region = "us-east-2"
}

terraform {
  backend "s3" {
    bucket = "good-emporium-terraform-state"
    key    = "terraform/prod.tfstate"
    region = "us-east-2"
  }
}

data "terraform_remote_state" "remote_state_prod" {
  backend = "s3"

  config {
    bucket = "good-emporium-terraform-state"
    key    = "terraform/prod.tfstate"
    region = "us-east-2"
  }
}

resource "aws_s3_bucket" "web_prod" {
  bucket = "good-emporium-web-prod"
  acl    = "public-read"

  website {
    index_document = "index.html"
  }
}
