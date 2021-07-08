resource "aws_s3_bucket" "igi010699" {
  bucket = "ctl-devops-bucket-tf"
  acl    = "public-read"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
