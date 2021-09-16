view: commute {
  dimension: aggregate_travel_time_to_work_dim {
    type: number
    sql: ${TABLE}.aggregate_travel_time_to_work ;;
    description: "Aggregate travel time to work. The total number of minutes every worker in a geographic area over the age of 16 who did not work from home spent spent commuting to work in one day"
    hidden: yes
  }

#   dimension: commute_5_9_mins_dim {
#     type: number
#     sql: ${TABLE}.commute_5_9_mins ;;
#     description: "Number of workers with a commute between 5 and 9 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 5 and 9 minutes. "
#     hidden: yes
#   } # Not present on all geo table types

  dimension: commute_10_14_mins_dim {
    type: number
    sql: ${TABLE}.commute_10_14_mins ;;
    description: "Number of workers with a commute between 10 and 14 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 10 and 14 minutes. "
    hidden: yes
  }

  dimension: commute_15_19_mins_dim {
    type: number
    sql: ${TABLE}.commute_15_19_mins ;;
    description: "Number of workers with a commute between 15 and 19 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 15 and 19 minutes. "
    hidden: yes
  }

  dimension: commute_20_24_mins_dim {
    type: number
    sql: ${TABLE}.commute_20_24_mins ;;
    description: "Number of workers with a commute between 20 and 24 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 20 and 24 minutes."
    hidden: yes
  }

  dimension: commute_25_29_mins_dim {
    type: number
    sql: ${TABLE}.commute_25_29_mins ;;
    description: "Number of workers with a commute between 25 and 29 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 25 and 29 minutes. "
    hidden: yes
  }

  dimension: commute_30_34_mins_dim {
    type: number
    sql: ${TABLE}.commute_30_34_mins ;;
    description: "Number of workers with a commute between 30 and 34 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 30 and 34 minutes. "
    hidden: yes
  }

  dimension: commute_35_44_mins_dim {
    type: number
    sql: ${TABLE}.commute_35_44_mins ;;
    description: "Number of workers with a commute between 35 and 44 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 35 and 44 minutes. "
    hidden: yes
  }

  dimension: commute_45_59_mins_dim {
    type: number
    sql: ${TABLE}.commute_45_59_mins ;;
    description: "Number of workers with a commute between 45 and 59 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 45 and 59 minutes. "
    hidden: yes
  }

#   dimension: commute_60_89_mins_dim {
#     type: number
#     sql: ${TABLE}.commute_60_89_mins ;;
#     description: "Number of workers with a commute between 60 and 89 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 60 and 89 minutes."
#     hidden: yes
#   } # Not present on all geo table types

  dimension: commute_60_more_mins_dim {
    type: number
    sql: ${TABLE}.commute_60_more_mins ;;
    description: "Number of workers with a commute of over 60 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in over 60 minutes."
    hidden: yes
  }

  dimension: commute_less_10_mins_dim {
    type: number
    sql: ${TABLE}.commute_less_10_mins ;;
    description: "Number of workers with less than 10 minute commute. The number of workers in a geographic area over the age of 16 who do not work from home and commute in less than 10 minutes."
    hidden: yes
  }

  dimension: commuters_16_over_dim {
    type: number
    sql: ${TABLE}.commuters_16_over ;;
    description: "Workers age 16 and over who do not work from home. The number of workers in a geographic area over the age of 16 who do not work from home"
    hidden: yes
  }

  dimension: commuters_by_public_transportation_dim {
    type: number
    sql: ${TABLE}.commuters_by_public_transportation ;;
    description: "Commuters by Public Transportation. The number of workers age 16 years and over within a geographic area who primarily traveled to work by public transportation.  This is the principal mode of travel or type of conveyance, by distance rather than time, that the worker usually used to get from home to work."
    hidden: yes
  }

  measure: aggregate_travel_time_to_work {
    type: sum
    sql: ${aggregate_travel_time_to_work_dim} ;;
    view_label: "Commute"
    description: "Aggregate travel time to work. The total number of minutes every worker in a geographic area over the age of 16 who did not work from home spent spent commuting to work in one day"
  }

  measure: commute_10_14_mins {
    label: "10-14 min"
    type: sum
    sql: ${commute_10_14_mins_dim} ;;
    view_label: "Commute"
    group_label: "Commute Time"
    description: "Number of workers with a commute between 10 and 14 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 10 and 14 minutes. "
  }

  measure: commute_15_19_mins {
    label: "15-19 min"
    type: sum
    sql: ${commute_15_19_mins_dim} ;;
    view_label: "Commute"
    group_label: "Commute Time"
    description: "Number of workers with a commute between 15 and 19 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 15 and 19 minutes. "
  }

  measure: commute_20_24_mins {
    label: "20-24 min"
    type: sum
    sql: ${commute_20_24_mins_dim} ;;
    view_label: "Commute"
    group_label: "Commute Time"
    description: "Number of workers with a commute between 20 and 24 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 20 and 24 minutes."
  }

  measure: commute_25_29_mins {
    label: "25-29 min"
    type: sum
    sql: ${commute_25_29_mins_dim} ;;
    view_label: "Commute"
    group_label: "Commute Time"
    description: "Number of workers with a commute between 25 and 29 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 25 and 29 minutes. "
  }

  measure: commute_30_34_mins {
    label: "30-34 min"
    type: sum
    sql: ${commute_30_34_mins_dim} ;;
    view_label: "Commute"
    group_label: "Commute Time"
    description: "Number of workers with a commute between 30 and 34 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 30 and 34 minutes. "
  }

  measure: commute_35_44_mins {
    label: "35-44 min"
    type: sum
    sql: ${commute_35_44_mins_dim} ;;
    view_label: "Commute"
    group_label: "Commute Time"
    description: "Number of workers with a commute between 35 and 44 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 35 and 44 minutes. "
  }

  measure: commute_45_59_mins {
    label: "45-59 min"
    type: sum
    sql: ${commute_45_59_mins_dim} ;;
    view_label: "Commute"
    group_label: "Commute Time"
    description: "Number of workers with a commute between 45 and 59 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 45 and 59 minutes. "
  }

#   measure: commute_5_9_mins {
#     label: " 5-9 min"
#     type: sum
#     sql: ${commute_5_9_mins_dim} ;;
#     view_label: "Commute"
#     group_label: "Commute Time"
#     description: "Number of workers with a commute between 5 and 9 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 5 and 9 minutes."
#   } # Not present on all geo table types

#   measure: commute_60_89_mins {
#     label: "60-89 min"
#     type: sum
#     sql: ${commute_60_89_mins_dim} ;;
#     view_label: "Commute"
#     group_label: "Commute Time"
#     description: "Number of workers with a commute between 60 and 89 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 60 and 89 minutes ."
#   } # Not present on all geo table types

  measure: commute_60_more_mins {
    label: "60 min or more"
    type: sum
    sql: ${commute_60_more_mins_dim} ;;
    view_label: "Commute"
    group_label: "Commute Time"
    description: "Number of workers with a commute of over 60 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in over 60 minutes."
  }

  measure: commute_less_10_mins {
    label: "  Less than 10 min"
    type: sum
    sql: ${commute_less_10_mins_dim} ;;
    view_label: "Commute"
    group_label: "Commute Time"
    description: "Number of workers with less than 10 minute commute. The number of workers in a geographic area over the age of 16 who do not work from home and commute in less than 10 minutes."
  }

  measure: commuters_16_over {
    type: sum
    sql: ${commuters_16_over_dim} ;;
    view_label: "Commute"
    group_label: "Commuters"
    description: "Workers age 16 and over who do not work from home. The number of workers in a geographic area over the age of 16 who do not work from home"
  }

  measure: commuters_by_public_transportation {
    type: sum
    sql: ${commuters_by_public_transportation_dim} ;;
    view_label: "Commute"
    group_label: "Commuters"
    description: "Commuters by Public Transportation. The number of workers age 16 years and over within a geographic area who primarily traveled to work by public transportation.  This is the principal mode of travel or type of conveyance, by distance rather than time, that the worker usually used to get from home to work."
  }
}
