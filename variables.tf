variable "ZONE" {
	type		= string
	description	= "Cloud Zone"
}

variable "VPC" {
	type		= string
	description = "VPC name"
}

variable "SUBNET" {
	type		= string
	description = "Subnet name"
}

variable "SECURITYGROUP" {
	type		= string
	description = "Security group name"
}

variable "RESOURCEGROUP" {
	type		= string
	description = "resource group name"
}

variable "HOSTNAME" {
    type        = string
    description = "HOST name"
}

variable "PROFILE" {
    type        = string
    description = "profile name"
}

variable "IMAGE" {
    type        = string
    description = "image name"
}

variable "SSH_Keys" {
    type        = list(string)
    description = "ssh key name"
}

variable "ibmcloud_api_key" {
	type		= string
	description = "API key name"
}
variable "SWAP" {
	type		= string
	description = "SWAP VG name"
}

variable "VOL1" {
	type		= string
	description = "volume name"
}

#variable "ssh_key" {
#    type = string
#}