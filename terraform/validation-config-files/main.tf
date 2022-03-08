variable "instance_count" {
  type    = string
  default = "5"
}

resource "aws_instaance" "test-instance!" {
  ami           = "ami-0612e041366af94b2"
  instance_type = t2.micro
  count         = var.instance_count
  log_level     = "debug"
}
