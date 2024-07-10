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

resource "oci_core_default_security_list" "default-security-list" {
  manage_default_resource_id = oci_core_vcn.vcn1.default_security_list_id

    #Required
    compartment_id = var.compartment_id
    vcn_id = oci_core_vcn.test_vcn.id

    #Optional
    defined_tags = {"Operations.CostCenter"= "42"}
    display_name = var.security_list_display_name
    egress_security_rules {
        #Required
        destination = var.security_list_egress_security_rules_destination
        protocol = var.security_list_egress_security_rules_protocol

        #Optional
        description = var.security_list_egress_security_rules_description
        destination_type = var.security_list_egress_security_rules_destination_type
        icmp_options {
            #Required
            type = var.security_list_egress_security_rules_icmp_options_type

            #Optional
            code = var.security_list_egress_security_rules_icmp_options_code
        }
        stateless = var.security_list_egress_security_rules_stateless
        tcp_options {

            #Optional
            max = var.security_list_egress_security_rules_tcp_options_destination_port_range_max
            min = var.security_list_egress_security_rules_tcp_options_destination_port_range_min
            source_port_range {
                #Required
                max = var.security_list_egress_security_rules_tcp_options_source_port_range_max
                min = var.security_list_egress_security_rules_tcp_options_source_port_range_min
            }
        }
        udp_options {

            #Optional
            max = var.security_list_egress_security_rules_udp_options_destination_port_range_max
            min = var.security_list_egress_security_rules_udp_options_destination_port_range_min
            source_port_range {
                #Required
                max = var.security_list_egress_security_rules_udp_options_source_port_range_max
                min = var.security_list_egress_security_rules_udp_options_source_port_range_min
            }
        }
    }
    freeform_tags = {"Department"= "Finance"}
    ingress_security_rules {
        #Required
        protocol = var.security_list_ingress_security_rules_protocol
        source = var.security_list_ingress_security_rules_source

        #Optional
        description = var.security_list_ingress_security_rules_description
        icmp_options {
            #Required
            type = var.security_list_ingress_security_rules_icmp_options_type

            #Optional
            code = var.security_list_ingress_security_rules_icmp_options_code
        }
        source_type = var.security_list_ingress_security_rules_source_type
        stateless = var.security_list_ingress_security_rules_stateless
        tcp_options {

            #Optional
            max = var.security_list_ingress_security_rules_tcp_options_destination_port_range_max
            min = var.security_list_ingress_security_rules_tcp_options_destination_port_range_min
            source_port_range {
                #Required
                max = var.security_list_ingress_security_rules_tcp_options_source_port_range_max
                min = var.security_list_ingress_security_rules_tcp_options_source_port_range_min
            }
        }
        udp_options {

            #Optional
            max = var.security_list_ingress_security_rules_udp_options_destination_port_range_max
            min = var.security_list_ingress_security_rules_udp_options_destination_port_range_min
            source_port_range {
                #Required
                max = var.security_list_ingress_security_rules_udp_options_source_port_range_max
                min = var.security_list_ingress_security_rules_udp_options_source_port_range_min
            }
        }
    }
}

resource "oci_core_network_security_group" "example" {
  compartment_id = var.compartment_id
  vcn_id         = oci_core_vcn.vcn1.id
  display_name   = "Example Security Group"
}
