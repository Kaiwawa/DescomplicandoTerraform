// Last ubuntu version on east
data "aws_ami" "ubuntu-east" {
  most_recent = true
  provider = aws.east
 
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  
  owners = ["099720109477"]
}

// Last ubuntu version on west
# data "aws_ami" "ubuntu-west" {
#   most_recent = true
#   provider = aws.west
#   filter {
#     name   = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
#   }
#   owners = ["099720109477"]
# }

// Resource on AWS East
resource "aws_instance" "ubuntu_teste_east" {
    provider = aws.east
    ami = data.aws_ami.ubuntu-east.id
    instance_type = "t3.micro"

    tags = {
        Name = "ec2-teste-ubuntu-e"
    }
}

// Resource on AWS West
# resource "aws_instance" "ubuntu_teste_west" {
#     provider = aws.west
#     ami = data.aws_ami.ubuntu-west.id
#     instance_type = "t3.micro"

#     tags = {
#         Name = "ec2-teste-ubuntu-w"
#     }
# }

# // Resource on GCP
# resource "gcp_instance" "name" {
#     provider = gcp.google
#     name = "gcp-instance"
# }