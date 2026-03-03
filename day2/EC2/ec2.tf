resource "aws_instance" "ubuntu" {
    count = var.servers
    ami = "ami-0b6c6ebed2801a5cb"
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