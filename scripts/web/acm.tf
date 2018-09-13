// CloudFront requires that ACM certs exist in us-east-1
resource "aws_acm_certificate" "goodemporium_com" {
  provider = "aws.east"

  domain_name       = "*.${local.com_domain_root}"
  validation_method = "DNS"

  subject_alternative_names = ["${local.com_domain_root}"]
}

resource "aws_route53_record" "cert_validation" {
  name = "${aws_acm_certificate.goodemporium_com.domain_validation_options.0.resource_record_name}"
  type = "${aws_acm_certificate.goodemporium_com.domain_validation_options.0.resource_record_type}"
  zone_id = "${module.init.ge_zone_id}"
  records = ["${aws_acm_certificate.goodemporium_com.domain_validation_options.0.resource_record_value}"]
  ttl = 60
}

//resource "aws_acm_certificate_validation" "cert" {
//  certificate_arn = "${aws_acm_certificate.goodemporium_com.arn}"
//  validation_record_fqdns = ["${aws_route53_record.cert_validation.fqdn}"]
//}
