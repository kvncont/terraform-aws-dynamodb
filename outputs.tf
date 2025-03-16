output "dynamodb_table_arn" {
  value = resource.aws_dynamodb_table.add_on.arn
  description = "DynamoDB table ARN"
}