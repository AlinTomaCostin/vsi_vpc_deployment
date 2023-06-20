resource "ibm_is_volume" "vol-swap" {
  name = "${var.HOSTNAME}-swap"
  profile = "10iops-tier"
  zone = var.ZONE
  capacity = var.SWAP
  #iops = 200
  #resource_group = var.RESOURCEGROUP
}
resource "ibm_is_volume" "vol1" {
  name = "${var.HOSTNAME}-vol1"
  profile = "10iops-tier"
  zone = var.ZONE
  capacity = var.VOL1
  #iops = 200
  #resource_group = var.RESOURCEGROUP
}
output "volumes_list" {
  value       = [ ibm_is_volume.vol-swap.id , ibm_is_volume.vol1.id ]
}