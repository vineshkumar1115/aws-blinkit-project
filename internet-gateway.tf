
resource "aws_internet_gateway" "blinkit_igw" {
  vpc_id = aws_vpc.blinkit_vpc.id

  tags = {
    Name = "blinkit-igw"
  }
}
