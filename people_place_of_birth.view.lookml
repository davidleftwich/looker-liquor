- view: people_place_of_birth
  derived_table:
    sql: |
      select * from [fh-bigquery:freebase20140119.people_place_of_birth]

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: sub
    type: string
    sql: ${TABLE}.sub

  - dimension: place_of_birth
    type: string
    sql: ${TABLE}.place_of_birth

  sets:
    detail:
      - sub
      - place_of_birth

