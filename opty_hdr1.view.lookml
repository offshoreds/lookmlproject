- view: opty_hdr1
  sql_table_name: C2CDB.OPTY_HDR1
  fields:
  
  # DIMENSIONS #
  
  - dimension: opportunity_amount
    hidden: true
    type: number
    sql: ${TABLE}.AMOUNT
  
      
  - dimension: camp_id
    type: string
    hidden: true
    sql: ${TABLE}.CAMP_ID

  - dimension: isclosed
    type: string
    hidden: true
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
    label: 'Opportunity Name'
    type: string
    sql: ${name}
  
  - dimension: opty_revenue
    type: number
    hidden: true
    sql: ${TABLE}.REVENUE
    
  - dimension: state
    label: 'State Name'
    type: string
    sql: ${TABLE}.STATE
    
    
  - dimension: State_
    type: string
    hidden: true
    sql: ${state}
    
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
    hidden: true
    label: 'Pipeline Type'
    sql: ${TABLE}.pipeline_type
    
  
  # MEASURES #
  
  - measure: Opportunity__revenue
    type: sum
    label: 'Opportunity Amount'
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
    links: 
    - label: Opportunity Details
      url: /dashboards/c2c_model::opportunity
      
   
  - measure: revenue_____
    label: 'Opportunity revenue'
    type: sum                     # opty revenue for executive dashboard
    hidden: true
    value_format:  '$#0.00,,"M"'
    sql: ${opty_revenue}
    drill_fields: details1 
    links: 
    - label: Opportunity Details
      url: /dashboards/c2c_model::opportunity
      
 
  - measure: Booked_Revenue
    type: sum
    hidden: true
    value_format: '$0.##,, " M"'
    sql: ${opty_revenue}
    links:
    - label: Order details
      url: /dashboards/c2c_model::orders
      

    
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
       
    
  - measure: Amount
    type: sum
    hidden: true
    value_format: '$0.##,, " M"'
    sql: ${opportunity_amount}
    drill_fields: []

  - measure: Opportunity_Revenue
    type: sum
    hidden: true
    value_format: '$0.##,, " M"'
    sql: ${opportunity_amount}
    links: 
    - label: Opportunity Details
      url: /dashboards/c2c_model::opportunity
      
  
  - measure: Opportunity_count
    label: 'Opportunity Count'
    type: count
    drill_fields: details2 
    
  - measure: Opportunities
    label: '# of Opportunities'
    hidden: true
    type: count
    
    
  sets: 
    details1:
     - opty_hdr1.year
     - opty_hdr1.quarter
     - camp_hdr.campaign
     - opty_hdr1.Opportunity_Name
     - opty_hdr1.state
     - opty_hdr1.pipeline_type
     - opty_hdr1.pipeline_stage
     - opty_hdr1.Opportunity__revenue
    
    details2: 
     - opty_hdr1.Opportunity_Name
     - pipeline
     - opty_hdr1.year
     - quarter
     - opty_hdr1.state
    
   