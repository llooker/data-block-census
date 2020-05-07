view: family {
  extension: required

  dimension: two_parent_families_with_young_children {
    type: number
    sql: ${TABLE}.two_parent_families_with_young_children ;;
    description: "Two-parent families with young children (under 6 years of age)"
  }

  dimension: two_parents_father_in_labor_force_families_with_young_children {
    type: number
    sql: ${TABLE}.two_parents_father_in_labor_force_families_with_young_children ;;
    description: "Two-parent families, father only in labor force with young children (under 6 years of age)"
  }

  dimension: two_parents_in_labor_force_families_with_young_children {
    type: number
    sql: ${TABLE}.two_parents_in_labor_force_families_with_young_children ;;
    description: "Two-parent families, both parents in labor force with young children (under 6 years of age)"
  }

  dimension: two_parents_mother_in_labor_force_families_with_young_children {
    type: number
    sql: ${TABLE}.two_parents_mother_in_labor_force_families_with_young_children ;;
    description: "Two-parent families, mother only in labor force with young children (under 6 years of age)"
  }

  dimension: two_parents_not_in_labor_force_families_with_young_children {
    type: number
    sql: ${TABLE}.two_parents_not_in_labor_force_families_with_young_children ;;
    description: "Two-parent families, neither parent in labor force with young children (under 6 years of age)"
  }

  dimension: married_households {
    type: number
    sql: ${TABLE}.married_households ;;
    description: "Married households. People in formal marriages, as well as people in common-law marriages, are included. Does not include same-sex marriages."
  }

  dimension: one_parent_families_with_young_children {
    type: number
    sql: ${TABLE}.one_parent_families_with_young_children ;;
    description: "One-parent families with young children (under 6 years of age)"
  }

  dimension: families_with_young_children {
    type: number
    sql: ${TABLE}.families_with_young_children ;;
    description: "Families with young children (under 6 years of age)"
  }

  dimension: family_households {
    type: number
    sql: ${TABLE}.family_households ;;
    description: "Family Households. A family consists of a householder and one or more other people living in the same household who are related to the householder by birth, marriage, or adoption. All people in a household who are related to the householder are regarded as members of his or her family. A family household may contain people not related to the householder, but those people are not included as part of the family of the householder in tabulations. Thus, the number of family households is equal to the number of families, but family households may include more members than do families. A household can contain only one family for purposes of tabulations. Not all households contain families since a household may be comprised of a group of unrelated people or of one person living alone -- these are called nonfamily households. Families are classified by type as either a 'married couple family' or 'other family' according to the sex of the householder and the presence of relatives. The data on family type are based ..."
  }

  dimension: nonfamily_households {
    type: number
    sql: ${TABLE}.nonfamily_households ;;
    description: "Nonfamily Households. A householder living alone or with nonrelatives only. Unmarried couples households, whether opposite-sex or same-sex, with no relatives of the householder present are tabulated in nonfamily households."
  }

  dimension: father_in_labor_force_one_parent_families_with_young_children {
    type: number
    sql: ${TABLE}.father_in_labor_force_one_parent_families_with_young_children ;;
    description: "One-parent families, father in labor force, with young children (under 6 years of age)"
  }

  dimension: father_one_parent_families_with_young_children {
    type: number
    sql: ${TABLE}.father_one_parent_families_with_young_children ;;
    description: "One-parent families, father, with young children (under 6 years of age)"
  }
}
