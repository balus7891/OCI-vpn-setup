variable "compartment_id" {
  description = "Compartment OCID where the VCN is created."
}

variable "cpeip" {
  default = ""
}

variable "ikeversion" {
  default = "V1"
}

variable "secret1" {
  default = null
}

variable "secret2" {
  default = null
}

variable "drgid" {
  default = ""
}

variable "cpeid" {
                    type = string
                    default = ""
            }
variable "display_name_prefix" {
  description = "Display name prefix for the resources created."
}


variable "staticroutes" {

}

variable "bgp_enabled" {

}
