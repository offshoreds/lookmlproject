- view: campaign_details_bkp
  sql_table_name: C2CDB.CAMPAIGN_DETAILS_BKP
  fields:

  - dimension: actualcost
    type: string
    sql: ${TABLE}.ACTUALCOST

  - dimension: budgetedcost
    type: string
    sql: ${TABLE}.BUDGETEDCOST

  - dimension_group: camp_createdate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CAMP_CREATEDATE

  - dimension: camp_status
    type: string
    sql: ${TABLE}.CAMP_STATUS

  - dimension: camp_type
    type: string
    sql: ${TABLE}.CAMP_TYPE

  - dimension: campid
    type: string
    sql: ${TABLE}.CAMPID

  - dimension: campname
    type: string
    sql: ${TABLE}.CAMPNAME

  - dimension_group: enddate
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.ENDDATE

  - dimension: expectedrevenue
    type: string
    sql: ${TABLE}.EXPECTEDREVENUE

  - dimension_group: fiscalqtr_end
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.FISCALQTR_END

  - dimension_group: fiscalqtr_start
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.FISCALQTR_START

  - dimension: fiscalweek
    type: string
    sql: ${TABLE}.FISCALWEEK

  - dimension: fiscalwk_inqtr
    type: string
    sql: ${TABLE}.FISCALWK_INQTR

  - dimension: fm
    type: string
    sql: ${TABLE}.FM

  - dimension: fq
    type: string
    sql: ${TABLE}.FQ

  - dimension: fy
    type: string
    sql: ${TABLE}.FY

  - dimension: isactive
    type: string
    sql: ${TABLE}.ISACTIVE

  - dimension: numberofcontacts
    type: string
    sql: ${TABLE}.NUMBEROFCONTACTS

  - dimension: numberofconvertedleads
    type: string
    sql: ${TABLE}.NUMBEROFCONVERTEDLEADS

  - dimension: numberofleads
    type: string
    sql: ${TABLE}.NUMBEROFLEADS

  - dimension: pcampname
    type: string
    sql: ${TABLE}.PCAMPNAME

  - dimension: region
    type: string
    sql: ${TABLE}.REGION

  - dimension_group: startdate
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.STARTDATE

  - measure: count
    type: count
    drill_fields: [pcampname, campname]

