
map_layer: congressional_districts {
  label: "116th Congressional Districts (2019)"
  url: "https://a.tiles.mapbox.com/v4/wilg-looker.116congress/{z}/{x}/{y}.mvt?access_token=pk.eyJ1Ijoid2lsZy1sb29rZXIiLCJhIjoiY2thODlhOWZzMDJuaTJ5cWY5ajFqd2dmNyJ9.fLkuVq37jY-yQtj7PsYdsw"
  format: "vector_tile_region"
  min_zoom_level: 0
  max_zoom_level: 12
  property_key: "GEOID"
  property_label_key: "NAMELSAD"
  feature_key: "original"
}

map_layer: block_group {
  format: "vector_tile_region"
  url: "https://a.tiles.mapbox.com/v4/dwmintz.4mqiv49l/{z}/{x}/{y}.mvt?access_token=pk.eyJ1IjoiZHdtaW50eiIsImEiOiJjajFoemQxejEwMHVtMzJwamw4OXprZWg0In0.qM9sl1WAxbEUMVukVGMazQ"
  feature_key: "us_block_groups_simple-c0qtbp"
  extents_json_url: "https://cdn.rawgit.com/dwmintz/census_extents2/59fa2cd8/bg_extents.json"
  min_zoom_level: 9
  max_zoom_level: 14
  property_key: "GEOID"
}


map_layer: places {
  format: "vector_tile_region"
  url: "https://api.mapbox.com/v4/wilg-looker.2uazcx7q/{z}/{x}/{y}.mvt?access_token=pk.eyJ1Ijoid2lsZy1sb29rZXIiLCJhIjoiY2thODlhOWZzMDJuaTJ5cWY5ajFqd2dmNyJ9.fLkuVq37jY-yQtj7PsYdsw"
  extents_json_url: "https://gistcdn.githack.com/thomasbanghart/986ea1cb7ca563a4d56779205cae095c/raw/a20271f4f5b827f9200b64a60bd2d1ae1501ce7a/places_extents.json"
  property_key: "GEOID"
  property_label_key: "NAMELSAD"
  feature_key: "original"
}

map_layer: school_districts {
  format: "vector_tile_region"
  url: "https://a.tiles.mapbox.com/v4/wilg-looker.2019schools/{z}/{x}/{y}.mvt?access_token=pk.eyJ1Ijoid2lsZy1sb29rZXIiLCJhIjoiY2thODlhOWZzMDJuaTJ5cWY5ajFqd2dmNyJ9.fLkuVq37jY-yQtj7PsYdsw"
  min_zoom_level: 0
  max_zoom_level: 12
  property_key: "GEOID"
  property_label_key: "NAME"
  feature_key: "original"
  extents_json_url: "https://gist.githubusercontent.com/noahamac/1fe36924e07c33f7bae7e2a6cdfd0420/raw/02fb0747d4b406f8821bfc68b330d06c308b233e/school_extents.json"
}


map_layer: cbsa_2018 {
  format: "vector_tile_region"
  url: "https://api.mapbox.com/v4/wilg-looker.68ohd17n/{z}/{x}/{y}.mvt?access_token=pk.eyJ1Ijoid2lsZy1sb29rZXIiLCJhIjoiY2thODlhOWZzMDJuaTJ5cWY5ajFqd2dmNyJ9.fLkuVq37jY-yQtj7PsYdsw"
  extents_json_url: "https://gistcdn.githack.com/thomasbanghart/db2a0bd28ad445e745e038d1b40312ee/raw/d4826c5aef28ab67d9661e916535bd4df132e196/extents_cbsa.json"
  feature_key: "cbsa_2019-9h1x3k"
  property_key: "GEOID"
  max_zoom_level: 11
}
