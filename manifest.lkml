project_name: "acs_census_bigquery"

################# Constants #################

# constant: CONNECTION_NAME {
#   value: "bigquery-public"
#   export: override_required
# }

# constant: SCHEMA_NAME {
#   value: "looker_app_audit_log"
#   export: override_required
# }

# constant: AUDIT_LOG_EXPORT_TABLE_NAME {
#   value: "cloudaudit_googleapis_com_data_access_*"
#   export: override_required
# }

constant: CONFIG_PROJECT_NAME {
  value: "block-census-bureau-acs-bq-config"
  export: override_required
}

################ Dependencies ################

local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"
}
