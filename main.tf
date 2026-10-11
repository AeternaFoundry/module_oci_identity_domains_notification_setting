resource "oci_identity_domains_notification_setting" "identity_domains_notification_settings" {
  for_each = var.identity_domains_notification_settings

  idcs_endpoint                                                                    = each.value.idcs_endpoint
  notification_enabled                                                             = each.value.notification_enabled
  notification_setting_id                                                          = each.value.notification_setting_id
  schemas                                                                          = each.value.schemas
  attribute_sets                                                                   = each.value.attribute_sets
  attributes                                                                       = each.value.attributes
  authorization                                                                    = each.value.authorization
  external_id                                                                      = each.value.external_id
  ocid                                                                             = each.value.ocid
  resource_type_schema_version                                                     = each.value.resource_type_schema_version
  send_notification_to_old_and_new_primary_emails_when_admin_changes_primary_email = each.value.send_notification_to_old_and_new_primary_emails_when_admin_changes_primary_email
  send_notifications_to_secondary_email                                            = each.value.send_notifications_to_secondary_email
  test_mode_enabled                                                                = each.value.test_mode_enabled
  test_recipients                                                                  = each.value.test_recipients

  dynamic "event_settings" {
    for_each = each.value.event_settings
    content {
      enabled  = event_settings.value.enabled
      event_id = event_settings.value.event_id
    }
  }

  from_email_address {
    display_name = each.value.from_email_address.display_name
    validate     = each.value.from_email_address.validate
    value        = each.value.from_email_address.value
  }

  dynamic "tags" {
    for_each = each.value.tags != null ? each.value.tags : []
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

