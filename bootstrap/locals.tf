locals {
  ro_principals = compact(distinct(flatten([
    var.tfscaffold_ro_principals,
    "arn:aws:iam::${var.aws_account_id}:root",
  ])))
  default_tags = {
    Account     = var.aws_account_id
    Project     = var.project
    Environment = var.environment
    Component   = var.component
  }
}
