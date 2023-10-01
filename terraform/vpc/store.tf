resource "aws_ssm_parameter" "vpc_id" {
  #name  = "/jomacs/us-west-2/vpc/id"
  name  = "${local.ssm_path_prefix}/id"
  type  = "String"
  value = aws_vpc.vpc.id
}

resource "aws_ssm_parameter" "private-subnets_ids" {
  #name  = "/jomacs/us-west-2/vpc/pri-subnets/ids"
  name  = "${local.ssm_path_prefix}/subnets_private/ids"
  type  = "String"
  value = join(",", [aws_subnet.subnet_private1.id, aws_subnet.subnet_private2.id])
}

resource "aws_ssm_parameter" "pub-subnets_ids" {
  #name  = "/jomacs/us-west-2/vpc/pub-subnets/ids"
  name  = "${local.ssm_path_prefix}/subnets_public/ids"
  type  = "String"
  value = join(",", [aws_subnet.subnet_public1.id, aws_subnet.subnet_public2.id])
}

resource "aws_ssm_parameter" "vpc_cidr" {
  #name  = "/jomacs/us-west-2/vpc/vpc_cidr"
  name  = "${local.ssm_path_prefix}/vpc_cidr"
  type  = "String"
  value = var.vpc_cidr
}