- view: state_names
  sql_table_name: C2CDB.STATE_NAMES
  fields:

  - dimension: state
    type: string
    sql: ${TABLE}.STATE

  - measure: count
    type: count
    drill_fields: []

