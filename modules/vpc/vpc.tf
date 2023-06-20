resource "ibm_is_vpc" "vpc" {
  name = var.VPC
    timeouts {
    create = "20m"
    delete = "20m"
  }
 }
data "ibm_resource_group" "group_id" {
  name = "alint-resource-group-test"
}
resource "ibm_is_subnet" "subnet" {
  zone                     = var.ZONE
  name                     = var.SUBNET
  vpc                      = ibm_is_vpc.vpc.id
  ip_version               = "ipv4"
  #ipv4_cidr_block          = "10.243.125.0/28"
  total_ipv4_address_count = 256
}

resource "ibm_is_security_group" "securitygroup" {
  name		= var.SECURITYGROUP
  vpc		= ibm_is_vpc.vpc.id
}
