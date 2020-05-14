explore: congressional_district_core {
  extension: required
  persist_for: "10000 hours"

always_filter: {
  filters: {
    field: state.state_name
    value: "Please Enter State(s) to Filter By"
  }
}
label: "Congressional Districts"

join: state {
  sql_on: ${congressional_district.state_key} = ${state.key} ;;
  relationship: many_to_one
}

}
