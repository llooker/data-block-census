view: race {
  extension: required

  dimension: asian_including_hispanic {
    type: number
    sql: ${TABLE}.asian_including_hispanic ;;
  }

  dimension: amerindian_including_hispanic {
    type: number
    sql: ${TABLE}.amerindian_including_hispanic ;;
  }

  dimension: amerindian_pop {
    type: number
    sql: ${TABLE}.amerindian_pop ;;
  }

  dimension: asian_pop {
    type: number
    sql: ${TABLE}.asian_pop ;;
  }

  dimension: black_including_hispanic {
    type: number
    sql: ${TABLE}.black_including_hispanic ;;
  }

  dimension: black_pop {
    type: number
    sql: ${TABLE}.black_pop ;;
  }

  dimension: hispanic_pop {
    type: number
    sql: ${TABLE}.hispanic_pop ;;
  }

  dimension: not_hispanic_pop {
    type: number
    sql: ${TABLE}.not_hispanic_pop ;;
  }

  dimension: white_pop {
    type: number
    sql: ${TABLE}.white_pop ;;
  }

  dimension: white_including_hispanic {
    type: number
    sql: ${TABLE}.white_including_hispanic ;;
  }

  dimension: other_race_pop {
    type: number
    sql: ${TABLE}.other_race_pop ;;
  }

  dimension: two_or_more_races_pop {
    type: number
    sql: ${TABLE}.two_or_more_races_pop ;;
  }
}
