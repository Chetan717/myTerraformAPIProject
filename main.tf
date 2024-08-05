module "networking" {
    source = "./networking"
    vpc_az = var.vpc_az
    vpc_cidr = var.vpc_cidr
    vpc_name = var.vpc_name
    cidr_private_subnet = var.cidr_private_subnet
    cidr_public_subnet = var.cidr_public_subnet
}