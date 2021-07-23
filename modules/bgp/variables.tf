variable "compartment_id" {
  description = "Compartment OCID where the VCN is created."
}

variable "cpeip" {
  default = ""
}

variable "ikeversion" {
  default = "V1"
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

variable "bgpasn" {

}

variable "custinterface" {

}

variable "oracleinterface" {

}

variable "routing" {

}

variable "static_enabled" {

}

variable "ipsec_id" {

}

variable "secret1" {
  default = null
}

variable "secret2" {
  default = null
}
