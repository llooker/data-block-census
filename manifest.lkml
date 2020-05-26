project_name: "data-block-acs-census-bigquery"

################# Constants #################

constant: CONNECTION_NAME {
  value: "bigquery-public"
  export: override_optional
}

constant: CONFIG_PROJECT_NAME {
  value: "data-block-acs-census-bigquery-config"
  export: override_optional
}

################ Dependencies ################

local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"
}
