# terraform {
#   backend "s3" {
#     bucket         = "${lower(var.project)}-backend-bucket"
#     key            = "terraform.tfstate"
#     region         = var.region
#     dynamodb_table = "${lower(var.project)}-backend-lock"
#   }
# }

# Create Amazon S3 bucket
resource "aws_s3_bucket" "backend" {
  bucket = "${lower(var.project)}-backend-bucket"

  tags = {
    Name = "${lower(var.project)}-backend-bucket"
  }

  lifecycle {
    prevent_destroy = true
  }
}

# Enable public access block
resource "aws_s3_bucket_public_access_block" "backend" {
  bucket = aws_s3_bucket.backend.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# Enable versioning for the S3 bucket
resource "aws_s3_bucket_versioning" "backend" {
  bucket = aws_s3_bucket.backend.id

  versioning_configuration {
    status = "Enabled"
  }
}

# Enable server-side encryption on the S3 bucket
resource "aws_s3_bucket_server_side_encryption_configuration" "backend" {
  bucket = aws_s3_bucket.backend.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

# Create DynamoDB table for state locking
resource "aws_dynamodb_table" "backend" {
  name         = "${lower(var.project)}-backend-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "${lower(var.project)}-backend-lock"
  }
}
