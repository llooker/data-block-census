explore: zcta_core {
  extension: required
  persist_for: "10000 hours"
  label: "Zip Codes"

  join: state {
    sql_on: ${state.key} = ${zcta.state_key} ;;
    relationship: many_to_one
  }

}
