variable "ZONE" {
    type = string
    description = "Cloud Zone"
}

variable "VPC" {
    type = string
    description = "VPC name"
}

variable "SUBNET" {
    type = string
    description = "subnet"
}

variable "SECURITYGROUP" {
    type = string
    description = "Security group name"
}

variable "HOSTNAME" {
    type = string
    description = "Hostname"
}

variable "PROFILE" {
    type = string
    description = "Profile name"
}

variable "IMAGE" {
    type = string
    description = "IMAGE name"
}

variable "SSH_Keys" {
type = list(string)
description = "SSH Keys"
}

variable "VOLUMES_LIST" {
    type = list(string)
    description = "List of volumes"
}





