resource "aws_s3_bucket" "codepipeline_artifacts" {
  bucket = "my-pipeline-artifacts-kt"
  acl    = "private"
} 