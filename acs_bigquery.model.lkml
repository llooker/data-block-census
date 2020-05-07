connection: "bigquery-public"
include: "*.view"

explore: big_test {}

explore: acs_census {
  view_name: acs_census
  always_filter: {
    filters: [
      geography: "blockgroup",
      year:   "2017",
      period: "5yr"
    ]
  }
}
