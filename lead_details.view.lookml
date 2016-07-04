- view: lead_details
  sql_table_name: C2CDB.LEAD_DETAILS
  fields:

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.ID

  - dimension: account_score
    type: string
    sql: ${TABLE}.ACCOUNT_SCORE

  - dimension: account_type
    type: string
    sql: ${TABLE}.ACCOUNT_TYPE

  - dimension: annualrevenue
    type: string
    sql: ${TABLE}.ANNUALREVENUE

  - dimension: bde_name
    type: string
    sql: ${TABLE}.BDE_NAME

  - dimension: bu
    type: string
    sql: ${TABLE}.BU

  - dimension: campid
    type: string
    sql: ${TABLE}.CAMPID

  - dimension: company
    type: string
    sql: ${TABLE}.COMPANY

  - dimension: convertedaccountid
    type: string
    sql: ${TABLE}.CONVERTEDACCOUNTID

  - dimension: convertedcontactid
    type: string
    sql: ${TABLE}.CONVERTEDCONTACTID

  - dimension: convertedopportunityid
    type: string
    sql: ${TABLE}.CONVERTEDOPPORTUNITYID

  - dimension: country
    type: string
    sql: ${TABLE}.COUNTRY

  - dimension: countrycode_region
    type: string
    sql: ${TABLE}.COUNTRYCODE_REGION

  - dimension: countrycode_subregion
    type: string
    sql: ${TABLE}.COUNTRYCODE_SUBREGION

  - dimension: createdbyid
    type: string
    sql: ${TABLE}.CREATEDBYID

  - dimension: email
    type: string
    sql: ${TABLE}.EMAIL

  - dimension: hasoptedoutofemail
    type: string
    sql: ${TABLE}.HASOPTEDOUTOFEMAIL

  - dimension: init_lead_stage
    type: string
    sql: ${TABLE}.INIT_LEAD_STAGE

  - dimension: isconverted
    type: string
    sql: ${TABLE}.ISCONVERTED

  - dimension: isunreadbyowner
    type: string
    sql: ${TABLE}.ISUNREADBYOWNER

  - dimension: language_pref
    type: string
    sql: ${TABLE}.LANGUAGE_PREF

  - dimension_group: lastactivitydate
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.LASTACTIVITYDATE

  - dimension_group: lastmodifieddate
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.LASTMODIFIEDDATE

  - dimension: lead_description
    type: string
    sql: ${TABLE}.LEAD_DESCRIPTION

  - dimension: lead_industry
    type: string
    sql: ${TABLE}.LEAD_INDUSTRY

  - dimension: lead_qualification_notes
    type: string
    sql: ${TABLE}.LEAD_QUALIFICATION_NOTES

  - dimension: lead_rating
    type: string
    sql: ${TABLE}.LEAD_RATING

  - dimension: lead_score
    type: string
    sql: ${TABLE}.LEAD_SCORE

  - dimension: lead_stage
    type: string
    sql: ${TABLE}.LEAD_STAGE

  - dimension: lead_status
    type: string
    sql: ${TABLE}.LEAD_STATUS

  - dimension: lead_type
    type: string
    sql: ${TABLE}.LEAD_TYPE

  - dimension_group: leadcreateddate
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.LEADCREATEDDATE

  - dimension: leadsource
    type: string
    sql: ${TABLE}.LEADSOURCE

  - dimension: leadsource_orig
    type: string
    sql: ${TABLE}.LEADSOURCE_ORIG

  - dimension: leadsource_webform
    type: string
    sql: ${TABLE}.LEADSOURCE_WEBFORM

  - dimension: markeing_comments
    type: string
    sql: ${TABLE}.MARKEING_COMMENTS

  - dimension: marketing_bu
    type: string
    sql: ${TABLE}.MARKETING_BU

  - dimension: marketing_influenced
    type: string
    sql: ${TABLE}.MARKETING_INFLUENCED

  - dimension: marketing_language_actual
    type: string
    sql: ${TABLE}.MARKETING_LANGUAGE_ACTUAL

  - dimension: marketing_sourced_originated
    type: string
    sql: ${TABLE}.MARKETING_SOURCED_ORIGINATED

  - dimension_group: mcl
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.MCL_DATE

  - dimension_group: mel
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.MEL_DATE

  - dimension_group: mql
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.MQL_DATE

  - dimension_group: mql_date_assigned
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.MQL_DATE_ASSIGNED

  - dimension_group: mql_date_orig
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.MQL_DATE_ORIG

  - dimension: mql_flag
    type: string
    sql: ${TABLE}.MQL_FLAG

  - dimension: mql_queue
    type: string
    sql: ${TABLE}.MQL_QUEUE

  - dimension: mreferer
    type: string
    sql: ${TABLE}.MREFERER

  - dimension: name
    type: string
    sql: ${TABLE}.NAME

  - dimension: numberofemployees
    type: string
    sql: ${TABLE}.NUMBEROFEMPLOYEES

  - dimension: ownerid
    type: string
    sql: ${TABLE}.OWNERID

  - dimension: primary_mkt
    type: string
    sql: ${TABLE}.PRIMARY_MKT

  - dimension: primary_partner
    type: string
    sql: ${TABLE}.PRIMARY_PARTNER

  - dimension: products_of_interest
    type: string
    sql: ${TABLE}.PRODUCTS_OF_INTEREST

  - dimension: region
    type: string
    sql: ${TABLE}.REGION

  - dimension: sales_region
    type: string
    sql: ${TABLE}.SALES_REGION

  - dimension: state
    type: string
    sql: ${TABLE}.STATE

  - dimension: state_name
    type: string
    sql: ${TABLE}.STATE_NAME

  - dimension: sysleadage
    type: string
    sql: ${TABLE}.SYSLEADAGE

  - dimension: title
    type: string
    sql: ${TABLE}.TITLE

  - measure: count
    type: count
    drill_fields: [id, bde_name, state_name, name]

