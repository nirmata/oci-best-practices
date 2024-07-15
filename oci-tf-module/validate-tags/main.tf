resource "oci_identity_compartment" "test_compartment" {
    #Required
    compartment_id = 13137101
    description = "this is a new compartment"
    name = oci-scan

    #Optional
    defined_tags = {"Operations.CostCenter"= "42"}  //Policy to check the right tags
    freeform_tags = {"Department-cs"= "Finance"}  //Policy to check the right tags}
}

resource "oci_identity_compartment" "test_compartment2" {
    #Required
    compartment_id = 13137101
    description = "this is a new compartment"
    name = oci-scan

    #Optional
    defined_tags = {"Operations.CostCenter"= "42"}  //Policy to check the right tags
    freeform_tags = {"Department-cs"= "Something Else"}  //Policy to check the right tags}
}
