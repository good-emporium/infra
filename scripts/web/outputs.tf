output "acm_cert_validation_options" {
  value = "${aws_acm_certificate.goodemporium_com.domain_validation_options}"
}

output "assets_cdn_domain_name" {
  value = "${aws_cloudfront_distribution.assets.domain_name}"
}

output "root_cdn_domain_name" {
  value = "${aws_cloudfront_distribution.root.domain_name}"
}

output "www_cdn_domain_name" {
  value = "${aws_cloudfront_distribution.www.domain_name}"
}
