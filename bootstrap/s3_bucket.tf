resource "aws_s3_bucket" "tfstate_bucket" {
  bucket        = var.bucket_name
  force_destroy = false

  tags = merge(local.default_tags,
    map(
      "Name", "Terraform Scaffold TFState bucket"
    )
  )
}
