
output "VPN_Deployment_Status"{
  value = "Yahh !!! The IPSec VPN Stack Deployed Sucessfully. Please find the details below !!!"
}

output "tunnel-1-IP"{
  value = var.routing_type != "BGP" ? module.vpn.tunnel-1-IP : module.bgp.tunnel-1-IP
}

output "tunnel-1-pre-shared-key"{
  value =  var.routing_type != "BGP" ? module.vpn.Pre-shared-key-tunnel-1 : module.bgp.Pre-shared-key-tunnel-1
}

output "tunnel-2-IP"{
  value = var.routing_type != "BGP" ? module.vpn.tunnel-2-IP : module.bgp.tunnel-2-IP
}

output "tunnel-2-pre-shared-key"{
  value = var.routing_type != "BGP" ? module.vpn.Pre-shared-key-tunnel-2 : module.bgp.Pre-shared-key-tunnel-2
}

locals {
  static-msg = "Static Routing Doesn't require ASN"
}

output "Oracle-BGP-ASN"{
  value = var.routing_type != "BGP" ? [local.static-msg] : module.bgp.bgp-asn
}





/*
output "CPE-model"{
value = var.cpe_model
}

output "existing-vcn"{
value = var.vcn
}

output "existing-drg"{
value= var.drg_ocid
}

output "ike-version"{
value= var.ike_version
}

output "static-routes"{
  value = var.static_routes
}
*/
