//Author Balasubramannyam Sunil, email: balasubramannyam.sunil@oracle.com

data "oci_core_ipsec_connection_tunnels" "test_ip_sec_connection_tunnels" {
  ipsec_id = var.ipsec_id
}

data "oci_core_ipsec_connection_tunnel" "test_ipsec_connection_tunnel" {
  ipsec_id  = var.ipsec_id
  tunnel_id = data.oci_core_ipsec_connection_tunnels.test_ip_sec_connection_tunnels.ip_sec_connection_tunnels[0].id
}

resource "oci_core_ipsec_connection_tunnel_management" "test_ipsec_connection_tunnel_management" {
  count = var.static_enabled != 0 ? 1 : 0
  ipsec_id  = var.ipsec_id
  tunnel_id = data.oci_core_ipsec_connection_tunnels.test_ip_sec_connection_tunnels.ip_sec_connection_tunnels[0].id
  ike_version   = var.ikeversion
  routing = var.routing
  display_name  = "${var.display_name_prefix}-Tunnel1"

bgp_session_info {

    customer_bgp_asn      = var.bgpasn
    customer_interface_ip = var.custinterface
    oracle_interface_ip   = var.oracleinterface
  }

}

resource "oci_core_ipsec_connection_tunnel_management" "test_ipsec_connection_tunnel_management1" {
  count = var.static_enabled != 0 ? 1 : 0
  ipsec_id  = var.ipsec_id
  tunnel_id = data.oci_core_ipsec_connection_tunnels.test_ip_sec_connection_tunnels.ip_sec_connection_tunnels[1].id
      bgp_session_info {

    customer_bgp_asn      = var.bgpasn
    customer_interface_ip = var.custinterface
    oracle_interface_ip   = var.oracleinterface
  }
  ike_version   = var.ikeversion
  routing = var.routing
  display_name  = "${var.display_name_prefix}-Tunnel2"
}
