output "vpc_id" {
    value = module.vpc.vpc_id
}

output "vpc_cidr_block" {
    value = module.vpc.vpc_cidr_block
}

output "private_subnets" {
    value = module.vpc.private_subnets 
}

output "public_subnets" {
    value = module.vpc.public_subnets 
}

output "nat_public_ips" {
    value = module.vpc.nat_public_ips 
}

resource "aws_ssm_parameter" "nat_public_ips" {
    type = "String"
    name = format("/%s/%s/%s", var.vpc_name, local.name, "nat_public_ips")
    value = join(", ", module.vpc.nat_public_ips) 
}

output "azs" {
    value = module.vpc.azs 
} 
