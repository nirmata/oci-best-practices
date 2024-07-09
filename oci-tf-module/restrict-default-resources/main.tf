resource "oci_core_network_security_group" "example"  //Policy to ensure the 'default' pattern is not used in the resource type
{
 compartment_id = 236489324032
 vcn_id         = 3294032
 display_name   = "Example Security Group"
}
