- view: lead_hdr
  sql_table_name: C2CDB.LEAD_HDR
  fields:

  - dimension: aging
    type: string
    sql: ${TABLE}.AGING

  - dimension: campaignid
    type: string
    sql: ${TABLE}.CAMPAIGNID

  - dimension: date_created
    type: string 
    sql: ${TABLE}.DATE_CREATED

  - dimension: lead_multiplier
    type: string
    sql: ${TABLE}.LEAD_MULTIPLIER

  - dimension: marketing_status
    type: string
    sql: ${TABLE}.MARKETING_STATUS

  - dimension: region
    type: string
    sql: ${TABLE}.REGION

  - dimension: statename
    type: string
    sql: ${TABLE}.STATENAME

  - dimension: status
    type: string
    sql: ${TABLE}.STATUS

  - dimension: sub_status
    type: string
    sql: ${TABLE}.SUB_STATUS

  - dimension: wave
    type: string
    sql: ${TABLE}.WAVE
    
  - dimension: lead_NAME
    type: string
    sql: ${TABLE}.lead_NAME


  - measure: count
    type: count
    drill_fields: [statename]

