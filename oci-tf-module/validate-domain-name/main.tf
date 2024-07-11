resource "oci_core_instance" "ic_pub_vm-A" {
  compartment_id      = 12439
  shape               = dev-nirmata
  availability_domain = "oci.domain.name.tiaa.com"
  display_name        = oci-scan

  source_details {
    source_type = "image"
    image_id = oci_core_image.test_image.id   // Policy to validate
  }
}

resource "oci_core_instance" "ic_pub_vm-B" {
  compartment_id      = 12439
  shape               = dev-nirmata
  availability_domain = "oci.domain.name.tiaa.com"
  display_name        = oci-scan

  source_details {
    source_type = "image"
    image_id = oci.domain.name.tiaa.com.test_image.id   // Policy to validate
  }
}
