- view: pipeline
  sql_table_name: C2CDB.PIPELINE
  fields:

  - measure: booked_order
    label: 'Booked Orders'
    type: sum
    sql: ${TABLE}.BOOKED_ORDER

  - measure: booked_revenue
    label: 'Booked Revenue'
    type: sum
    sql: ${TABLE}.BOOKED_REVENUE
    value_format: '$0.##,, " M"'

  - dimension: campaign_flg
    hidden: true
    type: string
    sql: ${TABLE}.CAMPAIGN_FLG

  - dimension: campid
    hidden: true
    type: string
    sql: ${TABLE}.CAMPID
    
  - measure: Marketing_Opportunity_Revenue
    label: 'Marketing Opportunity Revenue'
    type : sum
    value_format: '$0.##,, " M"'
    sql: OPTY_REVENUE
    filters:
      campaign_flg: 'Y'
    
  - measure: Other_Oportunity_Revenue
    label: 'Other Oportunity Revenue'
    type : sum
    value_format: '$0.##,, " M"'
    sql: OPTY_REVENUE
    filters:
      campaign_flg: 'N'
  
  - measure: Marketing_booked_Revenue
    label: 'Marketing Booked Revenue'
    type : sum
    value_format: '$0.##,, " M"'
    sql: ${booked_revenue}
    filters:
      campaign_flg: 'Y'
    
  
  - measure: other_booked_Revenue
    label: 'Other Booked Revenue'
    type : sum
    sql: ${booked_revenue}
    filters:
      campaign_flg: 'N'
    value_format: '$0.##,, " M"'

  - dimension: Opportunity_count
    label: 'Opportunity Count'
    type: string
    sql: ${TABLE}.OPTY_COUNT

  - measure: Opportunity_revenue
    label: 'Opportunity Revenue'
    type: sum
    sql: ${TABLE}.OPTY_REVENUE
    value_format: '$0.##,, " M"'

  - dimension: quarter
    label: 'Quarter'
    type: string
    sql: ${TABLE}.QUARTER

  - dimension: year
    label: 'Year'
    type: string
    sql: ${TABLE}.YEAR

  - measure: count
    hidden: true
    type: count
    drill_fields: []
