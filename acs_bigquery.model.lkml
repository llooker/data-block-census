connection: "bigquery-public"
include: "*.view"
include: "/geography/*"

explore: big_test {}

explore: acs_census {
  view_name: acs_census
  always_filter: {
    filters: [
      geography: "blockgroup",
      year:   "2017",
      period: "5yr"
    ]
  }
}


explore: state {
  label: "ACS Census Data"
  join: county {
    sql_on:  ${state.county_key} = ${county.state_key};;
    relationship: one_to_many
  }
  join: blockgroup  {
    sql_on: ${county.blockgroup_key} = ${blockgroup.county_key} ;;
    relationship: one_to_many
  }
}
