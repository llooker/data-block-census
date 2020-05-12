include: "/views/*"

view: blockgroup {
  extends: [gender, housing, race, education, employment, population, commute, family]
  sql_table_name: `bigquery-public-data.census_bureau_acs.blockgroup_2017_5yr` ;;

  dimension: block_group {
    primary_key: yes
    view_label: "Geography"
    sql:  ${TABLE}.geo_id;;

    #map_layer_name: FEED ME
  }

  dimension: county_key {
    type: string
    sql:(SUBSTR(CAST(${block_group} as STRING), 0, 5)) ;;
    hidden: yes
  }

  dimension: census_tract_key {
    sql: (SUBSTR(CAST(${block_group} as STRING), 0, 11)) ;;
    hidden: yes

  }

  dimension: block_group_median_income_dim {
    sql: ${TABLE}.median_income ;;
    view_label: "Medians"
    group_label: "Block Group"
    value_format_name: usd
    hidden: yes
  }

  dimension: block_group_median_rent_dim {
    sql: ${TABLE}.median_rent ;;
    view_label: "Medians"
    group_label: "Block Group"
    value_format_name: usd
    hidden: yes
  }

  dimension: block_group_median_year_structure_built_dim {
    sql: ${TABLE}.median_year_structure_built ;;
    view_label: "Medians"
    group_label: "Block Group"
    value_format_name: decimal_0
    hidden: yes
  }

  dimension: block_group_gross_rent_dim {
    sql: ${TABLE}.renter_occupied_housing_units_paying_cash_median_gross_rent ;;
    view_label: "Medians"
    group_label: "Block Group"
    value_format_name: usd
    hidden: yes
  }

  measure: block_group_median_income {
    sql: MAX(${block_group_median_income_dim}) ;;
    type: number
    view_label: "Medians"
    group_label: "Block Group"
    value_format_name: usd
  }

  measure: block_group_median_rent {
    sql: MAX(${block_group_median_rent_dim}) ;;
    type: number
    view_label: "Medians"
    group_label: "Block Group"
    value_format_name: usd
  }

  measure: block_group_median_year_structure_built {
    sql: MAX(${block_group_median_year_structure_built_dim}) ;;
    type: number
    view_label: "Medians"
    group_label: "Block Group"
    value_format_name: decimal_0
  }

  measure: block_group_gross_rent {
    sql: MAX(${block_group_gross_rent_dim}) ;;
    type: number
    view_label: "Medians"
    group_label: "Block Group"
    value_format_name: usd
  }

}

#map_layer: congressional_districts {
  #FEED ME
#}
