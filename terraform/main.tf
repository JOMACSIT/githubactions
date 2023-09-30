resource "aws_vpc" "day4VPC" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "pri-sn1" {
  vpc_id     = aws_vpc.day4VPC.id
  cidr_block = var.pri-sn1-cidr

  tags = {
    Name = var.pri-sn1-name
  }
}

resource "aws_subnet" "pri-sn2" {
  vpc_id     = aws_vpc.day4VPC.id
  cidr_block = var.pri-sn2-cidr

  tags = {
    Name = var.pri-sn2-name
  }
}

resource "aws_subnet" "pub-sn1" {
  vpc_id     = aws_vpc.day4VPC.id
  cidr_block = var.pub-sn1-cidr

  tags = {
    Name = var.pub-sn1-name
  }
}

resource "aws_subnet" "pub-sn2" {
  vpc_id     = aws_vpc.day4VPC.id
  cidr_block = var.pub-sn2-cidr

  tags = {
    Name = var.pub-sn2-name
  }
}
