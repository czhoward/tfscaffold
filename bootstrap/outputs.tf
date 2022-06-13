output "bucket_arn" {
  value = aws_s3_bucket.bucket.arn
}

output "bucket_policy" {
  value = data.aws_iam_policy_document.bucket.json
}

output "kms_key_arn" {
  value = aws_kms_key.s3.arn
}

output "kms_key_id" {
  value = aws_kms_key.s3.id
}

output "kms_key_policy" {
  value = data.aws_iam_policy_document.kms_key_s3.json
}

output "bootstrap_tfstate_bucket_name" {
  value = aws_s3_bucket.tfstate_bucket.id
}

output "bootstrap_tfstate_lock_ddbtable_name" {
  value = aws_dynamodb_table.tfstate_lock.name
}