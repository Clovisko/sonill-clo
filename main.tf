provider "aws" {
  region = "us-east-1"
  access_key = "AKIA4RPXBFIDYY54BH4P"
  secret_key = "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"
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
resource "aws_instance" "test" {
  ami           = "ami 00c39f71452c08778"
  instance_type = "t2.micro"
  tags = {
    Name = "my test-server"
  }
}