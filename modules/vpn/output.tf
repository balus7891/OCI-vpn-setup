output "Pre-shared-key-tunnel-1"{
value = oci_core_ipsec_connection_tunnel_management.test_ipsec_connection_tunnel_management.shared_secret
}

output "Pre-shared-key-tunnel-2"{
value = oci_core_ipsec_connection_tunnel_management.test_ipsec_connection_tunnel_management1.shared_secret
}

output "tunnel-1-IP"{
  value = oci_core_ipsec_connection_tunnel_management.test_ipsec_connection_tunnel_management.vpn_ip
}

output "tunnel-2-IP"{
  value = oci_core_ipsec_connection_tunnel_management.test_ipsec_connection_tunnel_management1.vpn_ip
}
