# Define local values to be used 
locals {
    owners = var.team 
    environment = var.environment 
    name = "${var.team}-${var.environment}"
    common_tags = {
        owners = local.owners 
        environment = local.environment
    }
}
