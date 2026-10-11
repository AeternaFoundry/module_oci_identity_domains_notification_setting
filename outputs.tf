output "identity_domains_notification_settings_id" {
  description = "Map of id values across all identity_domains_notification_settings, keyed the same as var.identity_domains_notification_settings except keys with no id are omitted"
  value       = { for k, v in oci_identity_domains_notification_setting.identity_domains_notification_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identity_domains_notification_settings_attribute_sets" {
  description = "Map of attribute_sets values across all identity_domains_notification_settings, keyed the same as var.identity_domains_notification_settings except keys with no attribute_sets are omitted"
  value       = { for k, v in oci_identity_domains_notification_setting.identity_domains_notification_settings : k => v.attribute_sets if v.attribute_sets != null && length(v.attribute_sets) > 0 }
}
output "identity_domains_notification_settings_attributes" {
  description = "Map of attributes values across all identity_domains_notification_settings, keyed the same as var.identity_domains_notification_settings except keys with no attributes are omitted"
  value       = { for k, v in oci_identity_domains_notification_setting.identity_domains_notification_settings : k => v.attributes if v.attributes != null && length(v.attributes) > 0 }
}
output "identity_domains_notification_settings_authorization" {
  description = "Map of authorization values across all identity_domains_notification_settings, keyed the same as var.identity_domains_notification_settings except keys with no authorization are omitted"
  value       = { for k, v in oci_identity_domains_notification_setting.identity_domains_notification_settings : k => v.authorization if v.authorization != null && length(v.authorization) > 0 }
}
output "identity_domains_notification_settings_compartment_ocid" {
  description = "Map of compartment_ocid values across all identity_domains_notification_settings, keyed the same as var.identity_domains_notification_settings except keys with no compartment_ocid are omitted"
  value       = { for k, v in oci_identity_domains_notification_setting.identity_domains_notification_settings : k => v.compartment_ocid if v.compartment_ocid != null && length(v.compartment_ocid) > 0 }
}
output "identity_domains_notification_settings_delete_in_progress" {
  description = "Map of delete_in_progress values across all identity_domains_notification_settings, keyed the same as var.identity_domains_notification_settings except keys with no delete_in_progress are omitted"
  value       = { for k, v in oci_identity_domains_notification_setting.identity_domains_notification_settings : k => v.delete_in_progress if v.delete_in_progress != null }
}
output "identity_domains_notification_settings_domain_ocid" {
  description = "Map of domain_ocid values across all identity_domains_notification_settings, keyed the same as var.identity_domains_notification_settings except keys with no domain_ocid are omitted"
  value       = { for k, v in oci_identity_domains_notification_setting.identity_domains_notification_settings : k => v.domain_ocid if v.domain_ocid != null && length(v.domain_ocid) > 0 }
}
output "identity_domains_notification_settings_event_settings" {
  description = "Map of event_settings values across all identity_domains_notification_settings, keyed the same as var.identity_domains_notification_settings except keys with no event_settings are omitted"
  value       = { for k, v in oci_identity_domains_notification_setting.identity_domains_notification_settings : k => v.event_settings if v.event_settings != null && length(v.event_settings) > 0 }
}
output "identity_domains_notification_settings_external_id" {
  description = "Map of external_id values across all identity_domains_notification_settings, keyed the same as var.identity_domains_notification_settings except keys with no external_id are omitted"
  value       = { for k, v in oci_identity_domains_notification_setting.identity_domains_notification_settings : k => v.external_id if v.external_id != null && length(v.external_id) > 0 }
}
output "identity_domains_notification_settings_from_email_address" {
  description = "Map of from_email_address values across all identity_domains_notification_settings, keyed the same as var.identity_domains_notification_settings except keys with no from_email_address are omitted"
  value       = { for k, v in oci_identity_domains_notification_setting.identity_domains_notification_settings : k => one(v.from_email_address) if v.from_email_address != null && length(v.from_email_address) > 0 }
}
output "identity_domains_notification_settings_idcs_created_by" {
  description = "Map of idcs_created_by values across all identity_domains_notification_settings, keyed the same as var.identity_domains_notification_settings except keys with no idcs_created_by are omitted"
  value       = { for k, v in oci_identity_domains_notification_setting.identity_domains_notification_settings : k => v.idcs_created_by if v.idcs_created_by != null && length(v.idcs_created_by) > 0 }
}
output "identity_domains_notification_settings_idcs_endpoint" {
  description = "Map of idcs_endpoint values across all identity_domains_notification_settings, keyed the same as var.identity_domains_notification_settings except keys with no idcs_endpoint are omitted"
  value       = { for k, v in oci_identity_domains_notification_setting.identity_domains_notification_settings : k => v.idcs_endpoint if v.idcs_endpoint != null && length(v.idcs_endpoint) > 0 }
}
output "identity_domains_notification_settings_idcs_last_modified_by" {
  description = "Map of idcs_last_modified_by values across all identity_domains_notification_settings, keyed the same as var.identity_domains_notification_settings except keys with no idcs_last_modified_by are omitted"
  value       = { for k, v in oci_identity_domains_notification_setting.identity_domains_notification_settings : k => v.idcs_last_modified_by if v.idcs_last_modified_by != null && length(v.idcs_last_modified_by) > 0 }
}
output "identity_domains_notification_settings_idcs_last_upgraded_in_release" {
  description = "Map of idcs_last_upgraded_in_release values across all identity_domains_notification_settings, keyed the same as var.identity_domains_notification_settings except keys with no idcs_last_upgraded_in_release are omitted"
  value       = { for k, v in oci_identity_domains_notification_setting.identity_domains_notification_settings : k => v.idcs_last_upgraded_in_release if v.idcs_last_upgraded_in_release != null && length(v.idcs_last_upgraded_in_release) > 0 }
}
output "identity_domains_notification_settings_idcs_prevented_operations" {
  description = "Map of idcs_prevented_operations values across all identity_domains_notification_settings, keyed the same as var.identity_domains_notification_settings except keys with no idcs_prevented_operations are omitted"
  value       = { for k, v in oci_identity_domains_notification_setting.identity_domains_notification_settings : k => v.idcs_prevented_operations if v.idcs_prevented_operations != null && length(v.idcs_prevented_operations) > 0 }
}
output "identity_domains_notification_settings_meta" {
  description = "Map of meta values across all identity_domains_notification_settings, keyed the same as var.identity_domains_notification_settings except keys with no meta are omitted"
  value       = { for k, v in oci_identity_domains_notification_setting.identity_domains_notification_settings : k => v.meta if v.meta != null && length(v.meta) > 0 }
}
output "identity_domains_notification_settings_notification_enabled" {
  description = "Map of notification_enabled values across all identity_domains_notification_settings, keyed the same as var.identity_domains_notification_settings except keys with no notification_enabled are omitted"
  value       = { for k, v in oci_identity_domains_notification_setting.identity_domains_notification_settings : k => v.notification_enabled if v.notification_enabled != null }
}
output "identity_domains_notification_settings_notification_setting_id" {
  description = "Map of notification_setting_id values across all identity_domains_notification_settings, keyed the same as var.identity_domains_notification_settings except keys with no notification_setting_id are omitted"
  value       = { for k, v in oci_identity_domains_notification_setting.identity_domains_notification_settings : k => v.notification_setting_id if v.notification_setting_id != null && length(v.notification_setting_id) > 0 }
}
output "identity_domains_notification_settings_ocid" {
  description = "Map of ocid values across all identity_domains_notification_settings, keyed the same as var.identity_domains_notification_settings except keys with no ocid are omitted"
  value       = { for k, v in oci_identity_domains_notification_setting.identity_domains_notification_settings : k => v.ocid if v.ocid != null && length(v.ocid) > 0 }
}
output "identity_domains_notification_settings_resource_type_schema_version" {
  description = "Map of resource_type_schema_version values across all identity_domains_notification_settings, keyed the same as var.identity_domains_notification_settings except keys with no resource_type_schema_version are omitted"
  value       = { for k, v in oci_identity_domains_notification_setting.identity_domains_notification_settings : k => v.resource_type_schema_version if v.resource_type_schema_version != null && length(v.resource_type_schema_version) > 0 }
}
output "identity_domains_notification_settings_schemas" {
  description = "Map of schemas values across all identity_domains_notification_settings, keyed the same as var.identity_domains_notification_settings except keys with no schemas are omitted"
  value       = { for k, v in oci_identity_domains_notification_setting.identity_domains_notification_settings : k => v.schemas if v.schemas != null && length(v.schemas) > 0 }
}
output "identity_domains_notification_settings_send_notification_to_old_and_new_primary_emails_when_admin_changes_primary_email" {
  description = "Map of send_notification_to_old_and_new_primary_emails_when_admin_changes_primary_email values across all identity_domains_notification_settings, keyed the same as var.identity_domains_notification_settings except keys with no send_notification_to_old_and_new_primary_emails_when_admin_changes_primary_email are omitted"
  value       = { for k, v in oci_identity_domains_notification_setting.identity_domains_notification_settings : k => v.send_notification_to_old_and_new_primary_emails_when_admin_changes_primary_email if v.send_notification_to_old_and_new_primary_emails_when_admin_changes_primary_email != null }
}
output "identity_domains_notification_settings_send_notifications_to_secondary_email" {
  description = "Map of send_notifications_to_secondary_email values across all identity_domains_notification_settings, keyed the same as var.identity_domains_notification_settings except keys with no send_notifications_to_secondary_email are omitted"
  value       = { for k, v in oci_identity_domains_notification_setting.identity_domains_notification_settings : k => v.send_notifications_to_secondary_email if v.send_notifications_to_secondary_email != null }
}
output "identity_domains_notification_settings_tags" {
  description = "Map of tags values across all identity_domains_notification_settings, keyed the same as var.identity_domains_notification_settings except keys with no tags are omitted"
  value       = { for k, v in oci_identity_domains_notification_setting.identity_domains_notification_settings : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "identity_domains_notification_settings_tenancy_ocid" {
  description = "Map of tenancy_ocid values across all identity_domains_notification_settings, keyed the same as var.identity_domains_notification_settings except keys with no tenancy_ocid are omitted"
  value       = { for k, v in oci_identity_domains_notification_setting.identity_domains_notification_settings : k => v.tenancy_ocid if v.tenancy_ocid != null && length(v.tenancy_ocid) > 0 }
}
output "identity_domains_notification_settings_test_mode_enabled" {
  description = "Map of test_mode_enabled values across all identity_domains_notification_settings, keyed the same as var.identity_domains_notification_settings except keys with no test_mode_enabled are omitted"
  value       = { for k, v in oci_identity_domains_notification_setting.identity_domains_notification_settings : k => v.test_mode_enabled if v.test_mode_enabled != null }
}
output "identity_domains_notification_settings_test_recipients" {
  description = "Map of test_recipients values across all identity_domains_notification_settings, keyed the same as var.identity_domains_notification_settings except keys with no test_recipients are omitted"
  value       = { for k, v in oci_identity_domains_notification_setting.identity_domains_notification_settings : k => v.test_recipients if v.test_recipients != null && length(v.test_recipients) > 0 }
}

