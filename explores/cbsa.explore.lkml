explore: cbsa_core {
  extension: required
  persist_for: "10000 hours"
  label: "Core-based Statistical Areas"

  join: state {
    sql_on: ${cbsa.state_abbreviation} = ${state.state_abbreviation} ;;
    relationship: many_to_one
  }

}
