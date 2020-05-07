view: housing {
  extension: required

  dimension: occupied_housing_units {
    type: number
    sql: ${TABLE}.occupied_housing_units ;;
    description: "Occupied housing units. A housing unit is classified as occupied if it is the usual place of residence of the person or group of people living in it at the time of enumeration."
  }

  dimension: dwellings_10_to_19_units {
    type: number
    sql: ${TABLE}.dwellings_10_to_19_units ;;
    description: "Apartment buildings with 10 to 19 units"
  }

  dimension: dwellings_1_units_attached {
    type: number
    sql: ${TABLE}.dwellings_1_units_attached ;;
    description: "Single-family (one unit) attached dwellings. This is a 1-unit structure that has one or more walls extending from ground to roof separating it from adjoining structures. In row houses (sometimes called townhouses), double houses, or houses attached to nonresidential structures, each house is a separate, attached structure if the dividing or common wall goes from ground to roof."
  }

  dimension: dwellings_1_units_detached {
    type: number
    sql: ${TABLE}.dwellings_1_units_detached ;;
    description: "Single-family (one unit) detached dwellings. This is a 1-unit structure detached from any other house, that is, with open space on all four sides. Such structures are considered detached even if they have an adjoining shed or garage. A one-family house that contains a business is considered detached as long as the building has open space on all four sides. Mobile homes to which one or more permanent rooms have been added or built also are included."
  }

  dimension: dwellings_20_to_49_units {
    type: number
    sql: ${TABLE}.dwellings_20_to_49_units ;;
    description: "Apartment buildings with 20 to 49 units"
  }

  dimension: dwellings_2_units {
    type: number
    sql: ${TABLE}.dwellings_2_units ;;
    description: "Two-family (two unit) dwellings"
  }

  dimension: dwellings_3_to_4_units {
    type: number
    sql: ${TABLE}.dwellings_3_to_4_units ;;
    description: "Multifamily dwellings with three to 4 units"
  }

  dimension: dwellings_50_or_more_units {
    type: number
    sql: ${TABLE}.dwellings_50_or_more_units ;;
    description: "Apartment buildings with 50 or more units"
  }

  dimension: dwellings_5_to_9_units {
    type: number
    sql: ${TABLE}.dwellings_5_to_9_units ;;
    description: "Apartment buildings with 5 to 9 units"
  }

  dimension: housing_built_1939_or_earlier {
    type: number
    sql: ${TABLE}.housing_built_1939_or_earlier ;;
    description: "Housing units built before 1939. A house, an apartment, a mobile home or trailer, a group of rooms, or a single room occupied as separate living quarters, or if vacant, intended for occupancy as separate living quarters built in 1939 or earlier."
  }

  dimension: housing_built_2000_to_2004 {
    type: number
    sql: ${TABLE}.housing_built_2000_to_2004 ;;
    description: "Housing units built between 2000 and 2004. A house, an apartment, a mobile home or trailer, a group of rooms, or a single room occupied as separate living quarters, or if vacant, intended for occupancy as separate living quarters built from 2000 to 2004."
  }

  dimension: housing_built_2005_or_later {
    type: number
    sql: ${TABLE}.housing_built_2005_or_later ;;
    description: "Housing units built in 2005 or later. A house, an apartment, a mobile home or trailer, a group of rooms, or a single room occupied as separate living quarters, or if vacant, intended for occupancy as separate living quarters built in 2005 or later."
  }

  dimension: housing_units {
    type: number
    sql: ${TABLE}.housing_units ;;
    description: "Housing Units. A count of housing units in each geography.  A housing unit is a house, an apartment, a mobile home or trailer, a group of rooms, or a single room occupied as separate living quarters, or if vacant, intended for occupancy as separate living quarters."
  }

  dimension: housing_units_renter_occupied {
    type: number
    sql: ${TABLE}.housing_units_renter_occupied ;;
    description: "Renter occupied housing units. All occupied units which are not owner occupied, whether they are rented for cash rent or occupied without payment of cash rent, are classified as renter-occupied."
  }

  dimension: households {
    type: number
    sql: ${TABLE}.households ;;
    description: "Households. A count of the number of households in each geography. A household consists of one or more people who live in the same dwelling and also share at meals or living accommodation, and may consist of a single family or some other grouping of people. "
  }

  dimension: households_retirement_income {
    type: number
    sql: ${TABLE}.households_retirement_income ;;
    description: "Households receiving retirement income"
  }

  dimension: vacant_housing_units {
    type: number
    sql: ${TABLE}.vacant_housing_units ;;
    description: "Vacant Housing Units. The count of vacant housing units in a geographic area. A housing unit is vacant if no one is living in it at the time of enumeration, unless its occupants are only temporarily absent. Units temporarily occupied at the time of enumeration entirely by people who have a usual residence elsewhere are also classified as vacant."
  }

  dimension: vacant_housing_units_for_rent {
    type: number
    sql: ${TABLE}.vacant_housing_units_for_rent ;;
    description: "Vacant Housing Units for Rent. The count of vacant housing units in a geographic area that are for rent. A housing unit is vacant if no one is living in it at the time of enumeration, unless its occupants are only temporarily absent. Units temporarily occupied at the time of enumeration entirely by people who have a usual residence elsewhere are also classified as vacant."
  }

  dimension: vacant_housing_units_for_sale {
    type: number
    sql: ${TABLE}.vacant_housing_units_for_sale ;;
    description: "Vacant Housing Units for Sale. The count of vacant housing units in a geographic area that are for sale. A housing unit is vacant if no one is living in it at the time of enumeration, unless its occupants are only temporarily absent. Units temporarily occupied at the time of enumeration entirely by people who have a usual residence elsewhere are also classified as vacant."
  }

  dimension: median_rent {
    type: number
    sql: ${TABLE}.median_rent ;;
    description: "Median Rent. The median contract rent within a geographic area. The contract rent is the monthly rent agreed to or contracted for, regardless of any furnishings, utilities, fees, meals, or services that may be included. For vacant units, it is the monthly rent asked for the rental unit at the time of interview."
  }

  dimension: median_year_structure_built {
    type: number
    sql: ${TABLE}.median_year_structure_built ;;
    description: "Median Year Structure Built. Median Year Structure Built"
  }

  dimension: million_dollar_housing_units {
    type: number
    sql: ${TABLE}.million_dollar_housing_units ;;
    description: "Owner-occupied Housing Units valued at $1,000,000 or more.. The count of owner occupied housing units in a geographic area that are valued at $1,000,000 or more.  Value is the respondent's estimate of how much the property (house and lot, mobile home and lot, or condominium unit) would sell for if it were for sale."
  }

  dimension: mobile_homes {
    type: number
    sql: ${TABLE}.mobile_homes ;;
    description: "Mobile homes. A manufactured home is defined as a movable dwelling, 8 feet or more wide and 40 feet or more long, designed to be towed on its own chassis, with transportation gear integral to the unit when it leaves the factory, and without need of a permanent foundation. These homes are built in accordance with the U.S. Department of Housing and Urban Development (HUD) building code."
  }

  dimension: mortgaged_housing_units {
    type: number
    sql: ${TABLE}.mortgaged_housing_units ;;
    description: "Owner-occupied Housing Units with a Mortgage. The count of housing units within a geographic area that are mortagaged. 'Mortgage' refers to all forms of debt where the property is pledged as security for repayment of the debt, including deeds of trust, trust deed, contracts to purchase, land contracts, junior mortgages, and home equity loans."
  }

  dimension: rent_10_to_15_percent {
    type: number
    sql: ${TABLE}.rent_10_to_15_percent ;;
    description: "Housing units spending 10 to 14.9% income on rent. Gross rent from 10.0 to 14.9 percent of household income. Computed ratio of monthly gross rent to monthly household income (total household income divided by 12). The ratio is computed separately for each unit and is rounded to the nearest tenth. Units for which no rent is paid and units occupied by households that report no income or a net loss comprise the category, 'Not computed'. Gross rent as a percentage of household income provides information on the monthly housing cost expenses for renters. "
  }

  dimension: rent_15_to_20_percent {
    type: number
    sql: ${TABLE}.rent_15_to_20_percent ;;
    description: "Housing units spending 15 to 19.9% income on rent. Gross rent from 15.0 to 19.9 percent of household income. Computed ratio of monthly gross rent to monthly household income (total household income divided by 12). The ratio is computed separately for each unit and is rounded to the nearest tenth. Units for which no rent is paid and units occupied by households that report no income or a net loss comprise the category, 'Not computed'. Gross rent as a percentage of household income provides information on the monthly housing cost expenses for renters. "
  }

  dimension: rent_20_to_25_percent {
    type: number
    sql: ${TABLE}.rent_20_to_25_percent ;;
    description: "Housing units spending 20 to 24.9% income on rent. Gross rent from 20.0 to 24.9 percent of household income. Computed ratio of monthly gross rent to monthly household income (total household income divided by 12). The ratio is computed separately for each unit and is rounded to the nearest tenth. Units for which no rent is paid and units occupied by households that report no income or a net loss comprise the category, 'Not computed'. Gross rent as a percentage of household income provides information on the monthly housing cost expenses for renters. "
  }

  dimension: rent_25_to_30_percent {
    type: number
    sql: ${TABLE}.rent_25_to_30_percent ;;
    description: "Housing units spending 25 to 29.9% income on rent. Gross rent from 25.0 to 29.9 percent of household income. Computed ratio of monthly gross rent to monthly household income (total household income divided by 12). The ratio is computed separately for each unit and is rounded to the nearest tenth. Units for which no rent is paid and units occupied by households that report no income or a net loss comprise the category, 'Not computed'. Gross rent as a percentage of household income provides information on the monthly housing cost expenses for renters. "
  }

  dimension: rent_30_to_35_percent {
    type: number
    sql: ${TABLE}.rent_30_to_35_percent ;;
    description: "Housing units spending 30 to 34.9% income on rent. Gross rent from 30.0 to 34.9 percent of household income. Computed ratio of monthly gross rent to monthly household income (total household income divided by 12). The ratio is computed separately for each unit and is rounded to the nearest tenth. Units for which no rent is paid and units occupied by households that report no income or a net loss comprise the category, 'Not computed'. Gross rent as a percentage of household income provides information on the monthly housing cost expenses for renters. "
  }

  dimension: rent_35_to_40_percent {
    type: number
    sql: ${TABLE}.rent_35_to_40_percent ;;
    description: "Housing units spending 35 to 39.9% income on rent. Gross rent from 35.0 to 39.9 percent of household income. Computed ratio of monthly gross rent to monthly household income (total household income divided by 12). The ratio is computed separately for each unit and is rounded to the nearest tenth. Units for which no rent is paid and units occupied by households that report no income or a net loss comprise the category, 'Not computed'. Gross rent as a percentage of household income provides information on the monthly housing cost expenses for renters. "
  }

  dimension: rent_40_to_50_percent {
    type: number
    sql: ${TABLE}.rent_40_to_50_percent ;;
    description: "Housing units spending 40 to 49.9% income on rent. Gross rent from 40.0 to 49.9 percent of household income. Computed ratio of monthly gross rent to monthly household income (total household income divided by 12). The ratio is computed separately for each unit and is rounded to the nearest tenth. Units for which no rent is paid and units occupied by households that report no income or a net loss comprise the category, 'Not computed'. Gross rent as a percentage of household income provides information on the monthly housing cost expenses for renters. "
  }

  dimension: rent_burden_not_computed {
    type: number
    sql: ${TABLE}.rent_burden_not_computed ;;
    description: "Housing units without rent burden computed. Units for which no rent is paid and units occupied by households that reported no income or a net loss comprise this category"
  }

  dimension: rent_over_50_percent {
    type: number
    sql: ${TABLE}.rent_over_50_percent ;;
    description: "Housing units spending over 50% income on rent. Gross rent over 50 percent of household income. Computed ratio of monthly gross rent to monthly household income (total household income divided by 12). The ratio is computed separately for each unit and is rounded to the nearest tenth. Units for which no rent is paid and units occupied by households that report no income or a net loss comprise the category, 'Not computed'. Gross rent as a percentage of household income provides information on the monthly housing cost expenses for renters. "
  }

  dimension: rent_under_10_percent {
    type: number
    sql: ${TABLE}.rent_under_10_percent ;;
    description: "Housing units spending less than 10% on rent. Gross rent less than 10 percent of household income. Computed ratio of monthly gross rent to monthly household income (total household income divided by 12). The ratio is computed separately for each unit and is rounded to the nearest tenth. Units for which no rent is paid and units occupied by households that report no income or a net loss comprise the category, 'Not computed'. Gross rent as a percentage of household income provides information on the monthly housing cost expenses for renters. "
  }

  dimension: renter_occupied_housing_units_paying_cash_median_gross_rent {
    type: number
    sql: ${TABLE}.renter_occupied_housing_units_paying_cash_median_gross_rent ;;
    description: "Renter-Occupied Housing Units Paying Cash Rent Median Gross Rent"
  }

  dimension: owner_occupied_housing_units {
    type: number
    sql: ${TABLE}.owner_occupied_housing_units ;;
    description: "Owner-occupied Housing Units"
  }

  dimension: owner_occupied_housing_units_lower_value_quartile {
    type: number
    sql: ${TABLE}.owner_occupied_housing_units_lower_value_quartile ;;
    description: "Owner-Occupied Housing Units Lower Value Quartile"
  }

  dimension: owner_occupied_housing_units_median_value {
    type: number
    sql: ${TABLE}.owner_occupied_housing_units_median_value ;;
    description: "Owner-Occupied Housing Units Median Value. The middle value (median) in a geographic area owner occupied housing units."
  }

  dimension: owner_occupied_housing_units_upper_value_quartile {
    type: number
    sql: ${TABLE}.owner_occupied_housing_units_upper_value_quartile ;;
    description: "Owner-Occupied Housing Units Upper Value Quartile"
  }

  dimension: percent_income_spent_on_rent {
    type: number
    sql: ${TABLE}.percent_income_spent_on_rent ;;
    description: "Percent of Household Income Spent on Rent. Within a geographic area, the median percentage of household income which was spent on gross rent.  Gross rent is the amount of the contract rent plus the estimated average monthly cost of utilities (electricity, gas, water, sewer etc.) and fuels (oil, coal, wood, etc.) if these are paid by the renter.  Household income is the sum of the income of all people 15 years and older living in the household."
  }

}
