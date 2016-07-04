- view: pipeline
  sql_table_name: C2CDB.PIPELINE
  fields:

  - dimension: booked_order
    type: string
    sql: ${TABLE}.BOOKED_ORDER

  - measure: booked_revenue
    type: sum
    sql: ${TABLE}.BOOKED_REVENUE
    value_format: '$#,###'

  - dimension: campaign_flg
    type: string
    sql: ${TABLE}.CAMPAIGN_FLG

  - dimension: campid
    type: string
    sql: ${TABLE}.CAMPID
    
  - measure: Marketing_Opportunity_Revenue
    type : sum
    value_format: '$#,###'
    sql: |
       case when ${TABLE}.CAMPAIGN_FLG='Y' then ${TABLE}.opty_revenue else 0 end
  
  - measure: Other_Oportunity_Revenue
    type : sum
    value_format: '$#,###'
    sql: |
       case when ${TABLE}.CAMPAIGN_FLG='N' then ${TABLE}.opty_revenue else 0 end
  
  - measure: Marketing_booked_Revenue
    type : sum
    value_format: '$#,###'
    sql: |
       case when ${TABLE}.CAMPAIGN_FLG='Y' then ${TABLE}.BOOKED_REVENUE else 0 end
    
   
  
  - measure: other_booked_Revenue
    type : sum
    sql: |
       case when ${TABLE}.CAMPAIGN_FLG='N' then ${TABLE}.BOOKED_REVENUE else 0 end
    value_format: '$#,###'

  - dimension: Opportunity_count
    type: string
    sql: ${TABLE}.OPTY_COUNT

  - measure: Opportunity_revenue
    type: sum
    sql: ${TABLE}.OPTY_REVENUE
    value_format: '$#,###'

  - dimension: quarter
    type: string
    sql: ${TABLE}.QUARTER

  - dimension: year
    type: string
    sql: ${TABLE}.YEAR

  - measure: count
    type: count
    drill_fields: []
