- view: people_gender
  derived_table:
    sql: |
      select * from [fh-bigquery:freebase20140119.people_gender]

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: sub
    type: string
    sql: ${TABLE}.sub

  - dimension: gender
    type: string
    sql: ${TABLE}.gender

  sets:
    detail:
      - sub
      - gender

