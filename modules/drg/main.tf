//Author Balasubramannyam Sunil, email: balasubramannyam.sunil@oracle.com
resource "oci_core_drg" "my_drg" {
    #Required
    count          = var.drg_enabled != 0 ? 1 : 0
    compartment_id = var.compartment_id
    display_name = "${var.display_name_prefix}-drg"
}

resource "oci_core_drg_attachment" "New_VCN_drg_attach" {
			count          = var.drg_enabled != 0 ? 1 : 0
                    drg_id = oci_core_drg.my_drg[0].id
                    vcn_id = var.vcn_id
                    display_name = "${var.display_name_prefix}-my_drg_attach"

}

resource "oci_core_drg_attachment" "Existing_Network_drg_attach" {
			count          = var.drg_attach != 0 ? 1 : 0
                    drg_id = var.drg_enabled != 0 ? oci_core_drg.my_drg[0].id : var.ext_drg_id
                    vcn_id = var.vcn_id
                    display_name = "${var.display_name_prefix}-my_drg_attach"

}
