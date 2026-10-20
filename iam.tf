data "aws_iam_policy_document" "read" {
  statement {
    sid    = "DynamoDBRead"
    effect = "Allow"
    actions = [
      "dynamodb:GetItem",
      "dynamodb:BatchGetItem",
      "dynamodb:Query",
      "dynamodb:Scan",
      "dynamodb:DescribeTable",
    ]
    resources = [
      aws_dynamodb_table.this.arn,
      "${aws_dynamodb_table.this.arn}/index/*",
    ]
  }

  dynamic "statement" {
    for_each = var.kms_key_arn != null ? [1] : []
    content {
      sid       = "KmsDecrypt"
      effect    = "Allow"
      actions   = ["kms:Decrypt", "kms:DescribeKey"]
      resources = [var.kms_key_arn]
    }
  }
}

resource "aws_iam_policy" "read" {
  name   = "pol-ddb-${substr(var.table_name, 0, 50)}-${sha256(aws_dynamodb_table.this.arn)}-read"
  path   = "/platform/approved/"
  policy = data.aws_iam_policy_document.read.json
  tags   = var.tags
}

data "aws_iam_policy_document" "write" {
  source_policy_documents = [data.aws_iam_policy_document.read.json]

  statement {
    sid    = "DynamoDBWrite"
    effect = "Allow"
    actions = [
      "dynamodb:PutItem",
      "dynamodb:UpdateItem",
      "dynamodb:DeleteItem",
      "dynamodb:BatchWriteItem",
    ]
    resources = [aws_dynamodb_table.this.arn]
  }

  dynamic "statement" {
    for_each = var.kms_key_arn != null ? [1] : []
    content {
      sid       = "KmsEncrypt"
      effect    = "Allow"
      actions   = ["kms:GenerateDataKey", "kms:Encrypt"]
      resources = [var.kms_key_arn]
    }
  }
}

resource "aws_iam_policy" "write" {
  name   = "pol-ddb-${substr(var.table_name, 0, 50)}-${sha256(aws_dynamodb_table.this.arn)}-write"
  path   = "/platform/approved/"
  policy = data.aws_iam_policy_document.write.json
  tags   = var.tags
}