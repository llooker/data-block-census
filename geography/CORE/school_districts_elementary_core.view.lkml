include: "//@{CONFIG_PROJECT_NAME}/school_districts_elementary.view.lkml" 
        
        
view: school_districts_elementary {
  extends: [school_districts_elementary_config]
}

###################################################
        
include: "/views/*"

view: school_districts_elementary_core {
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
  sql_table_name: `bigquery-public-data.census_bureau_acs.schooldistrictelementary_2015_5yr` ;;

  dimension: school_districts_elementary {
    sql: ${TABLE}.geo_id ;;
    primary_key: yes
    view_label: "Geography"
  }

  dimension: state_key {
    sql: SUBSTR(CAST(${TABLE}.geo_id as STRING), 0, 2) ;;
    hidden: yes
  }
}
