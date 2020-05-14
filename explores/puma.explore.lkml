explore: puma_core {
  extension: required 
  persist_for: "10000 hours"

always_filter: {
  filters: {
    field: state.state_name
    value: "Please Enter State(s) to Filter By"
  }
}
label: "Public Use Microdata Areas"

join: state {
  sql_on: ${puma.state_key} = ${state.key} ;;
  relationship: many_to_one
}
 
}