view: commute {
  extension: required

  dimension: aggregate_travel_time_to_work {
    type: number
    sql: ${TABLE}.aggregate_travel_time_to_work ;;
  }

  dimension: commute_10_14_mins {
    type: number
    sql: ${TABLE}.commute_10_14_mins ;;
  }

  dimension: commute_15_19_mins {
    type: number
    sql: ${TABLE}.commute_15_19_mins ;;
  }

  dimension: commute_20_24_mins {
    type: number
    sql: ${TABLE}.commute_20_24_mins ;;
  }

  dimension: commute_25_29_mins {
    type: number
    sql: ${TABLE}.commute_25_29_mins ;;
  }

  dimension: commute_30_34_mins {
    type: number
    sql: ${TABLE}.commute_30_34_mins ;;
  }

  dimension: commute_35_39_mins {
    type: number
    sql: ${TABLE}.commute_35_39_mins ;;
  }

  dimension: commute_35_44_mins {
    type: number
    sql: ${TABLE}.commute_35_44_mins ;;
  }

  dimension: commute_40_44_mins {
    type: number
    sql: ${TABLE}.commute_40_44_mins ;;
  }

  dimension: commute_45_59_mins {
    type: number
    sql: ${TABLE}.commute_45_59_mins ;;
  }

  dimension: commute_5_9_mins {
    type: number
    sql: ${TABLE}.commute_5_9_mins ;;
  }

  dimension: commute_60_89_mins {
    type: number
    sql: ${TABLE}.commute_60_89_mins ;;
  }

  dimension: commute_60_more_mins {
    type: number
    sql: ${TABLE}.commute_60_more_mins ;;
  }

  dimension: commute_90_more_mins {
    type: number
    sql: ${TABLE}.commute_90_more_mins ;;
  }

  dimension: commute_less_10_mins {
    type: number
    sql: ${TABLE}.commute_less_10_mins ;;
  }

  dimension: commuters_16_over {
    type: number
    sql: ${TABLE}.commuters_16_over ;;
  }

  dimension: commuters_by_public_transportation {
    type: number
    sql: ${TABLE}.commuters_by_public_transportation ;;
  }

  }
