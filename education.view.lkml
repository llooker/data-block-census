view: education {
 extension: required

  dimension: one_year_more_college {
    type: number
    sql: ${TABLE}.one_year_more_college ;;
  }

  dimension: masters_degree {
    type: number
    sql: ${TABLE}.masters_degree ;;
  }

  dimension: less_one_year_college {
    type: number
    sql: ${TABLE}.less_one_year_college ;;
  }

  dimension: high_school_diploma {
    type: number
    sql: ${TABLE}.high_school_diploma ;;
  }

  dimension: associates_degree {
    type: number
    sql: ${TABLE}.associates_degree ;;
  }

  dimension: bachelors_degree {
    type: number
    sql: ${TABLE}.bachelors_degree ;;
  }


}
