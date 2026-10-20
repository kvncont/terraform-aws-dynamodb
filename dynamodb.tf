resource "aws_dynamodb_table" "this" {
  name         = var.table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = var.table_hash_key
  
  server_side_encryption {
    enabled     = var.kms_key_arn != null
    kms_key_arn = var.kms_key_arn
  }

  attribute {
    name = var.table_hash_key
    type = "S"
  }

  lifecycle {
    prevent_destroy = false # Change to true to prevent accidental deletion of the table
  }
}