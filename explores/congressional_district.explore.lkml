include: "/views/*"
include: "/geography/*"

explore: congressional_district {
  persist_for: "10000 hours"
  label: "Congressional Districts"

  join: state {
    sql_on: ${congressional_district.state_key} = ${state.key} ;;
    relationship: many_to_one
  }

}
