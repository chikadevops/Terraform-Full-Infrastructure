terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket-808"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
  }
}
