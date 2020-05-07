view: family {
  extension: required

  dimension: two_parent_families_with_young_children {
    type: number
    sql: ${TABLE}.two_parent_families_with_young_children ;;
  }

  dimension: two_parents_father_in_labor_force_families_with_young_children {
    type: number
    sql: ${TABLE}.two_parents_father_in_labor_force_families_with_young_children ;;
  }

  dimension: two_parents_in_labor_force_families_with_young_children {
    type: number
    sql: ${TABLE}.two_parents_in_labor_force_families_with_young_children ;;
  }

  dimension: two_parents_mother_in_labor_force_families_with_young_children {
    type: number
    sql: ${TABLE}.two_parents_mother_in_labor_force_families_with_young_children ;;
  }

  dimension: two_parents_not_in_labor_force_families_with_young_children {
    type: number
    sql: ${TABLE}.two_parents_not_in_labor_force_families_with_young_children ;;
  }

  dimension: married_households {
    type: number
    sql: ${TABLE}.married_households ;;
  }

  dimension: one_parent_families_with_young_children {
    type: number
    sql: ${TABLE}.one_parent_families_with_young_children ;;
  }
  dimension: families_with_young_children {
    type: number
    sql: ${TABLE}.families_with_young_children ;;
  }

  dimension: father_in_labor_force_one_parent_families_with_young_children {
    type: number
    sql: ${TABLE}.father_in_labor_force_one_parent_families_with_young_children ;;
  }

  dimension: father_one_parent_families_with_young_children {
    type: number
    sql: ${TABLE}.father_one_parent_families_with_young_children ;;
  }
}
