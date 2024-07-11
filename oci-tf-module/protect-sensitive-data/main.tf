resource "oci_database_database" "test_database"
{
   #Required
   database
   {
       admin_password = "1234" // Policy to always use variables
       db_name = admin  // Policy to always use variables

       db_unique_name = oci-scan
       db_workload = var.database_database_db_workload
       defined_tags = test-nirmata
       freeform_tags = test-nirmata

   }
   db_home_id = 437594380
   source = var.database_source

}

resource "oci_database_database" "test_database2"
{
   #Required
   database
   {
       admin_password = "1234" // Policy to always use variables
       db_name = admin  // Policy to always use variables

       db_unique_name = oci-scan
       db_workload = var.database_database_db_workload
       defined_tags = test-nirmata
       freeform_tags = test-nirmata

   }
   db_home_id = 437594380
   source = var.database_source

}
