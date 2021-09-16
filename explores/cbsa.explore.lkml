include: "/views/*"
include: "/geography/*"

explore: cbsa {
  persist_for: "10000 hours"
  label: "Core-based Statistical Areas"

  join: state {
    sql_on: ${cbsa.state_abbreviation} = ${state.state_abbreviation} ;;
    relationship: many_to_one
  }
}
