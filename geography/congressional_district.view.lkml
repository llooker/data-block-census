include: "/views/*"

view: congressional_district {
  extends: [gender, education, employment, population, commute, family]
  sql_table_name: `bigquery-public-data.census_bureau_acs.congressionaldistrict_2018_5yr` ;;


  dimension: congressional_district {
    primary_key: yes
    sql: ${TABLE}.geo_id ;;
    view_label: "Geography"

    map_layer_name: congressional_districts
  }

  dimension: state_key {
    hidden: yes
    sql: SUBSTR(CAST(${congressional_district} as STRING),0,2)  ;;
  }

}

map_layer: congressional_districts {
  label: "116th Congressional Districts (2019)"
  file: "/2019_us_cd116.json"
  format: topojson
}
