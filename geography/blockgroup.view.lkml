include: "/views/*"

view: blockgroup {
  extends: [gender, housing, race, education, employment, population, commute, family]
  sql_table_name: `bigquery-public-data.census_bureau_acs.blockgroup_2017_5yr` ;;

  dimension: block_group {
    primary_key: yes
    view_label: "Geography"
    sql: ${TABLE}.geo_id;;
  }


  dimension: county_key {
    type: string
    sql:(SUBSTR(CAST(${block_group} as STRING), 0, 5)) ;;
  }


}
