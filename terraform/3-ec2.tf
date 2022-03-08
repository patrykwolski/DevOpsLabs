resource "aws_instance" "test-instance-1" {
  ami           = "ami-0612e041366af94b2"
  instance_type = "t2.nano"
}

resource "aws_instance" "test-instance-2" {
  ami           = "ami-0612e041366af94b2"
  instance_type = "t2.nano"
}

resource "aws_instance" "test-instance-3" {
  ami           = "ami-0612e041366af94b2"
  instance_type = "t2.nano"
}
