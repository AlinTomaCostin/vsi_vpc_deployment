module "vpc" {
    source = "./modules/vpc"
    ZONE = var.ZONE
    VPC = var.VPC
    SECURITYGROUP = var.SECURITYGROUP
    SUBNET = var.SUBNET
    RESOURCEGROUP = var.RESOURCEGROUP
}
module "volume" {
    source = "./modules/volume"
    ZONE = var.ZONE
    SWAP = var.SWAP
    VOL1 = var.VOL1
    RESOURCEGROUP = var.RESOURCEGROUP
    HOSTNAME = var.HOSTNAME
}
module "vsi" {
    source = "./modules/vsi"
    depends_on = [ module.vpc , module.volume]
    ZONE = var.ZONE
    VPC = var.VPC
    SECURITYGROUP = var.SECURITYGROUP
    SUBNET = var.SUBNET
    HOSTNAME = var.HOSTNAME 
    PROFILE = var.PROFILE
    IMAGE = var.IMAGE
    SSH_Keys = var.SSH_Keys
    VOLUMES_LIST	= module.volume.volumes_list
    #ssh_key = var.ssh_key  
}