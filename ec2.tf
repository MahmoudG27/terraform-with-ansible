resource "aws_instance" "tf_nginx" {

  ami           = var.ec2_ami
  instance_type = var.ec2_type
  subnet_id     = module.network.public_subnet_id1
  key_name = "terraform-key.pem"

  provisioner "local-exec" {
      command = "echo '[nginx]\n${aws_instance.tf_nginx.public_ip}' ansible_ssh_private_key_file=../terraform-key.pem  >> ./ansible/inventory"
  }

  tags = {
    Name = "nginx"
  }
}

resource "aws_instance" "tf_DB" {
  ami           = var.ec2_ami
  instance_type = var.ec2_type
  subnet_id     = module.network.private_subnet_id1
  key_name = "terraform-key.pem"

  provisioner "local-exec" {
      command = "echo '[DB]\n${aws_instance.tf_DB.public_ip}' ansible_ssh_private_key_file=../terraform-key.pem  >> ./ansible/inventory"
  }

  tags = {
    Name = "Database"
  }
}

  