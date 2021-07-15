output "vcn_id" {
  value = join(",", oci_core_vcn.vcn.*.id)
}

