resource "oci_core_network_security_group" "example"  //Policy to ensure the 'default' pattern is not used in the resource type
{
 compartment_id = var.compartment_id
 vcn_id         = oci_core_vcn.vcn1.id
 display_name   = "Example Security Group"
}
