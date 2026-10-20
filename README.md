## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 6.18 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_aws"></a> [aws](#provider\_aws) | 6.69.1 |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [aws_dynamodb_table.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table) | resource |
| [aws_iam_policy.read](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy.write](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy_document.read](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.write](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_kms_key_arn"></a> [kms\_key\_arn](#input\_kms\_key\_arn) | ARN of the KMS key used for encrypting the DynamoDB table | `string` | `null` | no |
| <a name="input_table_hash_key"></a> [table\_hash\_key](#input\_table\_hash\_key) | Hash key for the table | `string` | n/a | yes |
| <a name="input_table_name"></a> [table\_name](#input\_table\_name) | DynamoDB table name | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Required environment, managed\_by, and owner tags applied explicitly to all module resources that support tagging | <pre>object({<br/>    environment = string<br/>    managed_by  = string<br/>    owner       = string<br/>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_access_policies"></a> [access\_policies](#output\_access\_policies) | Access policy ARNs for the DynamoDB table |
| <a name="output_arn"></a> [arn](#output\_arn) | DynamoDB table ARN |
| <a name="output_name"></a> [name](#output\_name) | DynamoDB table name |
| <a name="output_stream_arn"></a> [stream\_arn](#output\_stream\_arn) | DynamoDB table stream ARN |
