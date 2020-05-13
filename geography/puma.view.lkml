include: "/views/*"
view: puma {
  extends: [commute, education, housing, population, race, employment, family, gender]
  sql_table_name: `bigquery-public-data.census_bureau_acs.puma_2018_5yr` ;;
}
