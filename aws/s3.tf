resource "aws_s3_bucket" "data" {
  # bucket is public
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning

  #generate new tags
  bucket        = "${local.resource_prefix.value}-data"
  acl           = "public-read"
  force_destroy = true
  tags = {
    git_commit           = "e1f97db95325010e91370f5e4f7e5c242459d2e1"
    git_file             = "aws/s3.tf"
    git_last_modified_at = "2023-03-08 22:01:45"
    git_last_modified_by = "gbrandyb@gmail.com"
    git_modifiers        = "gbrandyb/matt"
    git_org              = "adopt-guide-demos-SAEast-temp"
    git_repo             = "deployablegoat"
    yor_trace            = "63ae7f32-f093-4c4a-b70a-17087257cd71"
  }
}

resource "aws_s3_bucket" "financials" {
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning

  #generate new tags
  bucket        = "${local.resource_prefix.value}-financials"
  acl           = "private"
  force_destroy = true
  tags = {
    git_commit           = "e1f97db95325010e91370f5e4f7e5c242459d2e1"
    git_file             = "aws/s3.tf"
    git_last_modified_at = "2023-03-08 22:01:45"
    git_last_modified_by = "gbrandyb@gmail.com"
    git_modifiers        = "gbrandyb/matt"
    git_org              = "adopt-guide-demos-SAEast-temp"
    git_repo             = "deployablegoat"
    yor_trace            = "f6994b01-61a7-4d08-8a12-9cb5d9c336de"
  }
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
  tags = {
    git_commit           = "e1f97db95325010e91370f5e4f7e5c242459d2e1"
    git_file             = "aws/s3.tf"
    git_last_modified_at = "2023-03-08 22:01:45"
    git_last_modified_by = "gbrandyb@gmail.com"
    git_modifiers        = "gbrandyb/matt"
    git_org              = "adopt-guide-demos-SAEast-temp"
    git_repo             = "deployablegoat"
    yor_trace            = "a854dfcc-1e33-459b-afe4-3b456520b333"
  }
}