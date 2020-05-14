explore: zcta_core {
  extension: required 
  persist_for: "10000 hours"

always_filter: {
  filters: {
    field: state.state_name
    value: "Please Enter State(s) to Filter By"
  }
}
label: "Zip Codes"

join: state {
  sql_on: ${state.key} = ${zcta.state_key} ;;
  relationship: many_to_one
}
 
}