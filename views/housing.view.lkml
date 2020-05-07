view: housing {
  extension: required

  dimension: occupied_housing_units {
    type: number
    sql: ${TABLE}.occupied_housing_units ;;
  }

  dimension: dwellings_10_to_19_units {
    type: number
    sql: ${TABLE}.dwellings_10_to_19_units ;;
  }

  dimension: dwellings_1_units_attached {
    type: number
    sql: ${TABLE}.dwellings_1_units_attached ;;
  }

  dimension: dwellings_1_units_detached {
    type: number
    sql: ${TABLE}.dwellings_1_units_detached ;;
  }

  dimension: dwellings_20_to_49_units {
    type: number
    sql: ${TABLE}.dwellings_20_to_49_units ;;
  }

  dimension: dwellings_2_units {
    type: number
    sql: ${TABLE}.dwellings_2_units ;;
  }

  dimension: dwellings_3_to_4_units {
    type: number
    sql: ${TABLE}.dwellings_3_to_4_units ;;
  }

  dimension: dwellings_50_or_more_units {
    type: number
    sql: ${TABLE}.dwellings_50_or_more_units ;;
  }

  dimension: dwellings_5_to_9_units {
    type: number
    sql: ${TABLE}.dwellings_5_to_9_units ;;
  }

  dimension: housing_built_1939_or_earlier {
    type: number
    sql: ${TABLE}.housing_built_1939_or_earlier ;;
  }

  dimension: housing_built_2000_to_2004 {
    type: number
    sql: ${TABLE}.housing_built_2000_to_2004 ;;
  }

  dimension: housing_built_2005_or_later {
    type: number
    sql: ${TABLE}.housing_built_2005_or_later ;;
  }

  dimension: housing_units {
    type: number
    sql: ${TABLE}.housing_units ;;
  }

  dimension: housing_units_renter_occupied {
    type: number
    sql: ${TABLE}.housing_units_renter_occupied ;;
  }

  dimension: households {
    type: number
    sql: ${TABLE}.households ;;
  }

  dimension: households_retirement_income {
    type: number
    sql: ${TABLE}.households_retirement_income ;;
  }

  dimension: vacant_housing_units {
    type: number
    sql: ${TABLE}.vacant_housing_units ;;
  }

  dimension: vacant_housing_units_for_rent {
    type: number
    sql: ${TABLE}.vacant_housing_units_for_rent ;;
  }

  dimension: vacant_housing_units_for_sale {
    type: number
    sql: ${TABLE}.vacant_housing_units_for_sale ;;
  }
  dimension: median_rent {
    type: number
    sql: ${TABLE}.median_rent ;;
  }

  dimension: median_year_structure_built {
    type: number
    sql: ${TABLE}.median_year_structure_built ;;
  }

  dimension: million_dollar_housing_units {
    type: number
    sql: ${TABLE}.million_dollar_housing_units ;;
  }

  dimension: mobile_homes {
    type: number
    sql: ${TABLE}.mobile_homes ;;
  }

  dimension: mortgaged_housing_units {
    type: number
    sql: ${TABLE}.mortgaged_housing_units ;;
  }

  dimension: nonfamily_households {
    type: number
    sql: ${TABLE}.nonfamily_households ;;
  }

  dimension: family_households {
    type: number
    sql: ${TABLE}.family_households ;;
  }

  dimension: rent_10_to_15_percent {
    type: number
    sql: ${TABLE}.rent_10_to_15_percent ;;
  }

  dimension: rent_15_to_20_percent {
    type: number
    sql: ${TABLE}.rent_15_to_20_percent ;;
  }

  dimension: rent_20_to_25_percent {
    type: number
    sql: ${TABLE}.rent_20_to_25_percent ;;
  }

  dimension: rent_25_to_30_percent {
    type: number
    sql: ${TABLE}.rent_25_to_30_percent ;;
  }

  dimension: rent_30_to_35_percent {
    type: number
    sql: ${TABLE}.rent_30_to_35_percent ;;
  }

  dimension: rent_35_to_40_percent {
    type: number
    sql: ${TABLE}.rent_35_to_40_percent ;;
  }

  dimension: rent_40_to_50_percent {
    type: number
    sql: ${TABLE}.rent_40_to_50_percent ;;
  }

  dimension: rent_burden_not_computed {
    type: number
    sql: ${TABLE}.rent_burden_not_computed ;;
  }

  dimension: rent_over_50_percent {
    type: number
    sql: ${TABLE}.rent_over_50_percent ;;
  }

  dimension: rent_under_10_percent {
    type: number
    sql: ${TABLE}.rent_under_10_percent ;;
  }

  dimension: renter_occupied_housing_units_paying_cash_median_gross_rent {
    type: number
    sql: ${TABLE}.renter_occupied_housing_units_paying_cash_median_gross_rent ;;
  }
  dimension: owner_occupied_housing_units_median_value {
    type: number
    sql: ${TABLE}.owner_occupied_housing_units_median_value ;;
  }

  dimension: owner_occupied_housing_units_upper_value_quartile {
    type: number
    sql: ${TABLE}.owner_occupied_housing_units_upper_value_quartile ;;
  }

  dimension: percent_income_spent_on_rent {
    type: number
    sql: ${TABLE}.percent_income_spent_on_rent ;;
  }
  dimension: owner_occupied_housing_units {
    type: number
    sql: ${TABLE}.owner_occupied_housing_units ;;
  }

  dimension: owner_occupied_housing_units_lower_value_quartile {
    type: number
    sql: ${TABLE}.owner_occupied_housing_units_lower_value_quartile ;;
  }

}
