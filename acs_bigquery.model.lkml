connection: "bigquery-public"
include: "/geography/*"

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
  persist_for: "10000 hours"
  always_filter: {filters: {field:state.state_name value:"Please Enter a State(s) to Filter By"} }
  label: "Congressional Districts"
  join: state {
    sql_on: ${congressional_district.state_key} = ${state.county_key} ;;
    relationship: many_to_one
  }
}

explore: unified_school_districts {
  persist_for: "10000 hours"
}



explore: zcta {
  persist_for: "10000 hours"
  always_filter: {filters: {field:state.state_name value:"Please Enter a State(s) to Filter By"} }
  label: "Zip Codes"
  join: state  {
    sql_on: ${state.county_key} = ${zcta.state_key} ;;
    relationship: many_to_one
  }
}


explore: places {
  persist_for: "10000 hours"
  always_filter: {filters: {field:state.state_name value:"Please Enter a State(s) to Filter By"} }
  label: "Places"
  join: state {
    sql_on: ${places.state_key} = ${state.county_key} ;;
    relationship: many_to_one
  }
}
