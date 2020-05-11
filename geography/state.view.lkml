view: state {
  derived_table: {
    sql:
    SELECT
      state.*,
      state_name.state_name as state,
      state_name.state_postal_abbreviation as state_abbreviation,
      CAST(state.geo_id as STRING) as county_key
    FROM
    `bigquery-public-data.census_bureau_acs.state_2018_5yr` as state
    INNER JOIN `bigquery-public-data.census_utility.fips_codes_states` as state_name ON state.geo_id = state_name.state_fips_code
    ;;

    persist_for: "10000 hours"
  }

  dimension: state_name {
    primary_key: yes
    sql: ${TABLE}.state ;;
    view_label: "Geography"
    group_label: "State"
    map_layer_name: us_states
  }

  dimension: state_abbreviation {
    sql: ${TABLE}.state_abbreviation ;;
    view_label: "Geography"
    group_label: "State"
    map_layer_name: us_states
  }

  dimension: county_key {
    hidden: yes
    sql: ${TABLE}.county_key ;;
  }

  dimension: state_median_income_dim {
    sql: ${TABLE}.median_income ;;
    view_label: "Medians"
    group_label: "State"
    value_format_name: usd
    hidden: yes
  }

  dimension: state_median_year_structure_built_dim {
    sql: ${TABLE}.median_year_structure_built ;;
    view_label: "Medians"
    group_label: "State"
    value_format_name: decimal_0
    hidden: yes
  }

  dimension: state_median_rent_dim {
    sql: ${TABLE}.median_rent ;;
    view_label: "Medians"
    group_label: "State"
    value_format_name: usd
    hidden: yes
  }

  dimension: state_gross_rent_dim {
    sql: ${TABLE}.renter_occupied_housing_units_paying_cash_median_gross_rent ;;
    view_label: "Medians"
    group_label: "State"
    value_format_name: usd
    hidden: yes
  }

  measure: state_median_rent {
    sql: MAX(${state_median_rent_dim}) ;;
    type: number
    view_label: "Medians"
    group_label: "State"
    value_format_name: usd
  }

  measure: state_median_income {
    sql: MAX(${state_median_income_dim}) ;;
    type: number
    view_label: "Medians"
    group_label: "State"
    value_format_name: usd
  }

  measure: state_median_year_structure_built {
    sql: MAX(${state_median_year_structure_built_dim}) ;;
    type: number
    view_label: "Medians"
    group_label: "State"
    value_format_name: decimal_0
  }

  measure: state_gross_rent {
    sql: MAX(${state_gross_rent_dim}) ;;
    type: number
    view_label: "Medians"
    group_label: "State"
    value_format_name: usd
  }

}
