- view: country_isos
  derived_table:
    sql: |
      select * from [fh-bigquery:freebase20140119.country_isos]

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: sub
    type: string
    sql: ${TABLE}.sub

  - dimension: iso
    type: string
    sql: ${TABLE}.iso

  sets:
    detail:
      - sub
      - iso

