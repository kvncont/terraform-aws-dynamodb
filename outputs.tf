output "arn" {
  description = "DynamoDB table ARN"
  value = aws_dynamodb_table.this.arn
}

output "name" {
  description = "DynamoDB table name"
  value = aws_dynamodb_table.this.name
}

output "read_policy_json" {
  description = "Política IAM de solo lectura (tabla + índices)"
  value       = data.aws_iam_policy_document.read.json
}

output "write_policy_json" {
  description = "Política IAM de lectura y escritura"
  value       = data.aws_iam_policy_document.write.json
}