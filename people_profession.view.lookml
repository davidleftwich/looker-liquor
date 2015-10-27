- view: people_profession
  derived_table:
    sql: |
      select * from [fh-bigquery:freebase20140119.people_profession]

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: sub
    type: string
    sql: ${TABLE}.sub

  - dimension: profession
    type: string
    sql: ${TABLE}.profession

  sets:
    detail:
      - sub
      - profession

