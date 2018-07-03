resource "aws_s3_bucket" "artifacts_bucket" {
  bucket = "${module.init.artifacts_bucket}"
  acl    = "private"

  lifecycle {
    prevent_destroy = true
  }

  logging {
    target_bucket = "${module.init.logging_bucket}"
    target_prefix = "artifacts/"
  }

  server_side_encryption_configuration {
    "rule" {
      "apply_server_side_encryption_by_default" {
        sse_algorithm = "aws:kms"
      }
    }
  }
}
