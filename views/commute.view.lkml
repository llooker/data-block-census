view: commute {
  extension: required

  dimension: aggregate_travel_time_to_work {
    type: number
    sql: ${TABLE}.aggregate_travel_time_to_work ;;
    description: "Aggregate travel time to work. The total number of minutes every worker in a geographic area over the age of 16 who did not work from home spent spent commuting to work in one day"
  }

  dimension: commute_10_14_mins {
    type: number
    sql: ${TABLE}.commute_10_14_mins ;;
    description: "Number of workers with a commute between 10 and 14 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 10 and 14 minutes. "
  }

  dimension: commute_15_19_mins {
    type: number
    sql: ${TABLE}.commute_15_19_mins ;;
    description: "Number of workers with a commute between 15 and 19 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 15 and 19 minutes. "
  }

  dimension: commute_20_24_mins {
    type: number
    sql: ${TABLE}.commute_20_24_mins ;;
    description: "Number of workers with a commute between 20 and 24 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 20 and 24 minutes."
  }

  dimension: commute_25_29_mins {
    type: number
    sql: ${TABLE}.commute_25_29_mins ;;
    description: "Number of workers with a commute between 25 and 29 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 25 and 29 minutes. "
  }

  dimension: commute_30_34_mins {
    type: number
    sql: ${TABLE}.commute_30_34_mins ;;
    description: "Number of workers with a commute between 30 and 34 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 30 and 34 minutes. "
  }

  dimension: commute_35_39_mins {
    type: number
    sql: ${TABLE}.commute_35_39_mins ;;
    description: "Number of workers with a commute between 35 and 39 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 35 and 39 minutes. "
  }

  dimension: commute_35_44_mins {
    type: number
    sql: ${TABLE}.commute_35_44_mins ;;
    description: "Number of workers with a commute between 35 and 44 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 35 and 44 minutes. "
  }

  dimension: commute_40_44_mins {
    type: number
    sql: ${TABLE}.commute_40_44_mins ;;
    description: "Number of workers with a commute between 40 and 44 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 40 and 44 minutes. "
  }

  dimension: commute_45_59_mins {
    type: number
    sql: ${TABLE}.commute_45_59_mins ;;
    description: "Number of workers with a commute between 45 and 59 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 45 and 59 minutes. "
  }

  dimension: commute_5_9_mins {
    type: number
    sql: ${TABLE}.commute_5_9_mins ;;
    description: "Number of workers with a commute between 5 and 9 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 5 and 9 minutes."
  }

  dimension: commute_60_89_mins {
    type: number
    sql: ${TABLE}.commute_60_89_mins ;;
    description: "Number of workers with a commute between 60 and 89 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 60 and 89 minutes ."
  }

  dimension: commute_60_more_mins {
    type: number
    sql: ${TABLE}.commute_60_more_mins ;;
    description: "Number of workers with a commute of over 60 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in over 60 minutes."
  }

  dimension: commute_90_more_mins {
    type: number
    sql: ${TABLE}.commute_90_more_mins ;;
    description: "Number of workers with a commute of more than 90 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute more than 90 minutes."
  }

  dimension: commute_less_10_mins {
    type: number
    sql: ${TABLE}.commute_less_10_mins ;;
    description: "Number of workers with less than 10 minute commute. The number of workers in a geographic area over the age of 16 who do not work from home and commute in less than 10 minutes."
  }

  dimension: commuters_16_over {
    type: number
    sql: ${TABLE}.commuters_16_over ;;
    description: "Workers age 16 and over who do not work from home. The number of workers in a geographic area over the age of 16 who do not work from home"
  }

  dimension: commuters_by_public_transportation {
    type: number
    sql: ${TABLE}.commuters_by_public_transportation ;;
    description: "Commuters by Public Transportation. The number of workers age 16 years and over within a geographic area who primarily traveled to work by public transportation.  This is the principal mode of travel or type of conveyance, by distance rather than time, that the worker usually used to get from home to work."
  }

  }
