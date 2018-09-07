module "web_dev" {
  source = "../../modules/web/storage"

  bucket         = "${local.web_bucket_prefix}-dev"
  logging_bucket = "${module.init.logging_bucket}"
}

module "web_staging" {
  source = "../../modules/web/storage"

  bucket         = "${local.web_bucket_prefix}-staging"
  logging_bucket = "${module.init.logging_bucket}"
}

module "web_prod" {
  source = "../../modules/web/storage"

  bucket         = "${local.web_bucket_prefix}-prod"
  logging_bucket = "${module.init.logging_bucket}"
}

resource "aws_s3_bucket" "assets" {
  bucket = "${local.assets_bucket}"
  acl    = "public-read"

  policy = <<EOF
{
  "Version":"2012-10-17",
  "Statement":[{
    "Sid":"PublicReadForGetBucketObjects",
    "Effect":"Allow",
    "Principal": "*",
    "Action":["s3:GetObject"],
    "Resource":["arn:aws:s3:::${local.assets_bucket}/*"]
  }]
}
EOF

  logging {
    target_bucket = "${module.init.logging_bucket}"
    target_prefix = "${local.assets_bucket}/"
  }
}
