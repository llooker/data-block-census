include: "/views/*"
include: "/maps/map_layers.lkml"

view: school_districts_unified {
  extends: [commute, education, housing, population, race, employment, family, gender]
  sql_table_name: `bigquery-public-data.census_bureau_acs.schooldistrictunified_2015_5yr` ;;


  dimension: unified_school_districts {
    primary_key: yes
    sql: ${TABLE}.geo_id ;;
    map_layer_name: school_districts
    view_label: "Geography"
  }

  dimension: state_key {
    sql: SUBSTR(CAST(${TABLE}.geo_id as STRING), 0, 2) ;;
    hidden: yes
  }

}
