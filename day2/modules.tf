module "ec2" {
  source = "./EC2"
  servers = 1
}

output "ip_addrees" {
  value = module.ec2.ip_address
}

output "AMI" {
  value = module.ec2.AMI  
}