## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.91.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.91.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_dynamodb_table.add_on](https://registry.terraform.io/providers/hashicorp/aws/5.91.0/docs/resources/dynamodb_table) | resource |
| [aws_iam_role_policy.add_on](https://registry.terraform.io/providers/hashicorp/aws/5.91.0/docs/resources/iam_role_policy) | resource |
| [aws_iam_role.app](https://registry.terraform.io/providers/hashicorp/aws/5.91.0/docs/data-sources/iam_role) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_role_name"></a> [app\_role\_name](#input\_app\_role\_name) | Role name to attache the new DynamoDB policy | `string` | n/a | yes |
| <a name="input_assume_role_arn"></a> [assume\_role\_arn](#input\_assume\_role\_arn) | ARN Role that Terraform assume | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS Region | `string` | n/a | yes |
| <a name="input_table_hash_key"></a> [table\_hash\_key](#input\_table\_hash\_key) | Hash key for the table | `string` | n/a | yes |
| <a name="input_table_name"></a> [table\_name](#input\_table\_name) | DynamoDB table name | `string` | n/a | yes |
| <a name="input_waypoint_application"></a> [waypoint\_application](#input\_waypoint\_application) | Name of the application | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dynamodb_table_arn"></a> [dynamodb\_table\_arn](#output\_dynamodb\_table\_arn) | DynamoDB table ARN |
