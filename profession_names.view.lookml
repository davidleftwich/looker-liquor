- view: profession_names
  derived_table:
    sql: |
      select * from [fh-bigquery:freebase20140119.profession_names]

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

