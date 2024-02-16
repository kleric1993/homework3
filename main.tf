resource "aws_lightsail_instance" "my_server" {
    name = "my_server"
    availability_zone = "us-east-1a"
    blueprint_id = "centos_7_2009_01"
    bundle_id = "nano_3_0"
    key_pair_name = "my-key"
}

resource "aws_lightsail_key_pair" "my-key" {
    name = "my-key"
}


resource "local_file" "my-key" {
  filename = "${path.module}/my-key.pem"  
  content = aws_lightsail_key_pair.my-key.private_key
}