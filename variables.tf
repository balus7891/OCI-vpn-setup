/*
* Copyright (c) 2021 July
//Author Balasubramannyam Sunil, email: balasubramannyam.sunil@oracle.com
 */

variable "tenancy_ocid" {
  description = "Tenancy OCID"
}

variable "compartment_ocid" {
  description = "Compartment OCID"
}


variable "region" {
  description = "Region Name"
}

variable "res_name" {
  description = "Service Name"
  default = ""
}

variable "quick_create" {
  description = "VPN should be created in a new network or an existing network. Options : New networking components will be created,  Existing networking components will be used"
  default = ""
}

variable "vcn" {
  description = "Virtual Cloud Network"
  default = ""
}

variable "vcn_cidr" {
  default = "10.1.0.0/16"
}

variable "vcnCompartment" {
  description = "Virtual Cloud Network Compartment"
  default = ""
}

variable "drg_create" {
  description = "VPN should be created in a new DRG or an existing DRG. Options : New DRG will be created,  Existing DRG will be used"
  default = ""
}

variable "drg" {
  default = false

}


variable "drg_ocid" {
  description = "Existing DRG ID"
  default = ""
}

variable "cpe_model" {
  description = "CPE model"
  default = ""

}


variable "ike_version" {
  description = "IKE_value"
  default = "V1"
}


variable "cpe_ip" {
  description = "IP"
  default = ""
}


variable "static_routes" {
	type =	list(string)
	default = ["192.168.0.0/16"]
}

variable "routing_type" {
  description = "Static or BGP"
}



variable "bgp_asn" {
  description = "asn"
  default = ""

}

variable "cust_interface" {
  description = "customer interface"
  default = ""

}


variable "oracle_interface" {
  description = "oracle interface"
  default = ""

}

variable "Tunnel-1_custom_shared_secret" {
  default = null

}

variable "Tunnel-2_custom_shared_secret" {
  default = null

}
