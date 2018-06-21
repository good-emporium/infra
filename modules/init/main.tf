data "terraform_remote_state" "remote_state_prod" {
  backend = "s3"

  config {
    bucket = "${local.bucket}"
    key    = "${local.key}"
    region = "${local.region}"
  }
}
