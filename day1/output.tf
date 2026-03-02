output "ip_address" {
    value = aws_instance.ubuntu_teste.public_ip
}

output "Public_DNS" {
  value = aws_instance.ubuntu_teste.public_dns
}