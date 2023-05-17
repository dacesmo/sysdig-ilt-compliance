resource "aws_s3_bucket" "data" {
  # bucket is public
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  bucket        = "${local.resource_prefix.value}-data"
  force_destroy = true
  tags = merge({
    Name        = "${local.resource_prefix.value}-data"
    Environment = local.resource_prefix.value
    }, {
    git_commit           = "4d57f83ca4d3a78a44fb36d1dcf0d23983fa44f5"
    git_file             = "terraform/aws/s3.tf"
    git_last_modified_at = "2022-05-18 07:08:06"
    git_last_modified_by = "nimrod@bridgecrew.io"
    git_modifiers        = "34870196+LironElbaz/nimrod/nimrodkor"
    git_org              = "bridgecrewio"
    git_repo             = "terragoat"
    yor_trace            = "0874007d-903a-4b4c-945f-c9c233e13243"
  })
}

