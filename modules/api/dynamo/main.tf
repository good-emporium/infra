resource "aws_dynamodb_table" "api" {
  name           = "${var.env}-${var.name}"
  read_capacity  = "${var.capacity}"
  write_capacity = "${var.capacity}"
  hash_key       = "${var.hash_key}"

  attribute {
    name = "${var.hash_key}"
    type = "S"
  }

  server_side_encryption {
    enabled = true
  }
}
