include: "/views/*.view"
include: "maps.lkml"

view: acs_census {
  extends: [gender, housing, race, education, employment, age, commute, family]
  sql_table_name: bigquery-public-data.census_bureau_acs.{{geography._parameter_value}}_{{year._parameter_value}}_{{period._parameter_value}} ;;

  parameter: geography {
    type: unquoted
    allowed_value: {label: "Block Group"                  value: "blockgroup"             }
    allowed_value: {label: "Core-based Statistical Area"  value: "cbsa"                   }
    allowed_value: {label: "Census Tract"                 value: "censustract"            }
    allowed_value: {label: "County"                       value: "county"                 }
    allowed_value: {label: "Place"                        value: "place"                  }
    allowed_value: {label: "Puma"                         value: "puma"                   }
    allowed_value: {label: "School District"              value: "schooldistrictunified"  }
    allowed_value: {label: "State"                        value: "state"                  }
    allowed_value: {label: "Zip Codes"                    value: "zip_codes"              }
  }

  parameter: year {
    type: unquoted
    allowed_value: {value: "2006"}
    allowed_value: {value: "2007"}
    allowed_value: {value: "2008"}
    allowed_value: {value: "2009"}
    allowed_value: {value: "2010"}
    allowed_value: {value: "2011"}
    allowed_value: {value: "2012"}
    allowed_value: {value: "2013"}
    allowed_value: {value: "2014"}
    allowed_value: {value: "2015"}
    allowed_value: {value: "2016"}
    allowed_value: {value: "2017"}
    allowed_value: {value: "2018"}
  }

  parameter: period {
    type: unquoted
    allowed_value: {label: "1 Year" value: "1yr"}
    allowed_value: {label: "5 Year" value: "5yr"}
  }

  dimension: armed_forces {
    type: number
    sql: ${TABLE}.armed_forces ;;
  }

  dimension: do_date {
    type: string
    sql: ${TABLE}.do_date ;;
  }

  dimension: geo_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.geo_id ;;
  }

  dimension: total_pop {
    type: number
    sql: ${TABLE}.total_pop ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

}
