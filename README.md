# ACS Demographic Data Block


The U.S. Census Bureau’s [American Community Survey (ACS)](https://www.census.gov/programs-surveys/acs) is an annual nationwide survey that collects and produces information on social, economic, housing, and demographic characteristics in the U.S. This block is based on a [publically available dataset hosted in Google BigQuery](https://console.cloud.google.com/marketplace/details/united-states-census-bureau/acs?id=1282ab4c-78a4-4da5-8af8-cd693fe390ab) as part of the [Google Cloud Public Datasets Program](https://cloud.google.com/public-datasets?_ga=2.233975447.-840160752.1587661252).


Use [project import](https://docs.looker.com/data-modeling/learning-lookml/importing-projects) with [extends](https://docs.looker.com/data-modeling/learning-lookml/extends) or [refinements](https://docs.looker.com/data-modeling/learning-lookml/refinements) to include this data block in your other projects.
Your dialect will need to be in the \`include\` path to ensure the correct LookML files are being imported. For example, a Bigquery connection could use:

\`include: "//marketplace_acs_demographic/bigquery/*.lkml"\`


**NOTE:** Additional setup is required for **Amazon Redshift** and **Snowflake** databases:

- **Amazon Redshift** users will need to import the ACS dataset into their database [from GCS or Amazon S3](https://docs.looker.com/data-modeling/looker-blocks#accessing_datasets_on_other_databases). You can find templates for the [DDL statements here](https://github.com/llooker/datablocks-acs/blob/master/readme.md).

- **Snowflake** users can either import the ACS dataset [from Looker's GCS or S3 bucket](https://docs.looker.com/data-modeling/looker-blocks#accessing_datasets_on_other_databases) using these [DDL statements](https://github.com/llooker/datablocks-acs/blob/master/readme.md) as a template **or** follow our [docs here](https://docs.looker.com/data-modeling/looker-blocks#accessing_datasets_on_snowflake) to get access to Looker's public data warehouse.

**For users outside the US using Looker’s public dataset:** Google BigQuery and Snowflake do not support project sharing across regions. To directly access this data block from outside the U.S. region, you can either:
- Import Looker’s public data from [GCS or Amazon S3.](https://docs.looker.com/data-modeling/looker-blocks#accessing_datasets_on_other_databases)

- Create a new Google BigQuery or Snowflake connection based in the US region.
