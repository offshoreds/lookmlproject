- view: lead_hdr
  sql_table_name: looker.LEAD_HDR
  fields:

  - dimension: aging
    label: 'Lead Aging Status'
    type: string
    sql: ${TABLE}.AGING

  - dimension: campaignid
    hidden: true
    type: string
    sql: ${TABLE}.CAMPAIGNID

  - dimension: date_created
    type: string 
    label: 'Lead Created Date'
    sql: ${TABLE}.DATE_CREATED

  - dimension: lead_multiplier
    type: string
    hidden: true
    sql: ${TABLE}.LEAD_MULTIPLIER

  - dimension: marketing_status
    type: string
    label: 'Lead Marketing Status'
    sql: ${TABLE}.MARKETING_STATUS

  - dimension: region
    type: string
    hidden: true
    sql: ${TABLE}.REGION

  - dimension: statename
    type: string
    label: 'State Name'
    sql: ${TABLE}.STATENAME

  - dimension: status
    type: string
    label: 'Lead Status'
    sql: ${TABLE}.STATUS

  - dimension: sub_status
    type: string
    hidden: true
    sql: ${TABLE}.SUB_STATUS

  - dimension: wave
    type: string
    hidden: true
    sql: ${TABLE}.WAVE
    
  - dimension: lead_NAME
    type: string
    label: 'Lead Name'
    sql: ${TABLE}.lead_NAME


  - measure: count
    hidden: true
    type: count
    drill_fields: [statename]

