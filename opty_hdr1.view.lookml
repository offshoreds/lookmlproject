- view: opty_hdr1
  sql_table_name: C2CDB.OPTY_HDR1
  fields:
  
  - dimension: opportunity_amount
    hidden: true
    type: number
    sql: ${TABLE}.AMOUNT
  
  
  
  - measure: Amount
    type: sum
    hidden: true
    value_format: '$0.##,, " M"'
    sql: ${opportunity_amount}
    drill_fields: []

  - measure: Opportunity_Revenue
    type: sum
    value_format: '$0.##,, " M"'
    sql: ${opportunity_amount}
    drill_fields: []
    links: 
    - label: Opportunity Details
      url: /dashboards/c2c_model::opportunity
      icon_url: data:image/png;base64,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
   
    
      
  - dimension: camp_id
    type: string
    hidden: true
    sql: ${TABLE}.CAMP_ID

  - dimension: isclosed
    type: string
    label: 'Closed Opportunities'
    sql: ${TABLE}.ISCLOSED

  - dimension: iswon
    type: string
    hidden: true
    label: 'Won Opportunities'
    sql: ${TABLE}.ISWON

  - dimension: name
    type: string
    hidden: true
    sql: ${TABLE}.NAME
    
  - dimension: Opportunity_Name
    type: string
    sql: ${name}
  
  - dimension: opty_revenue
    type: number
    hidden: true
    sql: ${TABLE}.REVENUE
  
  - measure: Opportunity__revenue
    type: sum
    label: 'Opportunity revenue'
    hidden: true
    value_format: '$#,###'
    sql: ${opty_revenue}
    
      
      
  - measure: revenue__
    type: sum
    label: 'Opportunity revenue'
    value_format: '$0.##,, " M"'
    sql: ${opty_revenue}
    drill_fields: []
    links: 
    - label: Opportunity Details
      url: /dashboards/c2c_model::opportunity
      icon_url: data:image/png;base64,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
   
  - measure: revenue_____
    label: 'Opportunity revenue'
    type: sum
    hidden: true
    value_format:  '$#,###,,"M"'
    sql: ${opty_revenue}
    drill_fields: []
    links: 
    - label: Opportunity Details
      url: /dashboards/c2c_model::opportunity
      icon_url: data:image/png;base64,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
 
 

  - measure: Booked_Revenue
    type: sum
    value_format: '$0.##,, " M"'
    sql: ${opty_revenue}
    drill_fields: []
    links:
    - label: Order details
      url: /dashboards/c2c_model::orders
      icon_url: http://www-fr.nexonia.com/images/Icons/NexoniaPurchaseOrders10243x.png

    

  - dimension: row_wid
    type: string
    hidden: true
    sql: ${TABLE}.ROW_WID
    
  - dimension: year
    type: string
    label: 'Year'
    sql: ${TABLE}.year
    
  - dimension: quarter
    type: string
    label: 'Quarter'
    sql: ${TABLE}.quarter
    
  - dimension: pipeline
    type: string
    hidden: true
    sql: ${TABLE}.pipeline
    
  - dimension: pipeline_stage
    type: string
    label: 'Pipeline Stage'
    sql: ${pipeline}
    
  - dimension: pipeline_type
    type: string
    label: 'Pipeline Type'
    sql: ${TABLE}.pipeline_type
    
  - measure: Booked_Orders
    type: count_distinct
    sql: ${row_wid}
    filters: 
      iswon: '1'
       
  - measure: Closed_won
    hidden: true
    type: sum
    value_format: '$0.##,, " M"'
    sql: ${opty_revenue}
    filters: 
        pipeline: 'Closed Won'
    

  - measure: Closed_lost
    type: sum
    hidden: true
    value_format: '$0.##,, " M"'
    sql: ${opty_revenue}
    filters: 
       pipeline: 'Closed Lost'
    
  - measure: Plan
    hidden: true
    type: sum
    value_format: '$0.##,, " M"'
    sql: ${opty_revenue}
    filters: 
       pipeline: 'Plan'
      
  - measure: Create
    type: sum
    hidden: true
    value_format: '$0.##,, " M"'
    sql: ${opty_revenue}
    filters: 
       pipeline: 'Create'
      
       
  - measure: Qualify
    type: sum
    hidden: true
    value_format: '$0.##,, " M"'
    sql: ${opty_revenue}
    filters: 
       pipeline: 'Qualify'
       
      

  - dimension: state
    label: 'State Names'
    type: string
    sql: ${TABLE}.STATE
    
    
  - dimension: State_
    type: string
    hidden: true
    sql: ${state}
    

  - measure: Opportunity_count
    label: 'Opportunity Count'
    type: count
    