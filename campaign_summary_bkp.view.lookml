- view: campaign_summary_bkp
  sql_table_name: C2CDB.CAMPAIGN_SUMMARY_BKP
  fields:

  - dimension: assisted_revenue
    type: string
    sql: ${TABLE}.ASSISTED_REVENUE

  - dimension: assisted_win
    type: string
    sql: ${TABLE}.ASSISTED_WIN

  - dimension: average_win
    type: string
    sql: ${TABLE}.AVERAGE_WIN

  - dimension: campaign_id
    type: string
    sql: ${TABLE}.CAMPAIGN_ID

  - dimension: closed_leads_not_connected
    type: string
    sql: ${TABLE}.CLOSED_LEADS_NOT_CONNECTED

  - dimension: closed_won_optys
    type: string
    sql: ${TABLE}.CLOSED_WON_OPTYS

  - dimension: cost_per_lead
    type: string
    sql: ${TABLE}.COST_PER_LEAD

  - dimension: customer_acquisition_costs
    type: string
    sql: ${TABLE}.CUSTOMER_ACQUISITION_COSTS

  - dimension: early_stage
    type: string
    sql: ${TABLE}.EARLY_STAGE

  - dimension: in_progress_leads
    type: string
    sql: ${TABLE}.IN_PROGRESS_LEADS

  - dimension: inquiry_to_mql
    type: string
    sql: ${TABLE}.INQUIRY_TO_MQL

  - dimension: late_stage
    type: string
    sql: ${TABLE}.LATE_STAGE

  - dimension: marketing_engagement
    type: string
    sql: ${TABLE}.MARKETING_ENGAGEMENT

  - dimension: mql_to_opty
    type: string
    sql: ${TABLE}.MQL_TO_OPTY

  - dimension: mql_to_opty_target
    type: string
    sql: ${TABLE}.MQL_TO_OPTY_TARGET

  - dimension: mql_to_sal
    type: string
    sql: ${TABLE}.MQL_TO_SAL

  - dimension: opportunities
    type: string
    sql: ${TABLE}.OPPORTUNITIES

  - dimension: opty_to_close
    type: string
    sql: ${TABLE}.OPTY_TO_CLOSE

  - dimension: opty_to_close_target
    type: string
    sql: ${TABLE}.OPTY_TO_CLOSE_TARGET

  - dimension: pending_leads
    type: string
    sql: ${TABLE}.PENDING_LEADS

  - dimension: quarter
    type: string
    sql: ${TABLE}.QUARTER

  - dimension: region
    type: string
    sql: ${TABLE}.REGION

  - dimension: rejected_leads
    type: string
    sql: ${TABLE}.REJECTED_LEADS

  - dimension: revenue
    type: string
    sql: ${TABLE}.REVENUE

  - dimension: roi
    type: string
    sql: ${TABLE}.ROI

  - dimension: sal_to_sql
    type: string
    sql: ${TABLE}.SAL_TO_SQL

  - dimension: sales_accetped_leads
    type: string
    sql: ${TABLE}.SALES_ACCETPED_LEADS

  - dimension: sales_qualified_leads
    type: string
    sql: ${TABLE}.SALES_QUALIFIED_LEADS

  - dimension: segment
    type: string
    sql: ${TABLE}.SEGMENT

  - dimension: sourced_revenue
    type: string
    sql: ${TABLE}.SOURCED_REVENUE

  - dimension: sourced_win
    type: string
    sql: ${TABLE}.SOURCED_WIN

  - dimension: sql_to_closed_optys
    type: string
    sql: ${TABLE}.SQL_TO_CLOSED_OPTYS

  - dimension: target_mql
    type: string
    sql: ${TABLE}.TARGET_MQL

  - dimension: total_inquiries
    type: string
    sql: ${TABLE}.TOTAL_INQUIRIES

  - dimension: total_qualified_leads
    type: string
    sql: ${TABLE}.TOTAL_QUALIFIED_LEADS

  - measure: count
    type: count
    drill_fields: []

