# resource "aws_instance" "web" {
#   ami           = "ami-0b6c6ebed2801a5cb"
#   instance_type = "t3.micro"

#   tags = {
#     Name = "ec2-teste-ubuntufofinho"
#   }
# }


data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  
  owners = ["099720109477"]
}

resource "aws_instance" "ubuntu_teste" {
    ami = data.aws_ami.ubuntu.id
    instance_type = "t3.micro"
  credit_specification {
    cpu_credits = "standard"
  }
  root_block_device {
    volume_size = 20
    volume_type = "gp3"
  }
    tags = {
        Name = "ec2-teste-ubuntu"
    }
}