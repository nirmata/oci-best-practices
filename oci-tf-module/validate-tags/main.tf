resource "oci_identity_compartment" "test_compartment" {
    #Required
    compartment_id = 123456
    description = this is a new compartment
    name = oci-scan

    #Optional
    defined_tags = {"Operations.CostCenter"= "42"}  //Policy to check the right tags
    freeform_tags = {"Department"= "Finance"}  //Policy to check the right tags}
