output "artifacts_bucket" {
  value = "good-emporium-artifacts"
}

output "logging_bucket" {
  value = "good-emporium-logs"
}

output "ge_zone_id" {
  value = "${aws_route53_zone.ge.zone_id}"
}
