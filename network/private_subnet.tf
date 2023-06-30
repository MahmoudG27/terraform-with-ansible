resource "aws_subnet" "tf_private1" {
  vpc_id            = aws_vpc.tf_vpc.id
  cidr_block        = var.private1-cidr
  availability_zone = var.az1

  tags = {
    Name = "tf_private1"
  }
}