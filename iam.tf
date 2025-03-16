data "aws_iam_role" "app" {
  name = var.app_role_name
}

resource "aws_iam_role_policy" "add_on" {
  name = "CustomDynamoDBPolicy"
  role = data.aws_iam_role.app.name

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid    = "AllowDynamoDBActions"
        Effect = "Allow"
        Action = [
          "dynamodb:GetItem",
          "dynamodb:Scan",
          "dynamodb:Query",
          "dynamodb:PutItem",
          "dynamodb:UpdateItem",
          "dynamodb:DeleteItem"
        ]
        Resource = aws_dynamodb_table.add_on.arn
      }
    ]
  })
}