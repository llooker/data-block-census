view: population {
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

  dimension: total_pop_dim {
    type: number
    sql: ${TABLE}.total_pop ;;
    description: "Total Population. The total number of all people living in a given geographic area.  This is a very useful catch-all denominator when calculating rates."
    hidden: yes
  }

  dimension: armed_forces_dim {
    type: number
    sql: ${TABLE}.armed_forces ;;
    description: "Population in Armed Forces. The number of people in each geography who are members of the U.S. Armed Forces (people on active duty with the United States Army, Air Force, Navy, Marine Corps, or Coast Guard)."
    hidden: yes
  }

  measure: pop_16_over {
    type: sum
    sql: ${pop_16_over_dim} ;;
    view_label: "Population"
    description: "Population age 16 and over. The number of people in each geography who are age 16 or over."
  }

  measure: pop_25_years_over {
    type: sum
    sql: ${pop_25_years_over_dim} ;;
    view_label: "Population"
    description: "Population 25 Years and Over. The number of people in a geographic area who are over the age of 25.  This is used mostly as a denominator of educational attainment."
  }

  measure: armed_forces {
    type: sum
    sql: ${armed_forces_dim} ;;
    view_label: "Population"
    description: "Population in Armed Forces. The number of people in each geography who are members of the U.S. Armed Forces (people on active duty with the United States Army, Air Force, Navy, Marine Corps, or Coast Guard)."
  }

  measure: total_pop {
    type: sum
    sql: ${total_pop_dim} ;;
    view_label: "Population"
    description: "Total Population. The total number of all people living in a given geographic area.  This is a very useful catch-all denominator when calculating rates."
  }
}
