# AWS S3 static website bucket

Taken from the hashicorp tutorial on [building and using a local module](https://learn.hashicorp.com/tutorials/terraform/module-create).

This module provisions AWS S3 buckets configured for static website hosting.

It expects a name for the bucket and some tags.

It returns an ARN for the bucket, the bucket ID, and a website domain name for the bucket.


