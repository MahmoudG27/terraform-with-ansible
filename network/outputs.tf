output "public_subnet_id1" {
  value = aws_subnet.tf_public1.id
}

output "private_subnet_id1" {
  value = aws_subnet.tf_private1.id
}