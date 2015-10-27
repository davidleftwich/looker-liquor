- view: triples
  derived_table:
    sql: |
      select * from [fh-bigquery:freebase20140119.triples]

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

  - dimension: text_lang
    type: string
    sql: ${TABLE}.text_lang

  sets:
    detail:
      - sub
      - pred
      - obj
      - text_lang

