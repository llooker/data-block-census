view: employment {
  extension: required

  dimension: median_income_dim {
    type: number
    sql: ${TABLE}.median_income ;;
    description: "Median Household Income in the past 12 Months. Within a geographic area, the median income received by every household on a regular basis before payments for personal income taxes, social security, union dues, medicare deductions, etc.  It includes income received from wages, salary, commissions, bonuses, and tips; self-employment income from own nonfarm or farm businesses, including proprietorships and partnerships; interest, dividends, net rental income, royalty income, or income from estates and trusts; Social Security or Railroad Retirement income; Supplemental Security Income (SSI); any cash public assistance or welfare payments from the state or local welfare office; retirement, survivor, or disability benefits; and any other sources of income received regularly such as Veterans' (VA) payments, unemployment and/or worker's compensation, child support, and alimony."
    hidden: yes
  }

  dimension: not_in_labor_force_dim {
    type: number
    sql: ${TABLE}.not_in_labor_force ;;
    description: "Population Not in Labor Force. The number of people in each geography who are 16 years old and over who are not classified as members of the labor force. This category consists mainly of students, homemakers, retired workers, seasonal workers interviewed in an off season who were not looking for work, institutionalized people, and people doing only incidental unpaid family work (less than 15 hours during the reference week)."
    hidden: yes
  }

  dimension: pop_in_labor_force_dim {
    type: number
    sql: ${TABLE}.pop_in_labor_force ;;
    description: "Population in Labor Force. The number of people in each geography who are either in the civilian labor force or are members of the U.S. Armed Forces (people on active duty with the United States Army, Air Force, Navy, Marine Corps, or Coast Guard)."
    hidden: yes
  }

  dimension: unemployed_pop_dim {
    type: number
    sql: ${TABLE}.unemployed_pop ;;
    description: "Unemployed population"
    hidden: yes
  }

  dimension: employed_pop_dim {
    type: number
    sql: ${TABLE}.employed_pop ;;
    description: "Employed Population. The number of civilians 16 years old and over in each geography who either (1) were 'at work,' that is, those who did any work at all during the reference week as paid employees, worked in their own business or profession, worked on their own farm, or worked 15 hours or more as unpaid workers on a family farm or in a family business; or (2) were 'with a job but not at work,' that is, those who did not work during the reference week but had jobs or businesses from which they were temporarily absent due to illness, bad weather, industrial dispute, vacation, or other personal reasons. Excluded from the employed are people whose only activity consisted of work around the house or unpaid volunteer work for religious, charitable, and similar organizations; also excluded are all institutionalized people and people on active duty in the United States Armed Forces."
    hidden: yes
  }

  dimension: income_100000_124999_dim {
    type: number
    sql: ${TABLE}.income_100000_124999 ;;
    description: "Households with income of $100,000 to $124,999. The number of households in a geographic area whose annual income was between $100,000 and $124,999."
    hidden: yes
  }

  dimension: income_10000_14999_dim {
    type: number
    sql: ${TABLE}.income_10000_14999 ;;
    description: "Households with income of $10,000 to $14,999. The number of households in a geographic area whose annual income was between $10,000 and $14,999."
    hidden: yes
  }

  dimension: income_125000_149999_dim {
    type: number
    sql: ${TABLE}.income_125000_149999 ;;
    description: "Households with income of $125,000 to $149,999. The number of households in a geographic area whose annual income was between $125,000 and $149,999."
    hidden: yes
  }

  dimension: income_150000_199999_dim {
    type: number
    sql: ${TABLE}.income_150000_199999 ;;
    description: "Households with income of $150,000 to $199,999. The number of households in a geographic area whose annual income was between $150,000 and $1999,999."
    hidden: yes
  }

  dimension: income_15000_19999_dim {
    type: number
    sql: ${TABLE}.income_15000_19999 ;;
    description: "Households with income of $15,000 to $19,999. The number of households in a geographic area whose annual income was between $15,000 and $19,999."
    hidden: yes
  }

  dimension: income_200000_or_more_dim {
    type: number
    sql: ${TABLE}.income_200000_or_more ;;
    description: "Households with income of $200,000 Or More. The number of households in a geographic area whose annual income was more than $200,000."
    hidden: yes
  }

  dimension: income_20000_24999_dim {
    type: number
    sql: ${TABLE}.income_20000_24999 ;;
    description: "Households with income of $20,000 to $24,999. The number of households in a geographic area whose annual income was between $20,000 and $24,999."
    hidden: yes
  }

  dimension: income_25000_29999_dim {
    type: number
    sql: ${TABLE}.income_25000_29999 ;;
    description: "Households with income of $25,000 to $29,999. The number of households in a geographic area whose annual income was between $20,000 and $24,999."
    hidden: yes
  }

  dimension: income_30000_34999_dim {
    type: number
    sql: ${TABLE}.income_30000_34999 ;;
    description: "Households with income of $30,000 to $34,999. The number of households in a geographic area whose annual income was between $30,000 and $34,999."
    hidden: yes
  }

  dimension: income_35000_39999_dim {
    type: number
    sql: ${TABLE}.income_35000_39999 ;;
    description: "Households with income of $35,000 to $39,999. The number of households in a geographic area whose annual income was between $35,000 and $39,999."
    hidden: yes
  }

  dimension: income_40000_44999_dim {
    type: number
    sql: ${TABLE}.income_40000_44999 ;;
    description: "Households with income of $40,000 to $44,999. The number of households in a geographic area whose annual income was between $40,000 and $44,999."
    hidden: yes
  }

  dimension: income_45000_49999_dim {
    type: number
    sql: ${TABLE}.income_45000_49999 ;;
    description: "Households with income of $45,000 to $49,999. The number of households in a geographic area whose annual income was between $45,000 and $49,999."
    hidden: yes
  }

  dimension: income_50000_59999_dim {
    type: number
    sql: ${TABLE}.income_50000_59999 ;;
    description: "Households with income of $50,000 to $59,999. The number of households in a geographic area whose annual income was between $50,000 and $59,999."
    hidden: yes
  }

  dimension: income_60000_74999_dim {
    type: number
    sql: ${TABLE}.income_60000_74999 ;;
    description: "Households with income of $60,000 to $74,999. The number of households in a geographic area whose annual income was between $60,000 and $74,999."
    hidden: yes
  }

  dimension: income_75000_99999_dim {
    type: number
    sql: ${TABLE}.income_75000_99999 ;;
    description: "Households with income of $75,000 to $99,999. The number of households in a geographic area whose annual income was between $75,000 and $99,999."
    hidden: yes
  }

  dimension: income_less_10000_dim {
    type: number
    sql: ${TABLE}.income_less_10000 ;;
    description: "Households with income less than $10,000. The number of households in a geographic area whose annual income was less than $10,000."
    hidden: yes
  }



  dimension: civilian_labor_force_dim {
    type: number
    sql: ${TABLE}.civilian_labor_force ;;
    description: "Population in Civilian Labor Force. The number of civilians 16 years and over in each geography who can be classified as either 'employed' or 'unemployed' below."
    hidden: yes
  }

  measure: median_income {
    type: sum
    sql: ${median_income_dim} ;;
    view_label: "Employment"
    description: "Median Household Income in the past 12 Months. Within a geographic area, the median income received by every household on a regular basis before payments for personal income taxes, social security, union dues, medicare deductions, etc.  It includes income received from wages, salary, commissions, bonuses, and tips; self-employment income from own nonfarm or farm businesses, including proprietorships and partnerships; interest, dividends, net rental income, royalty income, or income from estates and trusts; Social Security or Railroad Retirement income; Supplemental Security Income (SSI); any cash public assistance or welfare payments from the state or local welfare office; retirement, survivor, or disability benefits; and any other sources of income received regularly such as Veterans' (VA) payments, unemployment and/or worker's compensation, child support, and alimony."
  }

  measure: not_in_labor_force {
    type: sum
    sql: ${not_in_labor_force_dim} ;;
    view_label: "Employment"
    group_label: "Employment"
    description: "Population Not in Labor Force. The number of people in each geography who are 16 years old and over who are not classified as members of the labor force. This category consists mainly of students, homemakers, retired workers, seasonal workers interviewed in an off season who were not looking for work, institutionalized people, and people doing only incidental unpaid family work (less than 15 hours during the reference week)."
  }

  measure: pop_in_labor_force {
    type: sum
    sql: ${pop_in_labor_force_dim} ;;
    view_label: "Employment"
    group_label: "Employment"
    description: "Population in Labor Force. The number of people in each geography who are either in the civilian labor force or are members of the U.S. Armed Forces (people on active duty with the United States Army, Air Force, Navy, Marine Corps, or Coast Guard)."
  }

  measure: unemployed_pop {
    type: sum
    sql: ${unemployed_pop_dim} ;;
    view_label: "Employment"
    group_label: "Employment"
    description: "Unemployed population"
  }

  measure: employed_pop {
    type: sum
    sql: ${employed_pop_dim} ;;
    view_label: "Employment"
    group_label: "Employment"
    description: "Employed Population. The number of civilians 16 years old and over in each geography who either (1) were 'at work,' that is, those who did any work at all during the reference week as paid employees, worked in their own business or profession, worked on their own farm, or worked 15 hours or more as unpaid workers on a family farm or in a family business; or (2) were 'with a job but not at work,' that is, those who did not work during the reference week but had jobs or businesses from which they were temporarily absent due to illness, bad weather, industrial dispute, vacation, or other personal reasons. Excluded from the employed are people whose only activity consisted of work around the house or unpaid volunteer work for religious, charitable, and similar organizations; also excluded are all institutionalized people and people on active duty in the United States Armed Forces."
  }

  measure: income_100000_124999 {
    label: "$100,000 - $124,999"
    type: sum
    sql: ${income_100000_124999_dim} ;;
    view_label: "Employment"
    group_label: "Income Range"
    description: "Households with income of $100,000 to $124,999. The number of households in a geographic area whose annual income was between $100,000 and $124,999."
  }

  measure: income_10000_14999 {
    label: "$10,000 - $14,999"
    type: sum
    sql: ${income_10000_14999_dim} ;;
    view_label: "Employment"
    group_label: "Income Range"
    description: "Households with income of $10,000 to $14,999. The number of households in a geographic area whose annual income was between $10,000 and $14,999."
  }

  measure: income_125000_149999 {
    label: "$125,000 - $149,999"
    type: sum
    sql: ${income_125000_149999_dim} ;;
    view_label: "Employment"
    group_label: "Income Range"
    description: "Households with income of $125,000 to $149,999. The number of households in a geographic area whose annual income was between $125,000 and $149,999."
  }

  measure: income_150000_199999 {
    label: "$150,000 - $199,999"
    type: sum
    sql: ${income_150000_199999_dim} ;;
    view_label: "Employment"
    group_label: "Income Range"
    description: "Households with income of $150,000 to $199,999. The number of households in a geographic area whose annual income was between $150,000 and $1999,999."
  }

  measure: income_15000_19999 {
    label: "$15,000 - $19,999"
    type: sum
    sql: ${income_15000_19999_dim} ;;
    view_label: "Employment"
    group_label: "Income Range"
    description: "Households with income of $15,000 to $19,999. The number of households in a geographic area whose annual income was between $15,000 and $19,999."
  }

  measure: income_200000_or_more {
    label: "$200,000 or more"
    type: sum
    sql: ${income_200000_or_more_dim} ;;
    view_label: "Employment"
    group_label: "Income Range"
    description: "Households with income of $200,000 Or More. The number of households in a geographic area whose annual income was more than $200,000."
  }

  measure: income_20000_24999 {
    label: "$20,000 - $24,999"
    type: sum
    sql: ${income_20000_24999_dim} ;;
    view_label: "Employment"
    group_label: "Income Range"
    description: "Households with income of $20,000 to $24,999. The number of households in a geographic area whose annual income was between $20,000 and $24,999."
  }

  measure: income_25000_29999 {
    label: "$25,000 - $29,999"
    type: sum
    sql: ${income_25000_29999_dim} ;;
    view_label: "Employment"
    group_label: "Income Range"
    description: "Households with income of $25,000 to $29,999. The number of households in a geographic area whose annual income was between $20,000 and $24,999."
  }

  measure: income_30000_34999 {
    label: "$30,000 - $34,999"
    type: sum
    sql: ${income_30000_34999_dim} ;;
    view_label: "Employment"
    group_label: "Income Range"
    description: "Households with income of $30,000 to $34,999. The number of households in a geographic area whose annual income was between $30,000 and $34,999."
  }

  measure: income_35000_39999 {
    label: "$35,000 - $39,999"
    type: sum
    sql: ${income_35000_39999_dim} ;;
    view_label: "Employment"
    group_label: "Income Range"
    description: "Households with income of $35,000 to $39,999. The number of households in a geographic area whose annual income was between $35,000 and $39,999."
  }

  measure: income_40000_44999 {
    label: "$40,000 - $44,999"
    type: sum
    sql: ${income_40000_44999_dim} ;;
    view_label: "Employment"
    group_label: "Income Range"
    description: "Households with income of $40,000 to $44,999. The number of households in a geographic area whose annual income was between $40,000 and $44,999."
  }

  measure: income_45000_49999 {
    label: "$45,000 - $49,999"
    type: sum
    sql: ${income_45000_49999_dim} ;;
    view_label: "Employment"
    group_label: "Income Range"
    description: "Households with income of $45,000 to $49,999. The number of households in a geographic area whose annual income was between $45,000 and $49,999."
  }

  measure: income_50000_59999 {
    label: "$50,000 - $59,999"
    type: sum
    sql: ${income_50000_59999_dim} ;;
    view_label: "Employment"
    group_label: "Income Range"
    description: "Households with income of $50,000 to $59,999. The number of households in a geographic area whose annual income was between $50,000 and $59,999."
  }

  measure: income_60000_74999 {
    label: "$60,000 - $74,999"
    type: sum
    sql: ${income_60000_74999_dim} ;;
    view_label: "Employment"
    group_label: "Income Range"
    description: "Households with income of $60,000 to $74,999. The number of households in a geographic area whose annual income was between $60,000 and $74,999."
  }

  measure: income_75000_99999 {
    label: "$75,000 - $99,999"
    type: sum
    sql: ${income_75000_99999_dim} ;;
    view_label: "Employment"
    group_label: "Income Range"
    description: "Households with income of $75,000 to $99,999. The number of households in a geographic area whose annual income was between $75,000 and $99,999."
  }

  measure: income_less_10000 {
    label: "Less than $10,000"
    type: sum
    sql: ${income_less_10000_dim} ;;
    view_label: "Employment"
    group_label: "Income Range"
    description: "Households with income less than $10,000. The number of households in a geographic area whose annual income was less than $10,000."
  }


  measure: civilian_labor_force {
    type: sum
    sql: ${civilian_labor_force_dim} ;;
    view_label: "Employment"
    group_label: "Employment"
    description: "Population in Civilian Labor Force. The number of civilians 16 years and over in each geography who can be classified as either 'employed' or 'unemployed' below."
  }
}
