- view: count_gender_prof_birthplace_mat
  derived_table:
    sql: |
      select * from [fh-bigquery:freebase20140119.count_gender_prof_birthplace_mat]

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: c
    type: int
    sql: ${TABLE}.c

  - dimension: place_of_birth
    type: string
    sql: ${TABLE}.place_of_birth

  - dimension: place
    type: string
    sql: ${TABLE}.place

  - dimension: profession
    type: string
    sql: ${TABLE}.profession

  - dimension: gender
    type: string
    sql: ${TABLE}.gender

  - dimension: lat
    type: string
    sql: ${TABLE}.lat

  - dimension: lng
    type: string
    sql: ${TABLE}.lng

  sets:
    detail:
      - c
      - place_of_birth
      - place
      - profession
      - gender
      - lat
      - lng

