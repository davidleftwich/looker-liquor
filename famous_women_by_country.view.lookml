- view: famous_women_by_country
  derived_table:
    sql: |
      select * from [fh-bigquery:freebase20140119.famous_women_by_country]

  fields:
  - dimension: title
    type: string
    sql: ${TABLE}.title

  - dimension: country
    type: string
    sql: ${TABLE}.country

  - dimension: country_name
    type: string
    sql: ${TABLE}.country_name

  - dimension: iso
    type: string
    sql: ${TABLE}.iso

  - dimension: count
    type: int
    sql: ${TABLE}.count

  sets:
    detail:
      - title
      - country
      - country_name
      - iso
      - count

