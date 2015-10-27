- view: gender_names
  derived_table:
    sql: |
      select * from [fh-bigquery:freebase20140119.gender_names]

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: sub
    type: string
    sql: ${TABLE}.sub

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: c
    type: int
    sql: ${TABLE}.c

  sets:
    detail:
      - sub
      - name
      - c
