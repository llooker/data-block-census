map_layer: congressional_districts {
  label: "116th Congressional Districts (2019)"
  url: "https://a.tiles.mapbox.com/v4/wilg-looker.116congress/{z}/{x}/{y}.mvt?access_token=pk.eyJ1Ijoid2lsZy1sb29rZXIiLCJhIjoiY2thODlhOWZzMDJuaTJ5cWY5ajFqd2dmNyJ9.fLkuVq37jY-yQtj7PsYdsw"
  format: "vector_tile_region"
  min_zoom_level: 0
  max_zoom_level: 12
  property_key: "GEOID"
  property_label_key: "NAMELSAD"
  feature_key: "original"
  extents_json_url: "https://gist.githubusercontent.com/noahamac/a852cf4934bf32cba1307b149a53d6a7/raw/6a363a6e086124fc0b63a4ed2524b2c508407c71/congress_extents.json"
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
