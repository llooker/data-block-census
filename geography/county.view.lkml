include: "/views/*"

view: county {
  derived_table: {
   sql:
    SELECT
      county.*,
      county.geo_id as county_fips,
      CAST(county.geo_id as STRING) as blockgroup_key,
      (SUBSTR(CAST(county.geo_id as STRING),0, 2)) as state_key,
      county_name.area_name as county_name
    FROM
      `bigquery-public-data.census_bureau_acs.county_2018_5yr` as county
    JOIN`bigquery-public-data.census_utility.fips_codes_all` as county_name ON CAST(county.geo_id as STRING) = CONCAT(CAST(county_name.state as STRING), CAST(county_name.county as STRING))
    ;;
    persist_for: "10000 hours"
  }

  dimension: county_fips {
    primary_key: yes
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

  dimension: state_key {
    hidden: yes
    sql: ${TABLE}.state_key ;;
  }

  dimension: blockgroup_key {
    hidden: yes
    sql: ${TABLE}.blockgroup_key ;;
  }

  dimension: county_median_income_dim {
    sql: ${TABLE}.median_income ;;
    view_label: "Medians"
    group_label: "County"
    value_format_name: usd
    hidden: yes
  }

  dimension: county_median_rent_dim {
    sql: ${TABLE}.median_rent ;;
    view_label: "Medians"
    group_label: "County"
    value_format_name: usd
    hidden: yes
  }

  dimension: county_median_year_structure_built_dim {
    sql: ${TABLE}.median_year_structure_built ;;
    view_label: "Medians"
    group_label: "County"
    value_format_name: decimal_0
    hidden: yes
  }

  dimension: county_gross_rent_dim {
    sql: ${TABLE}.renter_occupied_housing_units_paying_cash_median_gross_rent ;;
    view_label: "Medians"
    group_label: "County"
    value_format_name: usd
    hidden: yes
  }

  measure: county_median_rent {
    sql: MAX(${county_median_rent_dim}) ;;
    type: number
    view_label: "Medians"
    group_label: "County"
    value_format_name: usd
  }

  measure: county_median_year_structure_built {
    sql: MAX(${county_median_year_structure_built_dim}) ;;
    type: number
    view_label: "Medians"
    group_label: "County"
    value_format_name: decimal_0
  }

  measure: county_median_income {
    sql: MAX(${county_median_income_dim}) ;;
    type: number
    view_label: "Medians"
    group_label: "County"
    value_format_name: usd
  }

  measure: county_gross_rent {
    sql: MAX(${county_gross_rent_dim}) ;;
    type: number
    view_label: "Medians"
    group_label: "County"
    value_format_name: usd
  }


}
