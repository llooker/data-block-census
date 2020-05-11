include: "/views/*"

view: places {
  extends: [commute, education, employment, family, gender, housing, population, race]
  derived_table: {
    sql:
    SELECT
      places.*,
      places.geo_id as place_id,
      geo.state_fips_code as state_key,
      geo.place_name as place_name,
      geo.name_lsad as place_full_name
    FROM
      `bigquery-public-data.census_bureau_acs.place_2018_5yr` as places
    JOIN `bigquery-public-data.geo_us_census_places.places_*` as geo ON CAST(places.geo_id as STRING) = CONCAT(CAST(geo.state_fips_code as STRING),CAST(geo.place_fips_code as STRING))
    ;;
    persist_for: "10000 hours"
  }

  dimension: place_id {
    sql: ${TABLE}.place_id ;;
    primary_key: yes
    view_label: "Geography"
    group_label: "Place"
  }

  dimension: state_key {
    sql: ${TABLE}.state_key ;;
    hidden: yes
  }

  dimension: place_name {
    sql: ${TABLE}.place_name ;;
    view_label: "Geography"
    group_label: "Place"
  }

  dimension: place_full_name {
    sql: ${TABLE}.place_full_name ;;
    view_label: "Geography"
    group_label: "Place"
  }
  dimension: places_median_income_dim {
    sql: ${TABLE}.median_income ;;
    view_label: "Medians"
    group_label: "Places"
    value_format_name: usd
    hidden: yes
  }

  dimension: places_median_year_structure_built_dim {
    sql: ${TABLE}.median_year_structure_built ;;
    view_label: "Medians"
    group_label: "Places"
    value_format_name: decimal_0
    hidden: yes
  }

  dimension: places_median_rent_dim {
    sql: ${TABLE}.median_rent ;;
    view_label: "Medians"
    group_label: "Places"
    value_format_name: usd
    hidden: yes
  }

  dimension: places_gross_rent_dim {
    sql: ${TABLE}.renter_occupied_housing_units_paying_cash_median_gross_rent ;;
    view_label: "Medians"
    group_label: "Places"
    value_format_name: usd
    hidden: yes
  }

  measure: places_median_rent {
    sql: MAX(${places_median_rent_dim}) ;;
    type: number
    view_label: "Medians"
    group_label: "Places"
    value_format_name: usd
  }

  measure: places_median_income {
    sql: MAX(${places_median_income_dim}) ;;
    type: number
    view_label: "Medians"
    group_label: "Places"
    value_format_name: usd
  }

  measure: places_median_year_structure_built {
    sql: MAX(${places_median_year_structure_built_dim}) ;;
    type: number
    view_label: "Medians"
    group_label: "Places"
    value_format_name: decimal_0
  }

  measure: places_gross_rent {
    sql: MAX(${places_gross_rent_dim}) ;;
    type: number
    view_label: "Medians"
    group_label: "Places"
    value_format_name: usd
  }

}
