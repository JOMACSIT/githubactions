resource "aws_ssm_parameter" "vpc_id" {
    type = "String"
    name = format("/%s/%s/%s", var.vpc_name, local.name, "vpc_id")
    value = module.vpc.vpc_id
}

resource "aws_ssm_parameter" "vpc_cidr_block" {
    type = "String"
    name = format("/%s/%s/%s", var.vpc_name, local.name, "vpc_cidr_block")
    value = module.vpc.vpc_cidr_block
}

resource "aws_ssm_parameter" "private_subnets" {
    type = "String"
    name = format("/%s/%s/%s", var.vpc_name, local.name, "private_subnets")
    value = join(",", module.vpc.private_subnets)
}

resource "aws_ssm_parameter" "public_subnets" {
    type = "String"
    name = format("/%s/%s/%s", var.vpc_name, local.name, "public_subnets")
    value = join(",", module.vpc.public_subnets)
}

resource "aws_ssm_parameter" "azs" {
    type = "String"
    name = format("/%s/%s/%s", var.vpc_name, local.name, "azs")
    value = join(",", module.vpc.azs)
}
