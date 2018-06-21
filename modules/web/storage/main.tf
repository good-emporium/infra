resource "aws_s3_bucket" "web" {
  bucket = "${local.web_bucket_prefix}-${var.env}"
  acl    = "public-read"

  logging {
    target_bucket = "${var.logging_bucket}"
    target_prefix = "web_${var.env}/"
  }

  website {
    index_document = "index.html"
  }
}
