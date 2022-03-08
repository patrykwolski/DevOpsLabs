resource "aws_instance" "test-instance" {
  ami           = "ami-0612e041366af94b2"
  instance_type = "t2.nano"
}
