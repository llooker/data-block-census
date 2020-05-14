explore: school_districts_secondary_core {
  extension: required 
  persist_for: "10000 hours"

always_filter: {
  filters: {
    field: state.state_name
    value: "Please Enter State(s) to Filter By"
  }
}
label: "Secondary School Districts"

join: state {
  sql_on: ${school_districts_secondary.state_key} = ${state.key} ;;
  relationship: many_to_one
}
 
}