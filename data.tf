/*
data "oci_core_cpe_device_shapes" "test_cpe_device_shapes" {
}

data "oci_core_cpe_device_shape" "test_cpe_device_shape" {
cpe_device_shape_id = data.oci_core_cpe_device_shapes.test_cpe_device_shapes.cpe_device_shapes[3].cpe_device_shape_id
	
}


output "cpe-device-id"{
  value = data.oci_core_cpe_device_shapes.test_cpe_device_shapes.cpe_device_shapes[*].cpe_device_shape_id
}

output "cpe-device"{
  value = data.oci_core_cpe_device_shapes.test_cpe_device_shapes.cpe_device_shapes[*].cpe_device_info[0].platform_software_version

}
*/

