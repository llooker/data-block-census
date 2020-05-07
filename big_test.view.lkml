include: "/views/*"

view: big_test {
  extends: [gender, housing, race, education, employment, age, commute, family]
  derived_table: {
    sql:
    SELECT
      state.geo_id as state,
      county.geo_id as county,
      base.*,
      FROM
        `bigquery-public-data.census_bureau_acs.state_2018_5yr` as state
      LEFT JOIN
        `bigquery-public-data.census_bureau_acs.county_2018_5yr` as county ON CAST(state.geo_id as STRING) = (SUBSTR(CAST(county.geo_id as STRING),0, 2))
      LEFT JOIN
        `bigquery-public-data.census_bureau_acs.blockgroup_2017_5yr` as base ON county.geo_id = (SUBSTR(CAST(base.geo_id as STRING), 0, 5))

    ;;
    persist_for: "10000 hours"
  }

  dimension: state {
    sql: ${TABLE}.state ;;
    #map_layer_name goes here
  }

  dimension: county {
    sql: ${TABLE}.county ;;
    #map_layer_name goes here
  }


}
