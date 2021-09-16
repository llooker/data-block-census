include: "/views/*"
include: "/maps/*"


view: puma {
  extends: [
    commute,
    education,
    housing,
    population,
    race,
    employment,
    family,
    gender
  ]
  sql_table_name: `bigquery-public-data.census_bureau_acs.puma_2018_5yr` ;;

  dimension: puma {
    label: "Public Use Microdata Areas 📍"
    sql: ${TABLE}.geo_id ;;
    primary_key: yes
    view_label: "Geography"
    map_layer_name: puma_2010_census
  }

  dimension: state_key {
    sql: SUBSTR(CAST(${TABLE}.geo_id as STRING), 0, 2) ;;
    hidden: yes
  }
}
