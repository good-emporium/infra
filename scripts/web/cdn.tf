//resource "aws_cloudfront_distribution" "www_distribution" {
//  origin {
//    custom_origin_config {
//      http_port              = "80"
//      https_port             = "443"
//      origin_protocol_policy = "http-only"
//      origin_ssl_protocols   = ["TLSv1", "TLSv1.1", "TLSv1.2"]
//    }
//
//    domain_name = "${module.web_prod.website_endpoint}"
//    origin_id   = "${module.web_prod.bucket}"
//  }
//
//  enabled             = true
//  default_root_object = "index.html"
//
//  aliases = ["${local.com_domain_www}", "${local.us_domain_www}"]
//
//  default_cache_behavior {
//    viewer_protocol_policy = "redirect-to-https"
//    compress               = true
//    allowed_methods        = ["GET", "HEAD"]
//    cached_methods         = ["GET", "HEAD"]
//    target_origin_id       = "${module.web_prod.bucket}"
//    min_ttl                = 0
//    default_ttl            = 86400
//    max_ttl                = 31536000
//
//    forwarded_values {
//      query_string = false
//      cookies {
//        forward = "none"
//      }
//    }
//  }
//
//  logging_config {
//    bucket = "${module.init.logging_bucket}"
//    prefix = "cloudfront/"
//  }
//
//  restrictions {
//    geo_restriction {
//      restriction_type = "none"
//    }
//  }
//
//  viewer_certificate {
//    acm_certificate_arn = "${aws_acm_certificate.com.arn}"
//    ssl_support_method  = "sni-only"
//  }
//}
