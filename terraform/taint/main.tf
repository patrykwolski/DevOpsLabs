terraform {
  required_version = "0.14.6"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.37"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "test-instance" {
  ami           = "ami-0a4f7079eb2559d2d"
  instance_type = "t2.micro"
}
