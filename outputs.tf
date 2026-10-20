output "arn" {
  description = "DynamoDB table ARN"
  value       = aws_dynamodb_table.this.arn
}

output "name" {
  description = "DynamoDB table name"
  value       = aws_dynamodb_table.this.name
}

output "stream_arn" {
  description = "DynamoDB table stream ARN"
  value       = aws_dynamodb_table.this.stream_arn
}

output "access_policies" {
  description = "Access policy ARNs for the DynamoDB table"
  value = {
    read  = aws_iam_policy.read.arn
    write = aws_iam_policy.write.arn
  }
}