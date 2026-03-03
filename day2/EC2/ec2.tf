resource "aws_instance" "ubuntu" {
    count = var.servers
    ami = "ami-0b6c6ebed2801a5cb"
    instance_type = "t3.micro"
    
    tags = {
        Name = "ec2-teste-ubuntu"
    }
}