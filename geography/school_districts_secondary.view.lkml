include: "/views/*"
view: school_districts_secondary {
  extends: [commute, education, housing, population, race, employment, family, gender]
  sql_table_name: `bigquery-public-data.census_bureau_acs.schooldistrictsecondary_2015_5yr` ;;



}
