- view: place_of_birth_to_country
  derived_table:
    sql: |
      select * from [fh-bigquery:freebase20140119.place_of_birth_to_country]

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: country
    type: string
    sql: ${TABLE}.country

  - dimension: place
    type: string
    sql: ${TABLE}.place

  - dimension: country_name
    type: string
    sql: ${TABLE}.country_name

  - dimension: place_name
    type: string
    sql: ${TABLE}.place_name

  - dimension: iso
    type: string
    sql: ${TABLE}.iso

  sets:
    detail:
      - country
      - place
      - country_name
      - place_name
      - iso

