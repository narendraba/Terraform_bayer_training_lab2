terraform {
  backend "s3" {
    bucket         = "spliting-bucket"
    key            = "storage/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "networking"
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "storage" {
  bucket = "my-storage-bucket1245"
  tags = {
    Name = "storage-buckets"
  }
}
