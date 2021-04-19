view: race {
  dimension: amerindian_pop_dim {
    type: number
    sql: ${TABLE}.amerindian_pop ;;
    description: "American Indian and Alaska Native Population. The number of people identifying as American Indian or Alaska native in each geography."
    hidden: yes
  }

  dimension: asian_pop_dim {
    type: number
    sql: ${TABLE}.asian_pop ;;
    description: "Asian Population. The number of people identifying as Asian, non-Hispanic in each geography."
    hidden: yes
  }

  dimension: black_pop_dim {
    type: number
    sql: ${TABLE}.black_pop ;;
    description: "Black or African American Population. The number of people identifying as black or African American, non-Hispanic in each geography."
    hidden: yes
  }

  dimension: hispanic_pop_dim {
    type: number
    sql: ${TABLE}.hispanic_pop ;;
    description: "Hispanic Population. The number of people identifying as Hispanic or Latino in each geography."
    hidden: yes
  }

  dimension: not_hispanic_pop_dim {
    type: number
    sql: ${TABLE}.not_hispanic_pop ;;
    description: "Population not Hispanic. The number of people not identifying as Hispanic or Latino in each geography."
    hidden: yes
  }

  dimension: white_pop_dim {
    type: number
    sql: ${TABLE}.white_pop ;;
    description: "White Population. The number of people identifying as white, non-Hispanic in each geography."
    hidden: yes
  }

  dimension: other_race_pop_dim {
    type: number
    sql: ${TABLE}.other_race_pop ;;
    description: "Other Race population. The number of people identifying as another race in each geography"
    hidden: yes
  }

  dimension: two_or_more_races_pop_dim {
    type: number
    sql: ${TABLE}.two_or_more_races_pop ;;
    description: "Two or more races population. The number of people identifying as two or more races in each geography"
    hidden: yes
  }

  measure: amerindian_pop {
    type: sum
    sql: ${amerindian_pop_dim} ;;
    view_label: "Race"
    group_label: "Amerindian"
    description: "American Indian and Alaska Native Population. The number of people identifying as American Indian or Alaska native in each geography."
  }

  measure: asian_pop {
    type: sum
    sql: ${asian_pop_dim} ;;
    view_label: "Race"
    group_label: "Asian"
    description: "Asian Population. The number of people identifying as Asian, non-Hispanic in each geography."
  }

  measure: black_pop {
    type: sum
    sql: ${black_pop_dim} ;;
    view_label: "Race"
    group_label: "Black"
    description: "Black or African American Population. The number of people identifying as black or African American, non-Hispanic in each geography."
  }

  measure: hispanic_pop {
    type: sum
    sql: ${hispanic_pop_dim} ;;
    view_label: "Race"
    group_label: "Hispanic"
    description: "Hispanic Population. The number of people identifying as Hispanic or Latino in each geography."
  }

  measure: not_hispanic_pop {
    type: sum
    sql: ${not_hispanic_pop_dim} ;;
    view_label: "Race"
    group_label: "Hispanic"
    description: "Population not Hispanic. The number of people not identifying as Hispanic or Latino in each geography."
  }

  measure: white_pop {
    type: sum
    sql: ${white_pop_dim} ;;
    view_label: "Race"
    group_label: "White"
    description: "White Population. The number of people identifying as white, non-Hispanic in each geography."
  }

  measure: other_race_pop {
    type: sum
    sql: ${other_race_pop_dim} ;;
    view_label: "Race"
    group_label: "Other"
    description: "Other Race population. The number of people identifying as another race in each geography"
  }

  measure: two_or_more_races_pop {
    type: sum
    sql: ${two_or_more_races_pop_dim} ;;
    view_label: "Race"
    group_label: "Other"
    description: "Two or more races population. The number of people identifying as two or more races in each geography"
  }
}
