include: "*.view"
view: acs_census {
  extends: [gender]
  sql_table_name: bigquery-public-data.census_bureau_acs.{{geography._parameter_value}}_{{year._parameter_value}}_{{period._parameter_value}} ;;

  parameter: geography {
    type: unquoted
    allowed_value: {label: "Block Group"                  value: "blockgroup"             }
    allowed_value: {label: "Core-based Statistical Area"  value: "cbsa"                   }
    allowed_value: {label: "Census Tract"                 value: "censustract"            }
    allowed_value: {label: "County"                       value: "county"                 }
    allowed_value: {label: "Place"                        value: "place"                  }
    allowed_value: {label: "Puma"                         value: "puma"                   }
    allowed_value: {label: "School District"              value: "schooldistrictunified"  }
    allowed_value: {label: "State"                        value: "state"                  }
    allowed_value: {label: "Zip Codes"                    value: "zip_codes"              }
  }

  parameter: year {
    type: unquoted
    allowed_value: {value: "2010"}
    allowed_value: {value: "2011"}
    allowed_value: {value: "2012"}
    allowed_value: {value: "2013"}
    allowed_value: {value: "2014"}
    allowed_value: {value: "2015"}
    allowed_value: {value: "2016"}
    allowed_value: {value: "2017"}
    allowed_value: {value: "2018"}
  }

  parameter: period {
    type: unquoted
    allowed_value: {label: "1 Year" value: "1yr"}
    allowed_value: {label: "5 Year" value: "5yr"}
  }


  dimension: aggregate_travel_time_to_work {
    type: number
    sql: ${TABLE}.aggregate_travel_time_to_work ;;
  }

  dimension: amerindian_including_hispanic {
    type: number
    sql: ${TABLE}.amerindian_including_hispanic ;;
  }

  dimension: amerindian_pop {
    type: number
    sql: ${TABLE}.amerindian_pop ;;
  }

  dimension: armed_forces {
    type: number
    sql: ${TABLE}.armed_forces ;;
  }

  dimension: asian_including_hispanic {
    type: number
    sql: ${TABLE}.asian_including_hispanic ;;
  }

  dimension: asian_pop {
    type: number
    sql: ${TABLE}.asian_pop ;;
  }

  dimension: associates_degree {
    type: number
    sql: ${TABLE}.associates_degree ;;
  }

  dimension: bachelors_degree {
    type: number
    sql: ${TABLE}.bachelors_degree ;;
  }

  dimension: black_including_hispanic {
    type: number
    sql: ${TABLE}.black_including_hispanic ;;
  }

  dimension: black_pop {
    type: number
    sql: ${TABLE}.black_pop ;;
  }

  dimension: civilian_labor_force {
    type: number
    sql: ${TABLE}.civilian_labor_force ;;
  }

  dimension: commute_10_14_mins {
    type: number
    sql: ${TABLE}.commute_10_14_mins ;;
  }

  dimension: commute_15_19_mins {
    type: number
    sql: ${TABLE}.commute_15_19_mins ;;
  }

  dimension: commute_20_24_mins {
    type: number
    sql: ${TABLE}.commute_20_24_mins ;;
  }

  dimension: commute_25_29_mins {
    type: number
    sql: ${TABLE}.commute_25_29_mins ;;
  }

  dimension: commute_30_34_mins {
    type: number
    sql: ${TABLE}.commute_30_34_mins ;;
  }

  dimension: commute_35_39_mins {
    type: number
    sql: ${TABLE}.commute_35_39_mins ;;
  }

  dimension: commute_35_44_mins {
    type: number
    sql: ${TABLE}.commute_35_44_mins ;;
  }

  dimension: commute_40_44_mins {
    type: number
    sql: ${TABLE}.commute_40_44_mins ;;
  }

  dimension: commute_45_59_mins {
    type: number
    sql: ${TABLE}.commute_45_59_mins ;;
  }

  dimension: commute_5_9_mins {
    type: number
    sql: ${TABLE}.commute_5_9_mins ;;
  }

  dimension: commute_60_89_mins {
    type: number
    sql: ${TABLE}.commute_60_89_mins ;;
  }

  dimension: commute_60_more_mins {
    type: number
    sql: ${TABLE}.commute_60_more_mins ;;
  }

  dimension: commute_90_more_mins {
    type: number
    sql: ${TABLE}.commute_90_more_mins ;;
  }

  dimension: commute_less_10_mins {
    type: number
    sql: ${TABLE}.commute_less_10_mins ;;
  }

  dimension: commuters_16_over {
    type: number
    sql: ${TABLE}.commuters_16_over ;;
  }

  dimension: commuters_by_public_transportation {
    type: number
    sql: ${TABLE}.commuters_by_public_transportation ;;
  }

  dimension: do_date {
    type: string
    sql: ${TABLE}.do_date ;;
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

  dimension: employed_pop {
    type: number
    sql: ${TABLE}.employed_pop ;;
  }

  dimension: families_with_young_children {
    type: number
    sql: ${TABLE}.families_with_young_children ;;
  }

  dimension: family_households {
    type: number
    sql: ${TABLE}.family_households ;;
  }

  dimension: father_in_labor_force_one_parent_families_with_young_children {
    type: number
    sql: ${TABLE}.father_in_labor_force_one_parent_families_with_young_children ;;
  }

  dimension: father_one_parent_families_with_young_children {
    type: number
    sql: ${TABLE}.father_one_parent_families_with_young_children ;;
  }

#######FEMALE#######

#####END FEMALE#####
  dimension: geo_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.geo_id ;;
  }

  dimension: high_school_diploma {
    type: number
    sql: ${TABLE}.high_school_diploma ;;
  }

  dimension: hispanic_pop {
    type: number
    sql: ${TABLE}.hispanic_pop ;;
  }

  dimension: households {
    type: number
    sql: ${TABLE}.households ;;
  }

  dimension: households_retirement_income {
    type: number
    sql: ${TABLE}.households_retirement_income ;;
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

  dimension: income_100000_124999 {
    type: number
    sql: ${TABLE}.income_100000_124999 ;;
  }

  dimension: income_10000_14999 {
    type: number
    sql: ${TABLE}.income_10000_14999 ;;
  }

  dimension: income_125000_149999 {
    type: number
    sql: ${TABLE}.income_125000_149999 ;;
  }

  dimension: income_150000_199999 {
    type: number
    sql: ${TABLE}.income_150000_199999 ;;
  }

  dimension: income_15000_19999 {
    type: number
    sql: ${TABLE}.income_15000_19999 ;;
  }

  dimension: income_200000_or_more {
    type: number
    sql: ${TABLE}.income_200000_or_more ;;
  }

  dimension: income_20000_24999 {
    type: number
    sql: ${TABLE}.income_20000_24999 ;;
  }

  dimension: income_25000_29999 {
    type: number
    sql: ${TABLE}.income_25000_29999 ;;
  }

  dimension: income_30000_34999 {
    type: number
    sql: ${TABLE}.income_30000_34999 ;;
  }

  dimension: income_35000_39999 {
    type: number
    sql: ${TABLE}.income_35000_39999 ;;
  }

  dimension: income_40000_44999 {
    type: number
    sql: ${TABLE}.income_40000_44999 ;;
  }

  dimension: income_45000_49999 {
    type: number
    sql: ${TABLE}.income_45000_49999 ;;
  }

  dimension: income_50000_59999 {
    type: number
    sql: ${TABLE}.income_50000_59999 ;;
  }

  dimension: income_60000_74999 {
    type: number
    sql: ${TABLE}.income_60000_74999 ;;
  }

  dimension: income_75000_99999 {
    type: number
    sql: ${TABLE}.income_75000_99999 ;;
  }

  dimension: income_less_10000 {
    type: number
    sql: ${TABLE}.income_less_10000 ;;
  }

  dimension: income_per_capita {
    type: number
    sql: ${TABLE}.income_per_capita ;;
  }

  dimension: less_one_year_college {
    type: number
    sql: ${TABLE}.less_one_year_college ;;
  }

#### MALE #####

#### END MALE ####

  dimension: married_households {
    type: number
    sql: ${TABLE}.married_households ;;
  }

  dimension: masters_degree {
    type: number
    sql: ${TABLE}.masters_degree ;;
  }

  dimension: median_age {
    type: number
    sql: ${TABLE}.median_age ;;
  }

  dimension: median_income {
    type: number
    sql: ${TABLE}.median_income ;;
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

  dimension: not_hispanic_pop {
    type: number
    sql: ${TABLE}.not_hispanic_pop ;;
  }

  dimension: not_in_labor_force {
    type: number
    sql: ${TABLE}.not_in_labor_force ;;
  }

  dimension: occupied_housing_units {
    type: number
    sql: ${TABLE}.occupied_housing_units ;;
  }

  dimension: one_parent_families_with_young_children {
    type: number
    sql: ${TABLE}.one_parent_families_with_young_children ;;
  }

  dimension: one_year_more_college {
    type: number
    sql: ${TABLE}.one_year_more_college ;;
  }

  dimension: other_race_pop {
    type: number
    sql: ${TABLE}.other_race_pop ;;
  }

  dimension: owner_occupied_housing_units {
    type: number
    sql: ${TABLE}.owner_occupied_housing_units ;;
  }

  dimension: owner_occupied_housing_units_lower_value_quartile {
    type: number
    sql: ${TABLE}.owner_occupied_housing_units_lower_value_quartile ;;
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

  dimension: pop_16_over {
    type: number
    sql: ${TABLE}.pop_16_over ;;
  }

  dimension: pop_25_years_over {
    type: number
    sql: ${TABLE}.pop_25_years_over ;;
  }

  dimension: pop_in_labor_force {
    type: number
    sql: ${TABLE}.pop_in_labor_force ;;
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

  dimension: total_pop {
    type: number
    sql: ${TABLE}.total_pop ;;
  }

  dimension: two_or_more_races_pop {
    type: number
    sql: ${TABLE}.two_or_more_races_pop ;;
  }

  dimension: two_parent_families_with_young_children {
    type: number
    sql: ${TABLE}.two_parent_families_with_young_children ;;
  }

  dimension: two_parents_father_in_labor_force_families_with_young_children {
    type: number
    sql: ${TABLE}.two_parents_father_in_labor_force_families_with_young_children ;;
  }

  dimension: two_parents_in_labor_force_families_with_young_children {
    type: number
    sql: ${TABLE}.two_parents_in_labor_force_families_with_young_children ;;
  }

  dimension: two_parents_mother_in_labor_force_families_with_young_children {
    type: number
    sql: ${TABLE}.two_parents_mother_in_labor_force_families_with_young_children ;;
  }

  dimension: two_parents_not_in_labor_force_families_with_young_children {
    type: number
    sql: ${TABLE}.two_parents_not_in_labor_force_families_with_young_children ;;
  }

  dimension: unemployed_pop {
    type: number
    sql: ${TABLE}.unemployed_pop ;;
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

  dimension: white_including_hispanic {
    type: number
    sql: ${TABLE}.white_including_hispanic ;;
  }

  dimension: white_pop {
    type: number
    sql: ${TABLE}.white_pop ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

}
