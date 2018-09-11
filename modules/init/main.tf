data "terraform_remote_state" "remote_state" {
  backend = "s3"

  config {
    bucket = "${local.bucket}"
    key    = "${local.key}"
    region = "${local.region}"
  }
}

resource "aws_route53_zone" "ge" {
  name = "goodemporium.com"
}
