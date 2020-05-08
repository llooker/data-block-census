include: "/views/*"

view: big_test {
  label: "ACS Big PDT"
  extends: [gender, housing, race, education, employment, age, commute, family]
  derived_table: {
    sql:
    SELECT
      state_name.state_name as state,
      county.geo_id as county_fips,
      base.*,
      FROM
        `bigquery-public-data.census_bureau_acs.state_2018_5yr` as state
          INNER JOIN `bigquery-public-data.census_utility.fips_codes_states` as state_name ON state.geo_id = state_name.state_fips_code
      LEFT JOIN
        `bigquery-public-data.census_bureau_acs.county_2018_5yr` as county ON CAST(state.geo_id as STRING) = (SUBSTR(CAST(county.geo_id as STRING),0, 2))
       LEFT JOIN
        `bigquery-public-data.census_bureau_acs.blockgroup_2017_5yr` as base ON county.geo_id = (SUBSTR(CAST(base.geo_id as STRING), 0, 5))

    ;;
    persist_for: "10000 hours"
  }

  dimension: state {
    sql: ${TABLE}.state ;;
    map_layer_name: us_states
  }

  dimension: county_fips {
    sql: ${TABLE}.county_fips ;;
    map_layer_name: us_counties_fips
  }

  dimension: total_pop_dim {
    type: number
    sql: ${TABLE}.total_pop ;;
    description: "Total Population. The total number of all people living in a given geographic area.  This is a very useful catch-all denominator when calculating rates."
  }

  measure: total_pop {
    type: sum
    sql: ${TABLE}.total_pop ;;
    description: "Total Population. The total number of all people living in a given geographic area.  This is a very useful catch-all denominator when calculating rates."
  }

}
