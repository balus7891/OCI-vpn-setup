
/*
* Copyright (c) 2021 July
//Author Balasubramannyam Sunil, email: balasubramannyam.sunil@oracle.com
 */


// Random suffix to make things unique
resource "random_string" "instance_uuid" {
  length  = 8
  lower   = true
  upper   = false
  special = false
  number  = true
}


locals {
  generated_name_prefix       = format("vpn_%s", random_string.instance_uuid.result)
  resource_name_prefix = var.res_name != "" ? var.res_name : local.generated_name_prefix
}


module "network" {
  source = "./modules/network"
  display_name_prefix = local.resource_name_prefix
  compartment_id      = var.compartment_ocid
  vcn_cidr  = var.vcn_cidr
  network_enabled = var.quick_create != "Existing networking components will be used" ? 1 : 0
}

module "drg"{
  source = "./modules/drg"
    display_name_prefix = local.resource_name_prefix
    compartment_id      = var.compartment_ocid
    ext_drg_id  = var.drg_ocid
    vcn_id              = var.quick_create != "Existing networking components will be used" ? module.network.vcn_id : var.vcn
      drg_enabled = var.drg_create != "Existing DRG will be used" ? 1 : 0
      drg_attach = var.quick_create != "Existing networking components will be used" ? 1 : 0

}


module "vpn"{
    source = "./modules/vpn"
    display_name_prefix = local.resource_name_prefix
    compartment_id = var.compartment_ocid
    cpeid = var.cpe_model
    cpeip = var.cpe_ip
    ikeversion = var.ike_version
    staticroutes  = var.static_routes
    #drgid = module.drg.drg_id
    drgid = var.drg_create != "Existing DRG will be used" ? module.drg.drg_id : var.drg_ocid
    bgp_enabled = var.routing_type != "BGP" ? 1 : 0
}


module "bgp"{
    source = "./modules/bgp"
    display_name_prefix = local.resource_name_prefix
    compartment_id = var.compartment_ocid
    cpeid = var.cpe_model
    cpeip = var.cpe_ip
    ikeversion = var.ike_version
    bgpasn  = var.bgp_asn
    staticroutes  = var.static_routes
    custinterface = var.cust_interface
    oracleinterface = var.oracle_interface
    #drgid = module.drg.drg_id
    drgid = var.drg_create != "Existing DRG will be used" ? module.drg.drg_id : var.drg_ocid
    static_enabled = var.routing_type != "static" ? 1 : 0
    routing = var.routing_type
    ipsec_id = module.vpn.vpnid
}
