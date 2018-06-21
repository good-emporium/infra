resource "aws_s3_bucket" "log_bucket" {
  bucket = "${module.init.logging_bucket}"
  acl    = "log-delivery-write"

  lifecycle {
    prevent_destroy = true
  }

  server_side_encryption_configuration {
    "rule" {
      "apply_server_side_encryption_by_default" {
        sse_algorithm = "aws:kms"
      }
    }
  }
}
