resource "aws_vpc" "vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "subnet_private1" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.subnet_private1-cidr

  tags = {
    Name = var.subnet_private1-name
  }
}

resource "aws_subnet" "subnet_private2" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.subnet_private2-cidr

  tags = {
    Name = var.subnet_private2-name
  }
}

resource "aws_subnet" "subnet_public1" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.subnet_public1-cidr

  tags = {
    Name = var.subnet_public1-name
  }
}

resource "aws_subnet" "subnet_public2" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.subnet_public2-cidr

  tags = {
    Name = var.subnet_public2-name
  }
}
