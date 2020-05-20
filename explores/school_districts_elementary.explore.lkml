explore: school_districts_elementary_core {
  extension: required
  persist_for: "10000 hours"
  label: "Elementary School Districts"

  join: state {
    sql_on: ${school_districts_elementary.state_key} = ${state.key} ;;
    relationship: many_to_one
  }

}
