//Author Balasubramannyam Sunil, email: balasubramannyam.sunil@oracle.com
resource "oci_core_drg" "my_drg" {
    #Required
    count          = var.drg_enabled != 0 ? 1 : 0
    compartment_id = var.compartment_id
    display_name = "${var.display_name_prefix}-drg"
}

resource "oci_core_drg_attachment" "VCN-Hub_frankfurt_drg_attach" {
			count          = var.drg_enabled != 0 ? 1 : 0
                    drg_id = oci_core_drg.my_drg[0].id
                    vcn_id = var.vcn_id
                    display_name = "${var.display_name_prefix}-my_drg_attach"

}
