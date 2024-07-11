resource "oci_core_instance" "ic_pub_vm-A" {
  compartment_id      = oci_identity_compartment.example_compartment.id
  shape               = var.ic_pub_vm_A.shape.name
  availability_domain = "xyz"
  display_name        = var.ic_pub_vm_A.display_name

  source_details {

    source_type = "image"
    image_id = oci_core_image.test_image.id
  }
}

resource "oci_core_instance" "ic_pub_vm-B" {
  compartment_id      = oci_identity_compartment.example_compartment.id
  shape               = var.ic_pub_vm_A.shape.name
  availability_domain = "xyz"
  display_name        = var.ic_pub_vm_A.display_name

  source_details {

    source_type = "image"
    image_id = oci_core_image.test_image.id
  }
}
