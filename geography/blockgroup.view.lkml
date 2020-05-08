include: "/views/*"

view: blockgroup {
  extends: [gender, housing, race, education, employment, age, commute, family]
  sql_table_name: `bigquery-public-data.census_bureau_acs.blockgroup_2017_5yr` ;;

  dimension: block_group {
    primary_key: yes
    view_label: "Geography"
    sql: ${TABLE}.geo_id;;
  }

  dimension: total_pop {
    type: number
    sql: ${TABLE}.total_pop ;;
    description: "Total Population. The total number of all people living in a given geographic area.  This is a very useful catch-all denominator when calculating rates."
  }

  dimension: county_key {
    type: string
    sql:(SUBSTR(CAST(${block_group} as STRING), 0, 5)) ;;
  }


}
