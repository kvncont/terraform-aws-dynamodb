output "table_name" {
  description = "Name of the example DynamoDB table"
  value       = module.dynamodb.name
}

output "table_arn" {
  description = "ARN of the example DynamoDB table"
  value       = module.dynamodb.arn
}

output "access_policies" {
  description = "Access policy ARNs for the example DynamoDB table"
  value       = module.dynamodb.access_policies
}