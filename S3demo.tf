resource "aws_s3_bucket" "igi010699" {
  bucket = "igi010699"
  acl    = "public-read"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
