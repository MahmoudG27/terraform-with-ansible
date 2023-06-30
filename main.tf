module "network" {
    source        = "./network"
    vpc-cidr      = var.vpc-cidr
    public1-cidr  = var.public1-cidr
    private1-cidr = var.private1-cidr
    az1           = var.az1
    az2           = var.az2
}