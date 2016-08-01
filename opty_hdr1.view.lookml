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
    
  - measure: Opty_revenue
    type: sum
    label: 'Revenue'
    hidden: true
    value_format: '$0.##,, " M"'
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
      
 
 

  - measure: Booked_Revenue
    type: sum
    value_format: '$0.##,, " M"'
    sql: ${opty_revenue}
    drill_fields: []
    links:
    - label: Order details
      url: /dashboards/c2c_model::orders
      

    

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
    
  - measure: Opportunities
    label: '# of Opportunities'
    hidden: true
    type: count
    