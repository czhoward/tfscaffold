resource "aws_s3_bucket_acl" "tfstate_bucket" {
  bucket = aws_s3_bucket.tfstate_bucket.id
  acl    = "private"
}
