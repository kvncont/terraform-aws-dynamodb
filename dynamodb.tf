resource "aws_dynamodb_table" "add_on" {
  name         = var.table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = var.table_hash_key

  attribute {
    name = var.table_hash_key
    type = "S"
  }

  lifecycle {
    prevent_destroy = true
  }
}