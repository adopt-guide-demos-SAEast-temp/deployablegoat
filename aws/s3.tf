resource "aws_s3_bucket" "data" {
  # bucket is public
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning

  #generate new tags
  bucket        = "${local.resource_prefix.value}-data"
  acl           = "public-read"
  force_destroy = true
}

resource "aws_s3_bucket" "financials" {
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning

  #generate new tags
  bucket        = "${local.resource_prefix.value}-financials"
  acl           = "private"
  force_destroy = true
}

resource "aws_s3_bucket" "operations" {
  # bucket is not encrypted
  # bucket does not have access logs

  #generate new tags
  bucket = "${local.resource_prefix.value}-operations"
  acl    = "private"
  versioning {
    enabled = true
  }
  force_destroy = true
}