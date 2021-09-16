include: "/views/*"

view: school_districts_secondary {
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
  sql_table_name: `bigquery-public-data.census_bureau_acs.schooldistrictsecondary_2015_5yr` ;;

  dimension: school_districts_secondary {
    label: "School Districts - Secondary 📍"
    sql: ${TABLE}.geo_id ;;
    primary_key: yes
    view_label: "Geography"
    map_layer_name: school_districts
  }

  dimension: state_key {
    sql: SUBSTR(CAST(${TABLE}.geo_id as STRING), 0, 2) ;;
    #hidden: yes
  }
}
