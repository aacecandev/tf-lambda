// Random name for S3 bucket
resource "random_pet" "lambda_bucket_name" {
  prefix = "tf-lambda"
  length = 4
}

// Keep bucket private
resource "aws_s3_bucket" "lambda_bucket" {
  bucket = random_pet.lambda_bucket_name.name
  acl = "private"
  force_destroy = true
}