// Author Bala Sunil



# ------------------------------------
resource "oci_core_vcn" "vcn" {
  count          = var.network_enabled != 0 ? 1 : 0
  cidr_block     = var.vcn_cidr
  compartment_id = var.compartment_id
  display_name   = "${var.display_name_prefix}-vcn"
  }

