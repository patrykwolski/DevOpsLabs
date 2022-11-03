terraform {
  required_version = "1.3.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.37"
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
