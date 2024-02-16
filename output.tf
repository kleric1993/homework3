output "public_ip" {
    value = aws_lightsail_instance.my_server.public_ip_address
}

output "private_ip" {
    value = aws_lightsail_instance.my_server.private_ip_address
}

output "ssh_command" {
    value = "ssh -i ${local_file.my-key.filename} centos@${aws_lightsail_instance.my_server.public_ip_address}"
}