resource "aws_instance" "test-instance" {
  ami                    = "ami-00f69856ea957jgjf"
  instance_type          = "t2.nano"
  availability_zone      = "eu-central-1a"
  subnet_id              = "subnet-45e01539"
  vpc_security_group_ids = ["sg-082d44eee7e8087ad","sg-aea68bc8"]
  associate_public_ip_address = true
  root_block_device {
    delete_on_termination = true
    encrypted             = false
    volume_size           = 8
    volume_type           = "gp2"
  }
  tags = {
    Name = "test-server"
    env = "test-env"
  }
}
