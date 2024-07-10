resource "oci_core_vcn" "vcn1" {
  cidr_block = "10.0.0.0/16"
  dns_label = "vcn1"
  compartment_id = var.compartment_id
  display_name = "vcn1"
}

# Gateway
## Internet Gateway
resource "oci_core_internet_gateway" "inetGw" {
    compartment_id = var.compartment_id
    display_name   = "inetGw"
    vcn_id         = oci_core_vcn.vcn1.id
}

resource "oci_core_default_dhcp_options" "default-dhcp-options" {
  manage_default_resource_id = oci_core_vcn.vcn1.default_dhcp_options_id

  #Required
  options {
    type = "DomainNameServer"
    server_type = "VcnLocalPlusInternet"
  }
}

  #Optional
  options {
    type = "SearchDomain"
    search_domain_names = [ "abc.com" ]
  }
}

resource "oci_core_default_route_table" "default-route-table" {
  manage_default_resource_id = oci_core_vcn.vcn1.default_route_table_id

    #Required
    compartment_id = var.compartment_id

    #Optional
    display_name = "default_route_table"
    route_rules {

        #Required
        network_entity_id = oci_core_internet_gateway.inetGw.id

        #Optional
        destination = "0.0.0.0/0"
        destination_type = "CIDR_BLOCK"
    }
}

resource "oci_core_network_security_group" "example" {
  compartment_id = 236489324032
  vcn_id         = oci_core_vcn.vcn1.id
  display_name   = "Example Security Group"
}
