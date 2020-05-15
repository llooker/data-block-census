# map_layer: school_districts {
#   label: "Unified School Districts (2019)"
#   file: "2019_us_schooldistricts.json"
#   format: topojson
#   property_key: "GEOID"
#   property_label_key: "NAME"
# }


# map_layer: congressional_districts {
#   label: "116th Congressional Districts (2019)"
#   file: "2019_us_cd116.json"
#   format: topojson
#   property_key: "GEOID"
#   property_label_key: "NAMELSAD"
# }


map_layer: block_group {
  format: "vector_tile_region"
  url: "https://a.tiles.mapbox.com/v4/dwmintz.4mqiv49l/{z}/{x}/{y}.mvt?access_token=pk.eyJ1IjoiZHdtaW50eiIsImEiOiJjajFoemQxejEwMHVtMzJwamw4OXprZWg0In0.qM9sl1WAxbEUMVukVGMazQ"
  feature_key: "us_block_groups_simple-c0qtbp"
  extents_json_url: "https://cdn.rawgit.com/dwmintz/census_extents2/59fa2cd8/bg_extents.json"
  min_zoom_level: 9
  max_zoom_level: 14
  property_key: "GEOID"
}
