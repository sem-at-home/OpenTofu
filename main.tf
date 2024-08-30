terraform {
  backend "s3" {
    bucket = "opentofu-state-372790240845"
    key    = "s3"
    region = "eu-west-1"
  }
}

provider "aws" {
  region = "eu-west-1" # Change this to your desired AWS region
}

resource "aws_s3_bucket" "this" {
  bucket = "droso-it-opentofu-bucket"
  tags = {
    Name        = "Droso IT OpenTofu Bucket"
    Environment = "Production"
  }
}