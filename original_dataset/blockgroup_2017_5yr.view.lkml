view: blockgroup_2017_5yr {
  sql_table_name: `bigquery-public-data.census_bureau_acs.blockgroup_2017_5yr`
    ;;

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

  dimension: female_10_to_14 {
    type: number
    sql: ${TABLE}.female_10_to_14 ;;
  }

  dimension: female_15_to_17 {
    type: number
    sql: ${TABLE}.female_15_to_17 ;;
  }

  dimension: female_18_to_19 {
    type: number
    sql: ${TABLE}.female_18_to_19 ;;
  }

  dimension: female_20 {
    type: number
    sql: ${TABLE}.female_20 ;;
  }

  dimension: female_21 {
    type: number
    sql: ${TABLE}.female_21 ;;
  }

  dimension: female_22_to_24 {
    type: number
    sql: ${TABLE}.female_22_to_24 ;;
  }

  dimension: female_25_to_29 {
    type: number
    sql: ${TABLE}.female_25_to_29 ;;
  }

  dimension: female_30_to_34 {
    type: number
    sql: ${TABLE}.female_30_to_34 ;;
  }

  dimension: female_35_to_39 {
    type: number
    sql: ${TABLE}.female_35_to_39 ;;
  }

  dimension: female_40_to_44 {
    type: number
    sql: ${TABLE}.female_40_to_44 ;;
  }

  dimension: female_45_to_49 {
    type: number
    sql: ${TABLE}.female_45_to_49 ;;
  }

  dimension: female_50_to_54 {
    type: number
    sql: ${TABLE}.female_50_to_54 ;;
  }

  dimension: female_55_to_59 {
    type: number
    sql: ${TABLE}.female_55_to_59 ;;
  }

  dimension: female_5_to_9 {
    type: number
    sql: ${TABLE}.female_5_to_9 ;;
  }

  dimension: female_60_to_61 {
    type: number
    sql: ${TABLE}.female_60_to_61 ;;
  }

  dimension: female_62_to_64 {
    type: number
    sql: ${TABLE}.female_62_to_64 ;;
  }

  dimension: female_65_to_66 {
    type: number
    sql: ${TABLE}.female_65_to_66 ;;
  }

  dimension: female_67_to_69 {
    type: number
    sql: ${TABLE}.female_67_to_69 ;;
  }

  dimension: female_70_to_74 {
    type: number
    sql: ${TABLE}.female_70_to_74 ;;
  }

  dimension: female_75_to_79 {
    type: number
    sql: ${TABLE}.female_75_to_79 ;;
  }

  dimension: female_80_to_84 {
    type: number
    sql: ${TABLE}.female_80_to_84 ;;
  }

  dimension: female_85_and_over {
    type: number
    sql: ${TABLE}.female_85_and_over ;;
  }

  dimension: female_pop {
    type: number
    sql: ${TABLE}.female_pop ;;
  }

  dimension: female_under_5 {
    type: number
    sql: ${TABLE}.female_under_5 ;;
  }

  dimension: geo_id {
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

  dimension: male_10_to_14 {
    type: number
    sql: ${TABLE}.male_10_to_14 ;;
  }

  dimension: male_15_to_17 {
    type: number
    sql: ${TABLE}.male_15_to_17 ;;
  }

  dimension: male_18_to_19 {
    type: number
    sql: ${TABLE}.male_18_to_19 ;;
  }

  dimension: male_20 {
    type: number
    sql: ${TABLE}.male_20 ;;
  }

  dimension: male_21 {
    type: number
    sql: ${TABLE}.male_21 ;;
  }

  dimension: male_22_to_24 {
    type: number
    sql: ${TABLE}.male_22_to_24 ;;
  }

  dimension: male_25_to_29 {
    type: number
    sql: ${TABLE}.male_25_to_29 ;;
  }

  dimension: male_30_to_34 {
    type: number
    sql: ${TABLE}.male_30_to_34 ;;
  }

  dimension: male_35_to_39 {
    type: number
    sql: ${TABLE}.male_35_to_39 ;;
  }

  dimension: male_40_to_44 {
    type: number
    sql: ${TABLE}.male_40_to_44 ;;
  }

  dimension: male_45_to_49 {
    type: number
    sql: ${TABLE}.male_45_to_49 ;;
  }

  dimension: male_50_to_54 {
    type: number
    sql: ${TABLE}.male_50_to_54 ;;
  }

  dimension: male_55_to_59 {
    type: number
    sql: ${TABLE}.male_55_to_59 ;;
  }

  dimension: male_5_to_9 {
    type: number
    sql: ${TABLE}.male_5_to_9 ;;
  }

  dimension: male_60_61 {
    type: number
    sql: ${TABLE}.male_60_61 ;;
  }

  dimension: male_62_64 {
    type: number
    sql: ${TABLE}.male_62_64 ;;
  }

  dimension: male_65_to_66 {
    type: number
    sql: ${TABLE}.male_65_to_66 ;;
  }

  dimension: male_67_to_69 {
    type: number
    sql: ${TABLE}.male_67_to_69 ;;
  }

  dimension: male_70_to_74 {
    type: number
    sql: ${TABLE}.male_70_to_74 ;;
  }

  dimension: male_75_to_79 {
    type: number
    sql: ${TABLE}.male_75_to_79 ;;
  }

  dimension: male_80_to_84 {
    type: number
    sql: ${TABLE}.male_80_to_84 ;;
  }

  dimension: male_85_and_over {
    type: number
    sql: ${TABLE}.male_85_and_over ;;
  }

  dimension: male_pop {
    type: number
    sql: ${TABLE}.male_pop ;;
  }

  dimension: male_under_5 {
    type: number
    sql: ${TABLE}.male_under_5 ;;
  }

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

  measure: sum_pop {
    type: sum
    sql: ${total_pop} ;;
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
