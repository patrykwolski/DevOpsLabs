variable "instance_count" {
  type    = string
  default = "5"
}

resource "aws_instaance" "test-instance!" {
  ami           = "ami-0a4f7079eb2559d2d"
  instance_type = t2.micro
  count         = var.instance_count
  log_level     = "debug"
}
