resource "aws_instance" "bootcamp" {
  ami           = "ami-0b6c6ebed2801a5cb"
  instance_type = "t2.micro"
  key_name = "Terraform"
  security_groups = [ "allow_ssh","allow_http","allow_egress" ]
  user_data = file ( "script.sh" )

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_instance" "multiplos" {
  count         = 3
  ami           = "ami-0b6c6ebed2801a5cb"
  instance_type = "t2.micro"
  key_name = "Terraform"
  security_groups = [ "allow_ssh","allow_http","allow_egress" ]
  user_data = file("script.sh")

  tags = {
    Name = "maquina-${count.index}"
  }
}