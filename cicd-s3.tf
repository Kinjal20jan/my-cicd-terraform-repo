resource "aws_s3_bucket" "codepipeline_artifacts" {
  bucket = "my-pipeline-artifacts"
  aws_s3_bucket_acl    = "private"
} 