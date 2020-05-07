view: age {
  extension: required

  dimension: median_age {
    type: number
    sql: ${TABLE}.median_age ;;
  }

  dimension: pop_16_over {
    type: number
    sql: ${TABLE}.pop_16_over ;;
  }

  dimension: pop_25_years_over {
    type: number
    sql: ${TABLE}.pop_25_years_over ;;
  }

 }
