- view: triples_lang_en
  derived_table:
    sql: |
      select * from [fh-bigquery:freebase20140119.triples_lang_en]

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: sub
    type: string
    sql: ${TABLE}.sub

  - dimension: pred
    type: string
    sql: ${TABLE}.pred

  - dimension: obj
    type: string
    sql: ${TABLE}.obj

  sets:
    detail:
      - sub
      - pred
      - obj

