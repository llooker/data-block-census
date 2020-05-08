view: state {
  derived_table: {
    sql:
    SELECT
      state.*,
      state_name.state_name as state,
      state.geo_id as state_geo_id
    FROM
    `bigquery-public-data.census_bureau_acs.state_2018_5yr` as state
    INNER JOIN `bigquery-public-data.census_utility.fips_codes_states` as state_name ON state.geo_id = state_name.state_fips_code
    ;;

    persist_for: "10000 hours"
  }

  dimension: state_name {
    sql: ${TABLE}.state ;;
    view_label: "Geography"
    map_layer_name: us_states
  }
  dimension: state_geo_id {
    hidden: yes
    sql: ${TABLE}.state_geo_id ;;
  }


}
