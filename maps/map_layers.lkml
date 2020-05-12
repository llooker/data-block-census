map_layer: school_districts {
  label: "Unified School Districts (2019)"
  file: "2019_us_schooldistricts.json"
  format: topojson
  property_key: "GEOID"
  property_label_key: "NAME"
}


map_layer: congressional_districts {
  label: "116th Congressional Districts (2019)"
  file: "2019_us_cd116.json"
  format: topojson
  property_key: "GEOID"
  property_label_key: "NAMELSAD"
}
