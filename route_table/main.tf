resource "aws_route_table" "main" {
  vpc_id = var.vpc_id
  tags = {
    Name = "main-route-table"
  }
}

resource "aws_route" "internet_access" {
  route_table_id         = aws_route_table.main.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = var.igw_id
}