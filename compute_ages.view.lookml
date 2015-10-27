- view: compute_ages
  derived_table:
    sql: |
      select * from [fh-bigquery:freebase20140119.compute_ages]
     
  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: sub
    type: string
    sql: ${TABLE}.sub

  - dimension_group: date_of_birth
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.date_of_birth

  - dimension: age
    type: int
    sql: ${TABLE}.age

  sets:
    detail:
      - sub
      - date_of_birth_time
      - age

