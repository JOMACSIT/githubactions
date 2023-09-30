locals {
    #ssm_path_prefix = "/jomacs/us-west-2/vpc"
    ssm_path_prefix = format("/%s/%s/%s", "jomacs", var.region, "vpc")
}