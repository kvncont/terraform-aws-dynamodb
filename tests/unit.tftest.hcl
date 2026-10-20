mock_provider "aws" {}

run "applies_required_tags_to_table" {
  command = plan

  variables {
    table_name     = "unit-test-table"
    table_hash_key = "id"

    tags = {
      environment = "test"
      managed_by  = "terraform"
      owner       = "unit-test"
    }
  }

  assert {
    condition = aws_dynamodb_table.this.tags == tomap({
      environment = "test"
      managed_by  = "terraform"
      owner       = "unit-test"
    })
    error_message = "The DynamoDB table must receive all required tags."
  }
}

run "rejects_empty_required_tag" {
  command = plan

  variables {
    table_name     = "unit-test-table"
    table_hash_key = "id"

    tags = {
      environment = "test"
      managed_by  = "terraform"
      owner       = " "
    }
  }

  expect_failures = [var.tags]
}
