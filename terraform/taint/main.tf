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
  ami           = "ami-0612e041366af94b2"
  instance_type = "t2.micro"
}
