output "acm_cert_validation_options" {
  value = "${aws_acm_certificate.goodemporium_com.domain_validation_options}"
}

output "cloudfront_domain_name" {
  value = "${aws_cloudfront_distribution.www.domain_name}"
}
