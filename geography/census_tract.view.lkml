view: census_tract {
  sql_table_name: `bigquery-public-data.census_bureau_acs.censustract_2018_5yr` ;;

  dimension: census_tract {
    primary_key: yes
    sql: ${TABLE}.geo_id ;;
    view_label: "Geography"
    #map_layer_name: FEED ME
  }

  dimension: county_key {
    sql: SUBSTR(CAST(${census_tract} as STRING), 0, 5) ;;
    hidden: yes
  }

  dimension: state_key {
    sql: SUBSTR(CAST(${census_tract} as STRING), 0, 2)  ;;
    hidden: yes
  }

}

#map_layer: census_tract {
  #FEED ME
#}
