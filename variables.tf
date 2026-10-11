variable "identity_domains_notification_settings" {
  description = <<EOT
Map of identity_domains_notification_settings, attributes below
Required:
    - idcs_endpoint
    - notification_enabled
    - notification_setting_id
    - schemas
    - event_settings (block):
        - enabled (optional)
        - event_id (required)
    - from_email_address (block):
        - display_name (optional)
        - validate (required)
        - value (required)
Optional:
    - attribute_sets
    - attributes
    - authorization
    - external_id
    - ocid
    - resource_type_schema_version
    - send_notification_to_old_and_new_primary_emails_when_admin_changes_primary_email
    - send_notifications_to_secondary_email
    - test_mode_enabled
    - test_recipients
    - tags (block):
        - key (required)
        - value (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    idcs_endpoint                                                                    = string
    notification_enabled                                                             = bool
    notification_setting_id                                                          = string
    schemas                                                                          = list(string)
    attribute_sets                                                                   = optional(list(string))
    attributes                                                                       = optional(string)
    authorization                                                                    = optional(string)
    external_id                                                                      = optional(string)
    ocid                                                                             = optional(string)
    resource_type_schema_version                                                     = optional(string)
    send_notification_to_old_and_new_primary_emails_when_admin_changes_primary_email = optional(bool)
    send_notifications_to_secondary_email                                            = optional(bool)
    test_mode_enabled                                                                = optional(bool)
    test_recipients                                                                  = optional(list(string))
    event_settings = list(object({
      enabled  = optional(bool)
      event_id = string
    }))
    from_email_address = object({
      display_name = optional(string)
      validate     = string
      value        = string
    })
    tags = optional(list(object({
      key   = string
      value = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.identity_domains_notification_settings : (
        length(v.event_settings) >= 1
      )
    ])
    error_message = "Each event_settings list must contain at least 1 items"
  }
}

