- view: place_of_birth_names
  derived_table:
    sql: |
      select * from [fh-bigquery:freebase20140119.place_of_birth_names]

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

  sets:
    detail:
      - sub
      - name

