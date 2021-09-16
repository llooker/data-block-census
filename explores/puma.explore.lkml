include: "/views/*"
include: "/geography/*"

explore: puma{
  persist_for: "10000 hours"
  label: "Public Use Microdata Areas"

  join: state {
    sql_on: ${puma.state_key} = ${state.key} ;;
    relationship: many_to_one
  }

}
