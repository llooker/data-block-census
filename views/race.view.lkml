view: race {
  extension: required

  dimension: asian_including_hispanic {
    type: number
    sql: ${TABLE}.asian_including_hispanic ;;
    description: "Asian including Hispanic"
  }

  dimension: amerindian_including_hispanic {
    type: number
    sql: ${TABLE}.amerindian_including_hispanic ;;
    description: "American Indian including Hispanic"
  }

  dimension: amerindian_pop {
    type: number
    sql: ${TABLE}.amerindian_pop ;;
    description: "American Indian and Alaska Native Population. The number of people identifying as American Indian or Alaska native in each geography."
  }

  dimension: asian_pop {
    type: number
    sql: ${TABLE}.asian_pop ;;
    description: "Asian Population. The number of people identifying as Asian, non-Hispanic in each geography."
  }

  dimension: black_including_hispanic {
    type: number
    sql: ${TABLE}.black_including_hispanic ;;
    description: "Black including Hispanic"
  }

  dimension: black_pop {
    type: number
    sql: ${TABLE}.black_pop ;;
    description: "Black or African American Population. The number of people identifying as black or African American, non-Hispanic in each geography."
  }

  dimension: hispanic_pop {
    type: number
    sql: ${TABLE}.hispanic_pop ;;
    description: "Hispanic Population. The number of people identifying as Hispanic or Latino in each geography."
  }

  dimension: not_hispanic_pop {
    type: number
    sql: ${TABLE}.not_hispanic_pop ;;
    description: "Population not Hispanic. The number of people not identifying as Hispanic or Latino in each geography."
  }

  dimension: white_pop {
    type: number
    sql: ${TABLE}.white_pop ;;
    description: "White Population. The number of people identifying as white, non-Hispanic in each geography."
  }

  dimension: white_including_hispanic {
    type: number
    sql: ${TABLE}.white_including_hispanic ;;
    description: "White including Hispanic"
  }

  dimension: other_race_pop {
    type: number
    sql: ${TABLE}.other_race_pop ;;
    description: "Other Race population. The number of people identifying as another race in each geography"
  }

  dimension: two_or_more_races_pop {
    type: number
    sql: ${TABLE}.two_or_more_races_pop ;;
    description: "Two or more races population. The number of people identifying as two or more races in each geography"
  }

}
