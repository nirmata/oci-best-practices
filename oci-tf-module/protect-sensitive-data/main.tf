resource "oci_database_database" "test_database"
{
   #Required
   database
   {
       #Required
       admin_password = var.database_database_admin_password // Policy to always use variables
       db_name = var.database_database_db_name  // Policy to always use variables

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

}
