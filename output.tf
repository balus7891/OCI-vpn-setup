output "VPN_Deployment_Status"{
  value = "Yahh !!! The IPSec VPN Stack Deployed Sucessfully. Please find the details below !!!"
}

output "tunnel-1-IP"{
  value = module.vpn.tunnel-1-IP
}

output "tunnel-1-pre-shared-key"{
  value = module.vpn.Pre-shared-key-tunnel-1
}

output "tunnel-2-IP"{
  value = module.vpn.tunnel-2-IP
}

output "tunnel-2-pre-shared-key"{
  value = module.vpn.Pre-shared-key-tunnel-2
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
