//Author Balasubramannyam Sunil, email: balasubramannyam.sunil@oracle.com
/*

data "oci_core_ipsec_connection_tunnels" "test_ip_sec_connection_tunnels" {
  ipsec_id = var.ipsec_id
}

data "oci_core_ipsec_connection_tunnel" "test_ipsec_connection_tunnel" {
  ipsec_id  = var.ipsec_id
  tunnel_id = data.oci_core_ipsec_connection_tunnels.test_ip_sec_connection_tunnels.ip_sec_connection_tunnels[0].id
}

*/
