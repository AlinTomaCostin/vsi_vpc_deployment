
#locals {
#  ZONE = "eu-de-1"
#  HOSTNAME = "alint01"
#}

data "ibm_is_vpc" "vpc" {
  name		= var.VPC
}

data "ibm_is_security_group" "securitygroup" {
  name		= var.SECURITYGROUP
}

data "ibm_is_subnet" "subnet" {
  name		= var.SUBNET
}

data "ibm_is_image" "image" {
  name		= var.IMAGE
}

#data "ibm_is_ssh_key" "ssh_key_id" {
#   name = var.ssh_key
#}

resource "ibm_is_instance" "vsi" {
  name		= "${var.HOSTNAME}-vsi"
  vpc		= data.ibm_is_vpc.vpc.id
  zone		= var.ZONE
  #keys		= [data.ibm_is_ssh_key.ssh_key_id.id]
  keys    = var.SSH_Keys
  image		= data.ibm_is_image.image.id
  profile	= var.PROFILE
  

  primary_network_interface {
    subnet          = data.ibm_is_subnet.subnet.id
    security_groups = [ data.ibm_is_security_group.securitygroup.id ]
  }
  volumes = var.VOLUMES_LIST
}

resource "ibm_is_floating_ip" "fip" {
  name		= "${var.HOSTNAME}-fip"
  target	= ibm_is_instance.vsi.primary_network_interface[0].id
}
