project_name: "block_acs_census_bigquery"

################# Constants #################

constant: CONNECTION_NAME {
  value: "bigquery-public"
}

constant: CONFIG_PROJECT_NAME {
  value: "block_acs_census_bigquery_config"
  export: override_optional
}

################ Dependencies ################

local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"
}
