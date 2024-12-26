resource "aws_eip" "nat" {
  domain = "vpc"  # Use domain instead of vpc
}
resource "aws_nat_gateway" "gw" {
  allocation_id = aws_eip.nat.id
  subnet_id     = var.public_subnet_id

  tags = {
    Name = "main-nat-gw"
  }

}