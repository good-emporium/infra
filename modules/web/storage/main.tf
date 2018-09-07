resource "aws_s3_bucket" "web" {
  bucket = "${var.bucket}"
  acl    = "public-read"

  policy = <<EOF
{
  "Version":"2012-10-17",
  "Statement":[{
    "Sid":"PublicReadForGetBucketObjects",
    "Effect":"Allow",
    "Principal": "*",
    "Action":["s3:GetObject"],
    "Resource":["arn:aws:s3:::${var.bucket}/*"]
  }]
}
EOF

  logging {
    target_bucket = "${var.logging_bucket}"
    target_prefix = "${var.bucket}/"
  }

  website {
    index_document = "index.html"
  }
}
