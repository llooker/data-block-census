view: age {
  extension: required

  dimension: median_age {
    type: number
    sql: ${TABLE}.median_age ;;
    description: "Median Age. The median age of all people in a given geographic area."
  }

  dimension: pop_16_over {
    type: number
    sql: ${TABLE}.pop_16_over ;;
    description: "Population age 16 and over. The number of people in each geography who are age 16 or over."
  }

  dimension: pop_25_years_over {
    type: number
    sql: ${TABLE}.pop_25_years_over ;;
    description: "Population 25 Years and Over. The number of people in a geographic area who are over the age of 25.  This is used mostly as a denominator of educational attainment."
  }
}
