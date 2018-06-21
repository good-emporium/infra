provider "aws" {
  region = "us-east-2"
}

terraform {
  backend "s3" {
    bucket = "good-emporium-terraform-state"
    key    = "terraform/dev.tfstate"
    region = "us-east-2"
  }
}

data "terraform_remote_state" "remote_state_dev" {
  backend = "s3"

  config {
    bucket = "good-emporium-terraform-state"
    key    = "terraform/dev.tfstate"
    region = "us-east-2"
  }
}

resource "aws_s3_bucket" "web_dev" {
  bucket = "good-emporium-web-dev"
  acl    = "public-read"

  website {
    index_document = "index.html"
  }
}

resource "aws_s3_bucket" "web_staging" {
  bucket = "good-emporium-web-staging"
  acl    = "public-read"

  website {
    index_document = "index.html"
  }
}
