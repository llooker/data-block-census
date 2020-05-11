connection: "bigquery-public"
include: "*.view"
include: "/geography/*"

#OLD DYNAMIC EXPLORE
# explore: acs_census {
#   view_name: acs_census
#   always_filter: {
#     filters: [
#       geography: "blockgroup",
#       year:   "2017",
#       period: "5yr"
#     ]
#   }
# }


explore: acs_census_data {
  persist_for: "10000 hours"
  view_name: state
  label: "ACS Census Data"
  join: county {
    sql_on:  ${state.county_key} = ${county.state_key};;
    relationship: one_to_many
  }
  join: census_tract {
    sql_on: ${county.county_fips} = ${census_tract.county_key} ;;
    relationship: one_to_many
  }
  join: blockgroup  {
    sql_on: ${census_tract.census_tract} = ${blockgroup.census_tract_key} ;;
    relationship: one_to_many
  }
}


explore: congressional_district {
  label: "Congressional Districts"
  join: state {
    sql_on: ${congressional_district.state_key} = ${state.county_key} ;;
    relationship: many_to_one
  }
}


explore: zip_codes {
  view_name: state
  label: "Zip Codes"
  join: zcta {
    sql_on: ${state.county_key} = ${zcta.state_key} ;;
    relationship: one_to_many
  }
}
