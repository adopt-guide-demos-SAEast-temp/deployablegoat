resource "aws_s3_bucket" "data" {
  # bucket is public
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  bucket        = "${local.resource_prefix.value}-data"
  acl           = "public-read"
  force_destroy = true
  tags = {
    git_commit           = "8aefc18757655c5685aca4a12b2a1a179f620ee1"
    git_file             = "aws/s3.tf"
    git_last_modified_at = "2021-06-16 14:25:48"
    git_last_modified_by = "matt@bridgecrew.io"
    git_modifiers        = "matt"
    git_org              = "adopt-guide-demos-SAEast-temp"
    git_repo             = "deployablegoat"
    yor_trace            = "c0f3ca1e-a52c-422e-a4f0-2aa07bfd23de"
  }
}

resource "aws_s3_bucket" "financials" {
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  bucket        = "${local.resource_prefix.value}-financials"
  acl           = "private"
  force_destroy = true
  tags = {
    git_commit           = "8aefc18757655c5685aca4a12b2a1a179f620ee1"
    git_file             = "aws/s3.tf"
    git_last_modified_at = "2021-06-16 14:25:48"
    git_last_modified_by = "matt@bridgecrew.io"
    git_modifiers        = "matt"
    git_org              = "adopt-guide-demos-SAEast-temp"
    git_repo             = "deployablegoat"
    yor_trace            = "305e4106-b6cb-4c73-8043-a60af67da4c2"
  }
}

resource "aws_s3_bucket" "operations" {
  # bucket is not encrypted
  # bucket does not have access logs
  bucket = "${local.resource_prefix.value}-operations"
  acl    = "private"
  versioning {
    enabled = true
  }
  force_destroy = true
  tags = {
    git_commit           = "8aefc18757655c5685aca4a12b2a1a179f620ee1"
    git_file             = "aws/s3.tf"
    git_last_modified_at = "2021-06-16 14:25:48"
    git_last_modified_by = "matt@bridgecrew.io"
    git_modifiers        = "matt"
    git_org              = "adopt-guide-demos-SAEast-temp"
    git_repo             = "deployablegoat"
    yor_trace            = "18c2b28b-2ef5-49f5-b4e9-8752553dc27c"
  }
}