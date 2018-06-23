// CloudFront requires that ACM certs exist in us-east-1
resource "aws_acm_certificate" "goodemporium_com" {
  provider = "aws.east"

  domain_name       = "*.${local.com_domain_root}"
  validation_method = "DNS"

  subject_alternative_names = ["${local.com_domain_root}"]
}
