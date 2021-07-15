// Author Balasubramannyam Sunil
// balasubramannyam.sunil@oracle.com

# ------ Create Customer Premise Equipment
resource "oci_core_cpe" "my_cpe" {
    # Required
    compartment_id = var.compartment_id
    ip_address    = var.cpeip
    # Optional
    display_name   = "${var.display_name_prefix}-CPE"
    cpe_device_shape_id    = lookup(local.cpe-id, var.cpeid)
}

data "oci_core_cpe_device_shapes" "test_cpe_device_shapes" {
}

locals {
  cpe-id = zipmap(data.oci_core_cpe_device_shapes.test_cpe_device_shapes.cpe_device_shapes[*].cpe_device_info[0].platform_software_version,data.oci_core_cpe_device_shapes.test_cpe_device_shapes.cpe_device_shapes[*].cpe_device_shape_id)
}



# ------ Create IpSec Connection
resource "oci_core_ipsec" "Ipsecvpn" {
    # Required
    compartment_id = var.compartment_id
    cpe_id         = oci_core_cpe.my_cpe.id
    drg_id         = var.drgid
    static_routes  = var.staticroutes
    # Optional
    display_name   = "${var.display_name_prefix}-IPSecVPN"
    cpe_local_identifier_type = "IP_ADDRESS"
    cpe_local_identifier = var.cpeip
}


data "oci_core_ipsec_connections" "test_ip_sec_connections" {
  #Required
  compartment_id = var.compartment_id

  #Optional
  cpe_id = oci_core_cpe.my_cpe.id
  drg_id = var.drgid
}

data "oci_core_ipsec_connection_tunnels" "test_ip_sec_connection_tunnels" {
  ipsec_id = oci_core_ipsec.Ipsecvpn.id
}

data "oci_core_ipsec_connection_tunnel" "test_ipsec_connection_tunnel" {
  ipsec_id  = oci_core_ipsec.Ipsecvpn.id
  tunnel_id = data.oci_core_ipsec_connection_tunnels.test_ip_sec_connection_tunnels.ip_sec_connection_tunnels[0].id
}

resource "oci_core_ipsec_connection_tunnel_management" "test_ipsec_connection_tunnel_management" {
  ipsec_id  = oci_core_ipsec.Ipsecvpn.id
  tunnel_id = data.oci_core_ipsec_connection_tunnels.test_ip_sec_connection_tunnels.ip_sec_connection_tunnels[0].id
  ike_version   = var.ikeversion
  routing = "STATIC"
  display_name  = "${var.display_name_prefix}-Tunnel1"
}

resource "oci_core_ipsec_connection_tunnel_management" "test_ipsec_connection_tunnel_management1" {
  ipsec_id  = oci_core_ipsec.Ipsecvpn.id
  tunnel_id = data.oci_core_ipsec_connection_tunnels.test_ip_sec_connection_tunnels.ip_sec_connection_tunnels[1].id
  ike_version   = var.ikeversion
  routing = "STATIC"
  display_name  = "${var.display_name_prefix}-Tunnel2"
}
