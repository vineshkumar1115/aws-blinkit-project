
resource "aws_route_table" "blinkit_public_rt" {
  vpc_id = aws_vpc.blinkit_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.blinkit_igw.id
  }

  tags = {
    Name = "blinkit-public-rt"
  }
}

resource "aws_route_table_association" "blinkit_public_association" {
  subnet_id      = aws_subnet.blinkit_public_subnet.id
  route_table_id = aws_route_table.blinkit_public_rt.id
}
