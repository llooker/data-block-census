# ACS Demographic Data Block


The U.S. Census Bureau’s [American Community Survey (ACS)](https://www.census.gov/programs-surveys/acs) is an annual nationwide survey that collects and produces information on social, economic, housing, and demographic characteristics in the U.S. This Data Block is based on a [publicly available dataset hosted in Google BigQuery](https://console.cloud.google.com/marketplace/details/united-states-census-bureau/acs?id=1282ab4c-78a4-4da5-8af8-cd693fe390ab) as part of the [Google Cloud Public Datasets Program](https://cloud.google.com/public-datasets?_ga=2.233975447.-840160752.1587661252). Here we reference the most recent [5 year estimates](https://www.census.gov/programs-surveys/acs/guidance/estimates.html) for each geographic region currently available in BigQuery.

You'll find two types of view files in this Data Block: those related to geography (in the `geography` folder) and those that group fields into categories like `employment` and `population` (in the `views` folder). The Census Bureau designates  `GEOID` identifiers for each geographic region. `GEOID`s are hierarchical, allowing the `geographic` views to be joined via their respective `geo_id` fields to more granular levels.

This block includes the following premade explores. Each explore includes accompnaying map layers based on Census Bureau's `GEOID` designations:

- **ACS Census Data**
  - State
  - County
  - Census Tract
  - Block Group

- **Congressional Districts**
  - State
  - 116th Congressional Districts
- **Core-Based Statistical Areas (CBSA)**
  - State
  - CBSA
- **Places**
  - State
  - Places
- **Public Use Microdata Areas (PUMA)**
  - State
  - PUMA

- **Elementary, Secondary, and Unified School Districts (seperate explores)**
  - State
  - Elementary/Secondary/Unified School District
- **Zip Code Tabulation Areas (ZCTA)**
  - State
  - ZCTA

**Please refer to [this link](https://www.census.gov/programs-surveys/geography/guidance/geo-identifiers.html) for more detail regarding `GEOID` designations.** Additionally, you can scroll to the bottom of this document for a glossary of geographic terms.

***

### Importing ACS Data into other Projects
Views and explores from this Data Block can be brought into your other projects by using [project import](https://docs.looker.com/data-modeling/learning-lookml/importing-projects) via [extends](https://docs.looker.com/data-modeling/learning-lookml/extends) or [refinements](https://docs.looker.com/data-modeling/learning-lookml/refinements) syntax.

If using `state`, `county` or `census_tract` geographies without joining to the `block_group` level you'll need to also include the fields of interest from the `views` folder.

All other geographic regions: `school_districts_*`, `block_group`, `cbsa`, `places`, `puma`, `congressional_district` and `zcta` include fields when imported and can be joined to `state` using the `state_key` field -- no additional `view` declarations are required -- simply import and join to an explore. Refer to the example below to help you get started.


#### Project Import Example
Imagine we have a project with an `orders` explore which we join to an `address` view that just happens to have a `county_fips` field (lucky us). We're interested in learning more about the of level of education and income for the populations of a few counties and decide to incorporate this Data Block into our original project.

The original explore looks like this:

```
explore: orders {
  join: address {
    sql_on: ${orders.address_id} = ${address.id}
    relationship: many_to_one
  }
}
```

We decide to include all the geographies and metrics from this Data Block by adding these `include` headers to our model file:

```
include: "//marketplace_block_acs_census_bigquery/geography/*"
include: "//marketplace_block_acs_census_bigquery/views/*"
```

Since we're only interested in `county` level granularity (so we are not including the most granular `block_group` geography in this project) we'll need to also select the types of fields we're interested in having access to. We can add fields to the imported `county` view by creating an additional view that extends both the relevant fields and the base `county` geography layer. We'll use that view to join everything together in the existing explore.

It'll look something like this when we're done:



```
include: "//marketplace_block_acs_census_bigquery/geography/*"
include: "//marketplace_block_acs_census_bigquery/views/*"

#Since we're not importing the block_group level, we'll populate the county level with measures
view: county_education_employment {
  extends: [county, education, employment]
}

explore: orders {
  join: address {
    sql_on: ${orders.address_id} = ${address.id}
    relationship: many_to_one
  }
  #This is from the extended county view we made to populate the geography layer with measures.
  join: county_education_employment {
    sql_on: ${address.county_fips} = ${county_education_employment.county_fips}
    relationship: many_to_one
  }
  #This is the imported state view. No need to populate with measures as we'll roll-up from county
  join: state {
    sql_on: ${county_education_employment.state_key} = ${state.key}
  }
}

```


Now imagine we'd simply want Zip Code Tabulation Areas (ZCTA) granularity. Since ZCATs are terminal nodes in the [`GEOID` hierarchy](https://www2.census.gov/geo/pdfs/reference/geodiagram.pdf?#) we know that fields are already included in the imported view so we could simply have something like:

```
include: "//marketplace_block_acs_census_bigquery/geography/*"

explore: orders {
  join: address {
    sql_on: ${orders.address_id} = ${address.id}
    relationship: many_to_one
  }
  #No additional view required since this is the terminal granularity for a ZCTA GEOID designation
  join: zcta {
    sql_on: ${address.zcta} = ${zcta.zcta}
    relationship: many_to_one
  }
  #Measures from zcta view will roll-up to state level
  join: state {
    sql_on: ${zcta.state_key} = ${state.key}
    relationship: many_to_one
  }
}
```
***




### Geography Glossary
The following definitions are sourced from [Appendix A of Census 2010](https://www.census.gov/prod/cen2010/doc/sf1.pdf#page=605)

- **Census Tract**
  - Census tracts are small, relatively permanent statistical subdivisions of a county or statistically equivalent entity delineated by local participants as part of the U.S. Census Bureau’s Participant Statistical Areas Program. The U.S. Census Bureau delineated census tracts where no local participant existed or where a local or tribal government declined to participate. The primary purpose of census tracts is to provide a stable set of geographic units for the presentation of decennial census data.




- **Block Group**
  - A block group (BG) is a cluster of census blocks having the same first digit of their four-digit identifying numbers within a census tract. For example, block group 3 (BG 3) within a census tract includes all blocks numbered from 3000 to 3999. BGs generally contain between 600 and 3,000 people, with an optimum size of 1,500 people.

- **Public Use Microdata Area**
  - A public use microdata area (PUMA) is a decennial census area for which the U.S. Census Bureau provides specially selected extracts of raw data from a small sample of long-form census records that are screened to protect confidentiality. These extracts are referred to as ‘‘public use microdata sample (PUMS)’’ files. Since 1960, data users have been using these files to create their own statistical tabulations and data summaries.

- **Place**
  - Places, for the reporting of decennial census data, include census designated places, consolidated cities, and incorporated places. Each place is assigned a five-digit Federal Information Processing Standards (FIPS) code, based on the alphabetical order of the place name within each state.

- **School Districts**
  - School districts are geographic entities within which state, county, or local officials or the Department of Defense provide public educational services for the areas residents. The U.S. Census Bureau obtains the boundaries and names for school districts from state officials. Each school district is assigned a five-digit code that is unique within state. School district codes are assigned by the Department of Education and are not necessarily in alphabetical order by school district name.

- **Zip Code Tabulation Areas (ZCTA)**
  - A ZIP Code® tabulation area (ZCTA™) is a statistical geographic entity that approximates the delivery area for a U.S. Postal Service five-digit or three-digit ZIP Code. ZCTAs are aggregations of census blocks that have the same predominant ZIP Code associated with the residential mailing addresses in the U.S. Census Bureau’s Master Address File.

- **Core-Based Statistical Area (CBSA)**
  - Core Based Statistical Areas (CBSAs) consist of the county or counties or equivalent entities associated with at least one core (urbanized area or urban cluster) of at least 10,000 population, plus adjacent counties having a high degree of social and economic integration with the core as measured through commuting ties with the counties associated with the core. The general concept of a CBSA is that of a core area containing a substantial population nucleus, together with adjacent communities having a high degree of economic and social integration with that core.
