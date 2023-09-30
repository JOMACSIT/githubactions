resource "aws_ssm_parameter" "vpc_id" {
  #name  = "/jomacs/us-west-2/vpc/day4VPC/id"
  name = "${local.ssm_path_prefix}/day4VPC/id"
  type  = "String"
  value = aws_vpc.day4VPC.id
}

resource "aws_ssm_parameter" "pri-subnets_ids" {
  #name  = "/jomacs/us-west-2/vpc/pri-subnets/ids"
  name = "${local.ssm_path_prefix}/pri-subnets/ids"
  type  = "String"
  value = join(",", [aws_subnet.pri-sn1.id, aws_subnet.pri-sn2.id])
}

resource "aws_ssm_parameter" "pub-subnets_ids" {
  #name  = "/jomacs/us-west-2/vpc/pub-subnets/ids"
  name = "${local.ssm_path_prefix}/pub-subnets/ids"
  type  = "String"
  value = join(",", [aws_subnet.pub-sn1.id, aws_subnet.pub-sn2.id])
}
