view: education {
  extension: required

  dimension: one_year_more_college_dim {
    type: number
    sql: ${TABLE}.one_year_more_college ;;
    description: "Population completed more than one year of college, no degree. The number of people in a geographic area over the age of 25 who attended college for more than one year but did not obtain a degree"
    hidden: yes
  }

  dimension: masters_degree_dim {
    type: number
    sql: ${TABLE}.masters_degree ;;
    description: "Population Completed Master's Degree. The number of people in a geographic area over the age of 25 who obtained a master's degree, but did not complete a more advanced degree."
    hidden: yes
  }

  dimension: less_one_year_college_dim {
    type: number
    sql: ${TABLE}.less_one_year_college ;;
    description: "Population completed less than one year of college, no degree. The number of people in a geographic area over the age of 25 who attended college for less than one year and no further."
    hidden: yes
  }

  dimension: high_school_diploma_dim {
    type: number
    sql: ${TABLE}.high_school_diploma ;;
    description: "Population Completed High School. The number of people in a geographic area over the age of 25 who completed high school, and did not complete a more advanced degree."
    hidden: yes
  }

  dimension: associates_degree_dim {
    type: number
    sql: ${TABLE}.associates_degree ;;
    description: "Population Completed Associate's Degree. The number of people in a geographic area over the age of 25 who obtained a associate's degree, and did not complete a more advanced degree."
    hidden: yes
  }

  dimension: bachelors_degree_dim {
    type: number
    sql: ${TABLE}.bachelors_degree ;;
    description: "Population Completed Bachelor's Degree. The number of people in a geographic area over the age of 25 who obtained a bachelor's degree, and did not complete a more advanced degree."
    hidden: yes
  }

  measure: one_year_more_college {
    type: sum
    sql: ${one_year_more_college_dim} ;;
    view_label: "Education"
    description: "Population completed more than one year of college, no degree. The number of people in a geographic area over the age of 25 who attended college for more than one year but did not obtain a degree"
  }

  measure: masters_degree {
    type: sum
    sql: ${masters_degree_dim} ;;
    view_label: "Education"
    description: "Population Completed Master's Degree. The number of people in a geographic area over the age of 25 who obtained a master's degree, but did not complete a more advanced degree."
  }

  measure: less_one_year_college {
    type: sum
    sql: ${less_one_year_college_dim} ;;
    view_label: "Education"
    description: "Population completed less than one year of college, no degree. The number of people in a geographic area over the age of 25 who attended college for less than one year and no further."
  }

  measure: high_school_diploma {
    type: sum
    sql: ${high_school_diploma_dim} ;;
    view_label: "Education"
    description: "Population Completed High School. The number of people in a geographic area over the age of 25 who completed high school, and did not complete a more advanced degree."
  }

  measure: associates_degree {
    type: sum
    sql: ${associates_degree_dim} ;;
    view_label: "Education"
    description: "Population Completed Associate's Degree. The number of people in a geographic area over the age of 25 who obtained a associate's degree, and did not complete a more advanced degree."
  }

  measure: bachelors_degree {
    type: sum
    sql: ${bachelors_degree_dim} ;;
    view_label: "Education"
    description: "Population Completed Bachelor's Degree. The number of people in a geographic area over the age of 25 who obtained a bachelor's degree, and did not complete a more advanced degree."
  }
}
