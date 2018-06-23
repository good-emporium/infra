provider "aws" {
  region = "us-east-2"
}

provider "aws" {
  alias  = "east"
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "good-emporium-terraform-state"
    key    = "terraform/web.tfstate"
    region = "us-east-2"
  }
}

module "init" {
  source = "../../modules/init"

  state_key = "web"
}
