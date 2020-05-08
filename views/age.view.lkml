view: age {
  extension: required

  dimension: median_age_dim {
    type: number
    sql: ${TABLE}.median_age ;;
    description: "Median Age. The median age of all people in a given geographic area."
    hidden: yes
  }

  dimension: pop_16_over_dim {
    type: number
    sql: ${TABLE}.pop_16_over ;;
    description: "Population age 16 and over. The number of people in each geography who are age 16 or over."
    hidden: yes
  }

  dimension: pop_25_years_over_dim {
    type: number
    sql: ${TABLE}.pop_25_years_over ;;
    description: "Population 25 Years and Over. The number of people in a geographic area who are over the age of 25.  This is used mostly as a denominator of educational attainment."
    hidden: yes
  }

  measure: median_age {
    type: sum
    sql: ${median_age_dim} ;;
    view_label: "Age"
    description: "Median Age. The median age of all people in a given geographic area."
  }

  measure: pop_16_over {
    type: sum
    sql: ${pop_16_over_dim} ;;
    view_label: "Age"
    description: "Population age 16 and over. The number of people in each geography who are age 16 or over."
  }

  measure: pop_25_years_over {
    type: sum
    sql: ${pop_25_years_over_dim} ;;
    view_label: "Age"
    description: "Population 25 Years and Over. The number of people in a geographic area who are over the age of 25.  This is used mostly as a denominator of educational attainment."
  }
}
