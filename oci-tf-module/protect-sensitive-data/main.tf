resource "oci_database_database" "test_database" {
    #Required
    database {
        #Required
        admin_password = var.database_database_admin_password
        db_name = var.database_database_db_name

        #Optional
        backup_id = oci_database_backup.test_backup.id
        backup_tde_password = var.database_database_backup_tde_password
        character_set = var.database_database_character_set
        database_software_image_id = oci_database_database_software_image.test_database_software_image.id
        db_backup_config {

            #Optional
            auto_backup_enabled = var.database_database_db_backup_config_auto_backup_enabled
            auto_backup_window = var.database_database_db_backup_config_auto_backup_window
            auto_full_backup_day = var.database_database_db_backup_config_auto_full_backup_day
            auto_full_backup_window = var.database_database_db_backup_config_auto_full_backup_window
            backup_deletion_policy = var.database_database_db_backup_config_backup_deletion_policy
            backup_destination_details {

                #Optional
                dbrs_policy_id = oci_identity_policy.test_policy.id
                id = var.database_database_db_backup_config_backup_destination_details_id
                type = var.database_database_db_backup_config_backup_destination_details_type
            }
            recovery_window_in_days = var.database_database_db_backup_config_recovery_window_in_days
            run_immediate_full_backup = var.database_database_db_backup_config_run_immediate_full_backup
        }
        db_unique_name = var.database_database_db_unique_name
        db_workload = var.database_database_db_workload
        defined_tags = var.database_database_defined_tags
        freeform_tags = var.database_database_freeform_tags
        kms_key_id = oci_kms_key.test_key.id
        kms_key_version_id = oci_kms_key_version.test_key_version.id
        ncharacter_set = var.database_database_ncharacter_set
        pdb_name = var.database_database_pdb_name
        pluggable_databases = var.database_database_pluggable_databases
        sid_prefix = var.database_database_sid_prefix
        tde_wallet_password = var.database_database_tde_wallet_password
        vault_id = oci_kms_vault.test_vault.id
    }
    db_home_id = oci_database_db_home.test_db_home.id
    source = var.database_source

    #Optional
    db_version = var.database_db_version
    kms_key_id = oci_kms_key.test_key.id
    kms_key_version_id = oci_kms_key_version.test_key_version.id
}

resource "oci_database_database" "test_database2" {
    #Required
    database {
        #Required
        admin_password = var.database_database_admin_password
        db_name = var.database_database_db_name

        #Optional
        backup_id = oci_database_backup.test_backup.id
        backup_tde_password = var.database_database_backup_tde_password
        character_set = var.database_database_character_set
        database_software_image_id = oci_database_database_software_image.test_database_software_image.id
        db_backup_config {

            #Optional
            auto_backup_enabled = var.database_database_db_backup_config_auto_backup_enabled
            auto_backup_window = var.database_database_db_backup_config_auto_backup_window
            auto_full_backup_day = var.database_database_db_backup_config_auto_full_backup_day
            auto_full_backup_window = var.database_database_db_backup_config_auto_full_backup_window
            backup_deletion_policy = var.database_database_db_backup_config_backup_deletion_policy
            backup_destination_details {

                #Optional
                dbrs_policy_id = oci_identity_policy.test_policy.id
                id = var.database_database_db_backup_config_backup_destination_details_id
                type = var.database_database_db_backup_config_backup_destination_details_type
            }
            recovery_window_in_days = var.database_database_db_backup_config_recovery_window_in_days
            run_immediate_full_backup = var.database_database_db_backup_config_run_immediate_full_backup
        }
        db_unique_name = var.database_database_db_unique_name
        db_workload = var.database_database_db_workload
        defined_tags = var.database_database_defined_tags
        freeform_tags = var.database_database_freeform_tags
        kms_key_id = oci_kms_key.test_key.id
        kms_key_version_id = oci_kms_key_version.test_key_version.id
        ncharacter_set = var.database_database_ncharacter_set
        pdb_name = var.database_database_pdb_name
        pluggable_databases = var.database_database_pluggable_databases
        sid_prefix = var.database_database_sid_prefix
        tde_wallet_password = var.database_database_tde_wallet_password
        vault_id = oci_kms_vault.test_vault.id
    }
    db_home_id = oci_database_db_home.test_db_home.id
    source = var.database_source

    #Optional
    db_version = var.database_db_version
    kms_key_id = oci_kms_key.test_key.id
    kms_key_version_id = oci_kms_key_version.test_key_version.id
}
