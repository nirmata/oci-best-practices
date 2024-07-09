resource "oci_identity_compartment" "test_compartment" {
    #Required
    compartment_id = var.compartment_id
    description = var.compartment_description
    name = var.compartment_name

    #Optional
    defined_tags = {"Operations.CostCenter"= "42"}  //Policy to check the right tags
    freeform_tags = {"Department"= "Finance"}  //Policy to check the right tags}
