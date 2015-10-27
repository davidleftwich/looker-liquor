- view: people_date_of_birth
  derived_table:
    sql: |
      select * from [fh-bigquery:freebase20140119.people_date_of_birth]

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: sub
    type: string
    sql: ${TABLE}.sub

  - dimension: date_of_birth
    type: string
    sql: ${TABLE}.date_of_birth

  sets:
    detail:
      - sub
      - date_of_birth

