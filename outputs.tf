output "public_ec2_ip" {
  value = aws_instance.tf_nginx.public_ip
}

output "DB_ec2_ip" {
  value = aws_instance.tf_DB.public_ip
}