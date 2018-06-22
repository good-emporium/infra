resource "aws_acm_certificate" "com" {
  domain_name       = "*.${local.com_domain_www}"
  validation_method = "DNS"

  subject_alternative_names = ["${local.com_domain_root}"]
}

resource "aws_acm_certificate" "us" {
  domain_name       = "*.${local.us_domain_www}"
  validation_method = "DNS"

  subject_alternative_names = ["${local.us_domain_root}"]
}
