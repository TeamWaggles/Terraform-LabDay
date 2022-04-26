resource "aws_vpc" "alain_vpc" {
  cidr_block           = "10.123.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "dev-alain-vpc"
  }

}

resource "aws_subnet" "alain_public_subnet" {
  vpc_id                  = aws_vpc.alain_vpc.id
  cidr_block              = "10.123.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-2b"

  tags = {
    Name = "dev-alain-public"
  }
}

resource "aws_internet_gateway" "alain_internet_gateway" {
  vpc_id = aws_vpc.alain_vpc.id

  tags = {
    Name = "dev-alain-igw"
  }
}

resource "aws_route_table" "alain_public_rt" {
  vpc_id = aws_vpc.alain_vpc.id

  tags = {
    Name = "dev_public_alain_rt"
  }
}

resource "aws_route" "default_route" {
  route_table_id         = aws_route_table.alain_public_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.alain_internet_gateway.id
}

resource "aws_route_table_association" "alain_public_assoc" {
  subnet_id      = aws_subnet.alain_public_subnet.id
  route_table_id = aws_route_table.alain_public_rt.id
}

resource "aws_security_group" "alain_sg" {
  name        = "dev-alain-sg"
  description = "dev security group for alain"
  vpc_id      = aws_vpc.alain_vpc.id

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}

resource "aws_key_pair" "alain_path" {
    key_name = "alainkey"
    public_key = file("~/.ssh/alain-tf-key.pub")
}