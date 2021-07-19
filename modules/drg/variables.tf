variable "compartment_id" {
  description = "Compartment OCID where the VCN is created."
}

variable "vcn_id" {

}


variable "drg_enabled" {
  default = true
}

variable "display_name_prefix" {
  description = "Display name prefix for the resources created."
}

variable "drg_attach" {

}

variable "ext_drg_id" {

}
