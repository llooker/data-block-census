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
  join: county {
    sql_on: CAST(${state.state_geo_id} as STRING) = (SUBSTR(CAST(${county.county_fips} as STRING),0, 2)) ;;
    relationship: one_to_many
  }
  join: blockgroup  {
    sql_on: ${county.county_fips} = (SUBSTR(CAST(${blockgroup.block_group} as STRING), 0, 5)) ;;
    relationship: one_to_many
  }
}
