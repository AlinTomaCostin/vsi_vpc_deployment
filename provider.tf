provider "ibm" {
  ibmcloud_api_key = var.ibmcloud_api_key
  region           = "eu-de"
}
#variable "SSH_Keys" {
#  type    = list(string)
# default = [ "r010-637a9656-1ee2-4276-9709-b58051e8a5d6" ]
#}