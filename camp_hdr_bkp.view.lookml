- view: camp_hdr_bkp
  sql_table_name: C2CDB.CAMP_HDR_BKP
  fields:

  - dimension: campaign
    type: string
    sql: ${TABLE}.CAMPAIGN

  - dimension: campaign_id
    type: string
    sql: ${TABLE}.CAMPAIGN_ID

  - dimension: objective
    type: string
    sql: ${TABLE}.OBJECTIVE

  - dimension: parent_campaign
    type: string
    sql: ${TABLE}.PARENT_CAMPAIGN

  - dimension: program_name
    type: string
    sql: ${TABLE}.PROGRAM_NAME

  - dimension: spend
    type: string
    sql: ${TABLE}.SPEND

  - dimension: type
    type: string
    sql: ${TABLE}.TYPE

  - dimension: year
    type: string
    sql: ${TABLE}.YEAR

  - measure: count
    type: count
    drill_fields: [program_name]

