connection: "@{CONNECTION_NAME}"

include: "/views/*.view.lkml"
include: "/geography/*.view.lkml"
include: "/explores/*.explore.lkml"
include: "*.dashboard.lookml"
include: "//@{CONFIG_PROJECT_NAME}/views/*.view.lkml"
include: "//@{CONFIG_PROJECT_NAME}/geography/*.view.lkml"
include: "//@{CONFIG_PROJECT_NAME}/*.model.lkml"
include: "//@{CONFIG_PROJECT_NAME}/*.dashboard"


explore: acs_census_data {
  extends: [acs_census_data_config]
}

explore: congressional_district {
  extends: [congressional_district_config]
}

explore: school_districts_unified {
  extends: [school_districts_unified_config]
}

explore: school_districts_elementary {
  extends: [school_districts_elementary_config]
}

explore: school_districts_secondary {
  extends: [school_districts_secondary_config]
}

explore: puma {
  extends: [puma_config]
}

explore: zcta {
  extends: [zcta_config]
}

explore: places {
  extends: [places_config]
}

explore: cbsa {
  extends: [cbsa_config]
}

label: "Census Data Block"
