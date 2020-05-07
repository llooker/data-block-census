view: employment {
  extension: required

  dimension: median_income {
    type: number
    sql: ${TABLE}.median_income ;;
  }

  dimension: not_in_labor_force {
    type: number
    sql: ${TABLE}.not_in_labor_force ;;
  }

  dimension: pop_in_labor_force {
    type: number
    sql: ${TABLE}.pop_in_labor_force ;;
  }

  dimension: unemployed_pop {
    type: number
    sql: ${TABLE}.unemployed_pop ;;
  }

  dimension: employed_pop {
    type: number
    sql: ${TABLE}.employed_pop ;;
  }

  dimension: income_100000_124999 {
    type: number
    sql: ${TABLE}.income_100000_124999 ;;
  }

  dimension: income_10000_14999 {
    type: number
    sql: ${TABLE}.income_10000_14999 ;;
  }

  dimension: income_125000_149999 {
    type: number
    sql: ${TABLE}.income_125000_149999 ;;
  }

  dimension: income_150000_199999 {
    type: number
    sql: ${TABLE}.income_150000_199999 ;;
  }

  dimension: income_15000_19999 {
    type: number
    sql: ${TABLE}.income_15000_19999 ;;
  }

  dimension: income_200000_or_more {
    type: number
    sql: ${TABLE}.income_200000_or_more ;;
  }

  dimension: income_20000_24999 {
    type: number
    sql: ${TABLE}.income_20000_24999 ;;
  }

  dimension: income_25000_29999 {
    type: number
    sql: ${TABLE}.income_25000_29999 ;;
  }

  dimension: income_30000_34999 {
    type: number
    sql: ${TABLE}.income_30000_34999 ;;
  }

  dimension: income_35000_39999 {
    type: number
    sql: ${TABLE}.income_35000_39999 ;;
  }

  dimension: income_40000_44999 {
    type: number
    sql: ${TABLE}.income_40000_44999 ;;
  }

  dimension: income_45000_49999 {
    type: number
    sql: ${TABLE}.income_45000_49999 ;;
  }

  dimension: income_50000_59999 {
    type: number
    sql: ${TABLE}.income_50000_59999 ;;
  }

  dimension: income_60000_74999 {
    type: number
    sql: ${TABLE}.income_60000_74999 ;;
  }

  dimension: income_75000_99999 {
    type: number
    sql: ${TABLE}.income_75000_99999 ;;
  }

  dimension: income_less_10000 {
    type: number
    sql: ${TABLE}.income_less_10000 ;;
  }

  dimension: income_per_capita {
    type: number
    sql: ${TABLE}.income_per_capita ;;
  }

  dimension: civilian_labor_force {
    type: number
    sql: ${TABLE}.civilian_labor_force ;;
  }

}
