include: "/views/*"

view: county {
  derived_table: {
   sql:
    SELECT
      county.*,
      county.geo_id as county_fips,
      county_name.area_name as county_name
    FROM
      `bigquery-public-data.census_bureau_acs.county_2018_5yr` as county
    JOIN`bigquery-public-data.census_utility.fips_codes_all` as county_name ON CAST(county.geo_id as STRING) = CONCAT(CAST(county_name.state as STRING), CAST(county_name.county as STRING))
    ;;
    persist_for: "10000 hours"
  }

  dimension: county_fips {
    sql:  ${TABLE}.county_fips ;;
    view_label: "Geography"
    group_label: "County"
    map_layer_name: us_counties_fips
  }


  dimension: county_name {
    sql: ${TABLE}.county_name ;;
    view_label: "Geography"
    group_label: "County"
  }


}
