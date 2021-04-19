include: "/views/*"
include: "/geography/*"

explore: places {
  persist_for: "10000 hours"
  label: "Places"

  join: state {
    sql_on: ${places.state_key} = ${state.key} ;;
    relationship: many_to_one
  }

}
