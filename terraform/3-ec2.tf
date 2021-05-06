resource "aws_instance" "test-instance-1" {
  ami           = "ami-0a4f7079eb2559d2d"
  instance_type = "t2.nano"
}

resource "aws_instance" "test-instance-2" {
  ami           = "ami-0a4f7079eb2559d2d"
  instance_type = "t2.nano"
}

resource "aws_instance" "test-instance-3" {
  ami           = "ami-0a4f7079eb2559d2d"
  instance_type = "t2.nano"
}
