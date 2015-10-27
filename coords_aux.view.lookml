- view: coords_aux
  derived_table:
    sql: |
      select * from [fh-bigquery:freebase20140119.coords_aux]

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

  - dimension: lat
    type: string
    sql: ${TABLE}.lat

  - dimension: lng
    type: string
    sql: ${TABLE}.lng

  - dimension: concat_pred
    type: string
    sql: ${TABLE}.concat_pred

  sets:
    detail:
      - sub
      - name
      - lat
      - lng
      - concat_pred

