output "ip_address"  {
    value = "${aws_instance.ubuntu[*].public_ip}"
}

output "AMI" {
    value = "${aws_instance.ubuntu[*].ami}"  
}