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
  feature_key: "places_map-9mbguy"
  property_key: "GEOID"
  max_zoom_level: 10
}


map_layer: cbsa_2018 {
  format: "vector_tile_region"
  url: "https://api.mapbox.com/v4/wilg-looker.68ohd17n/{z}/{x}/{y}.mvt?access_token=pk.eyJ1Ijoid2lsZy1sb29rZXIiLCJhIjoiY2thODlhOWZzMDJuaTJ5cWY5ajFqd2dmNyJ9.fLkuVq37jY-yQtj7PsYdsw"
  extents_json_url: "https://gistcdn.githack.com/thomasbanghart/db2a0bd28ad445e745e038d1b40312ee/raw/d4826c5aef28ab67d9661e916535bd4df132e196/extents_cbsa.json"
  feature_key: "cbsa_2019-9h1x3k"
  property_key: "GEOID"
  max_zoom_level: 11
}
