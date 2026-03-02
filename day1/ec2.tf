resource "aws_instance" "web" {
  ami           = "ami-0b6c6ebed2801a5cb"
  instance_type = "t3.micro"

  tags = {
    Name = "ec2-teste-ubuntufofinho"
  }
}