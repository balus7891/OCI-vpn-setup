output "drg_id" {
  value = join(",", oci_core_drg.my_drg.*.id)
}
