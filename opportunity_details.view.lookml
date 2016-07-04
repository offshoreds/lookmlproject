- view: opportunity_details
  sql_table_name: C2CDB.OPPORTUNITY_DETAILS
  fields:

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.ID

  - dimension: accountid
    type: string
    sql: ${TABLE}.ACCOUNTID

  - dimension: amount
    type: number
    sql: ${TABLE}.AMOUNT

  - dimension: ar_status
    type: string
    sql: ${TABLE}.AR_STATUS

  - dimension: autorenewal
    type: string
    sql: ${TABLE}.AUTORENEWAL

  - dimension: campaignid
    type: string
    sql: ${TABLE}.CAMPAIGNID

  - dimension: campid
    type: string
    sql: ${TABLE}.CAMPID

  - dimension: competition
    type: string
    sql: ${TABLE}.COMPETITION

  - dimension: consulting
    type: number
    sql: ${TABLE}.CONSULTING

  - dimension: contractlicenseamt
    type: string
    sql: ${TABLE}.CONTRACTLICENSEAMT

  - dimension: currencyisocode
    type: string
    sql: ${TABLE}.CURRENCYISOCODE

  - dimension: edu_revenue_expected_in_curr
    type: string
    sql: ${TABLE}.EDU_REVENUE_EXPECTED_IN_CURR

  - dimension: education
    type: string
    sql: ${TABLE}.EDUCATION

  - dimension: education2
    type: number
    sql: ${TABLE}.EDUCATION2

  - dimension: forecast_categoryoverride
    type: string
    sql: ${TABLE}.FORECAST_CATEGORYOVERRIDE

  - dimension: forecastcategoryname
    type: string
    sql: ${TABLE}.FORECASTCATEGORYNAME

  - dimension: industry
    type: string
    sql: ${TABLE}.INDUSTRY

  - dimension: is_subscription_rnw
    type: string
    sql: ${TABLE}.IS_SUBSCRIPTION_RNW

  - dimension: isclosed
    type: string
    sql: ${TABLE}.ISCLOSED

  - dimension: isprivate
    type: string
    sql: ${TABLE}.ISPRIVATE

  - dimension: iswon
    type: string
    sql: ${TABLE}.ISWON

  - dimension: lead_id
    type: string
    sql: ${TABLE}.LEAD_ID

  - dimension: lead_id1
    type: string
    sql: ${TABLE}.LEAD_ID1

  - dimension: leadsource
    type: string
    sql: ${TABLE}.LEADSOURCE

  - dimension: license
    type: number
    sql: ${TABLE}.LICENSE

  - dimension: marketing_influenced
    type: string
    sql: ${TABLE}.MARKETING_INFLUENCED

  - dimension: marketing_sourced_originated
    type: string
    sql: ${TABLE}.MARKETING_SOURCED_ORIGINATED

  - dimension: name
    type: string
    sql: ${TABLE}.NAME

  - dimension: new_analyticslogo
    type: string
    sql: ${TABLE}.NEW_ANALYTICSLOGO

  - dimension: nextstep
    type: string
    sql: ${TABLE}.NEXTSTEP

  - dimension_group: opp_closedate
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.OPP_CLOSEDATE

  - dimension: opp_contact
    type: string
    sql: ${TABLE}.OPP_CONTACT

  - dimension: opp_contract
    type: string
    sql: ${TABLE}.OPP_CONTRACT

  - dimension_group: opp_createdate
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.OPP_CREATEDATE

  - dimension_group: opp_lastactivitydate
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.OPP_LASTACTIVITYDATE

  - dimension_group: opp_lastmoddate
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.OPP_LASTMODDATE

  - dimension: order_type
    type: string
    sql: ${TABLE}.ORDER_TYPE

  - dimension: ownerid
    type: string
    sql: ${TABLE}.OWNERID

  - dimension: pipeline_type
    type: string
    sql: ${TABLE}.PIPELINE_TYPE

  - dimension: probability
    type: string
    sql: ${TABLE}.PROBABILITY

  - dimension: stagename
    type: string
    sql: ${TABLE}.STAGENAME

  - dimension: totalopportunityquantity
    type: string
    sql: ${TABLE}.TOTALOPPORTUNITYQUANTITY

  - dimension: type
    type: string
    sql: ${TABLE}.TYPE

  - measure: count
    type: count
    drill_fields: [id, name, stagename, forecastcategoryname]

