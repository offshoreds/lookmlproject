- view: stage_name
  sql_table_name: C2CDB.STAGE_NAME
  fields:

  - dimension: stagename
    type: string
    sql: ${TABLE}.STAGENAME

  - measure: count
    type: count
    drill_fields: [stagename]

