resource "aws_route53_record" "root" {
  zone_id = "${module.init.ge_zone_id}"

  name = ""
  type = "A"

  alias = {
    name                   = "${aws_cloudfront_distribution.root.domain_name}"
    zone_id                = "${aws_cloudfront_distribution.root.hosted_zone_id}"
    evaluate_target_health = false
  }
}

resource "aws_route53_record" "www" {
  zone_id = "${module.init.ge_zone_id}"
  name    = "${local.com_domain_www}"
  type    = "A"

  alias = {
    name                   = "${aws_cloudfront_distribution.www.domain_name}"
    zone_id                = "${aws_cloudfront_distribution.www.hosted_zone_id}"
    evaluate_target_health = false
  }
}

resource "aws_route53_record" "assets" {
  zone_id = "${module.init.ge_zone_id}"
  name    = "${local.com_domain_assets}"
  type    = "A"

  alias = {
    name                   = "${aws_cloudfront_distribution.assets.domain_name}"
    zone_id                = "${aws_cloudfront_distribution.assets.hosted_zone_id}"
    evaluate_target_health = false
  }
}

resource "aws_route53_record" "api" {
  zone_id = "${module.init.ge_zone_id}"
  name    = "api.goodemporium.com"
  type    = "A"

  // Values from https://us-east-2.console.aws.amazon.com/apigateway/home?region=us-east-2#/custom-domain-names
  alias = {
    name                   = "d2p97a0z27kg1a.cloudfront.net"
    zone_id                = "Z2FDTNDATAQYW2"
    evaluate_target_health = false
  }
}
