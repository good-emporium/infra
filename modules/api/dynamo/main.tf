resource "aws_s3_bucket" "api" {
  bucket = "${local.web_bucket_prefix}-${var.env}"
  acl    = "public-read"

  policy = <<EOF
{
  "Version":"2012-10-17",
  "Statement":[{
    "Sid":"PublicReadForGetBucketObjects",
    "Effect":"Allow",
    "Principal": "*",
    "Action":["s3:GetObject"],
    "Resource":["arn:aws:s3:::${local.web_bucket_prefix}-${var.env}/*"]
  }]
}
EOF

  logging {
    target_bucket = "${var.logging_bucket}"
    target_prefix = "web_${var.env}/"
  }

  website {
    index_document = "index.html"
  }
}
