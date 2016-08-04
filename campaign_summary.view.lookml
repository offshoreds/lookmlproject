- view: campaign_summary
  sql_table_name: C2CDB.CAMPAIGN_SUMMARY
  fields:



  - dimension: Leads_count
    type: number
    hidden: true
    sql: ${TABLE}.Total_Leads

  - measure: Total_Leads
    type: sum
    label: 'Total Leads'
    sql: ${Leads_count}
    drill_fields: [lead_hdr.lead_NAME, lead_hdr.status, lead_hdr.aging, lead_hdr.statename,
                   lead_hdr.marketing_status, lead_hdr.date_created]
    
    links: 
    - label: Lead Details
      url: /dashboards/c2c_model::leads?Year=&Quarter=&Parent Campaign=&Campaign=&filter_config={"Year":[{"type":"%3D","values":[{"constant":""},{}],"id":0}],"Quarter":[{"type":"%3D","values":[{"constant":""},{}],"id":1}],"Parent Campaign":[{"type":"%3D","values":[{"constant":""},{}],"id":2}],"Campaign":[{"type":"%3D","values":[{"constant":""},{}],"id":3}]}
      
      
  - measure: Total__Leads
    type: sum
    hidden: true
    sql: ${Leads_count}  
    
  - measure: assisted_revenue
    type: sum
    label: 'Assisted Revenue'
    value_format: '$0.##,, " M"'
    sql: ${TABLE}.ASSISTED_REVENUE
    links: 
    - label: Campaign Details
      url: /dashboards/c2c_model::campaign?Year=&Quarter=&Parent Campaign=&Campaign=&Campaign Type=&filter_config={"Year":[{"type":"%3D","values":[{"constant":""},{}],"id":0}],"Quarter":[{"type":"%3D","values":[{"constant":""},{}],"id":1}],"Parent Campaign":[{"type":"%3D","values":[{"constant":""},{}],"id":2}],"Campaign":[{"type":"%3D","values":[{"constant":""},{}],"id":3}],"Campaign Type":[{"type":"%3D","values":[{"constant":""},{}],"id":4}]}
      
        
  - measure: assisted_win
    type: sum
    hidden: true
    sql: ${TABLE}.ASSISTED_WIN

  - measure: average_win
    type: sum
    hidden: true
    sql: ${TABLE}.AVERAGE_WIN

  - dimension: campaign_id
    type: string
    hidden: true
    sql: ${TABLE}.CAMPAIGN_ID

  - dimension: closed_leads_not_connected
    type: number
    hidden: true
    sql: ${TABLE}.CLOSED_LEADS_NOT_CONNECTED
  
  - measure: closed_leads_not_connected_count
    type: sum
    hidden: true
    sql: ${closed_leads_not_connected}

  - measure: closed_won_optys_count
    type: sum
    hidden: true
    sql: ${closed_won_optys}
  
  - dimension: closed_won_optys
    type: number
    hidden: true
    sql: ${TABLE}.CLOSED_WON_OPTYS
    
  - dimension: lead_cost
    type: number
    hidden: true
    sql: ${TABLE}.COST_PER_LEAD

  - measure: cost_per_lead
    type: avg
    drill_fields: [camp_hdr.Campaign_Type,camp_hdr.parent_campaign,
                  camp_hdr.campaign,campaign_summary.cost_per_lead]
    label: 'Cost Per Lead'
    value_format: '$#,##0.00'
    sql: ${lead_cost}
    
  - dimension: acquisition_cost
    type: number
    hidden: true
    sql: ${TABLE}.CUSTOMER_ACQUISITION_COSTS
    
  - measure: customer_acquisition_cost
    type: avg
    label: 'Customer Acquisition Cost'
    drill_fields: [camp_hdr.Campaign_Type,camp_hdr.parent_campaign,
                  camp_hdr.campaign,customer_acquisition_cost]
    value_format: '$#,##0.00'
    sql: ${acquisition_cost}

  - dimension: early_stage
    type: string
    hidden: true
    sql: ${TABLE}.EARLY_STAGE

  - dimension: in_progress_leads
    type: number
    sql: ${TABLE}.IN_PROGRESS_LEADS
    
  - measure: in_progress_leads_count
    type: sum
    label: 'In Progress Leads'
    sql: ${in_progress_leads}

  - measure: inquiry_to_mql
    type: sum
    hidden: true
    sql: ${TABLE}.INQUIRY_TO_MQL

  - measure: late_stage
    type: sum
    hidden: true
    sql: ${TABLE}.LATE_STAGE

  - dimension: marketing_engagement
    type: string
    hidden: true
    sql: ${TABLE}.MARKETING_ENGAGEMENT

  - measure: mql_to_opty
    type: sum
    hidden: true
    sql: ${TABLE}.MQL_TO_OPTY

  - measure: mql_to_opty_target
    type: sum
    hidden: true
    sql: ${TABLE}.MQL_TO_OPTY_TARGET

  - measure: mql_to_sal
    type: sum
    hidden: true
    sql: ${TABLE}.MQL_TO_SAL

  - dimension: opportunities
    type: number
    hidden: true
    sql: ${TABLE}.OPPORTUNITIES
  
  - measure: opportunities_count
    type: sum                                         # executive dashboard opty count
    label: 'Opportunities Count'
    sql: ${opportunities}
    drill_fields: [opty_hdr1.year, opty_hdr1.quarter,camp_hdr.campaign, opty_hdr1.Opportunity_Name, opty_hdr1.state,
                      opty_hdr1.pipeline_type, opty_hdr1.pipeline_stage,opty_hdr1.Opportunity__revenue]

    links: 
    - label: Opportunity Details
      url: /dashboards/c2c_model::opportunity
      
   
    
  - measure: Opportunities
    type: sum
    hidden: true
    sql: ${opportunities}
   
    

  - measure: opty_to_close
    type: sum
    hidden: true
    sql: ${TABLE}.OPTY_TO_CLOSE

  - dimension: opty_to_close_target
    type: string
    hidden: true
    sql: ${TABLE}.OPTY_TO_CLOSE_TARGET

  - measure: pending_leads
    type: sum
    drill_fields: [lead_hdr.lead_NAME,lead_hdr.date_created,lead_hdr.statename]
    label: 'Pending Leads'
    sql: ${TABLE}.PENDING_LEADS

  - dimension: quarter
    type: string
    label: 'Quarter'
    sql: ${TABLE}.QUARTER

  - dimension: region
    type: string
    hidden: true
    sql: ${TABLE}.REGION

  - measure: rejected_leads
    label: 'Rejected Leads'
    type: sum
    drill_fields: [lead_hdr.lead_NAME,lead_hdr.date_created,lead_hdr.statename]
    sql: ${TABLE}.REJECTED_LEADS
    
  - dimension: opty_revenue
    type: number
    hidden: true
    sql: ${TABLE}.REVENUE
    
  - measure: opty__revenue
    type: sum
    label: 'Opportunity Amount'
    hidden: true
    value_format: '$0.##,, " M"'  # for detail report in campin dashboard
    sql: ${opty_revenue}
    

  - measure: opportunity_revenue
    type: sum
    hidden: true
    value_format: '$0.##,, " M"'  # for executie dashboard by campaign type  report
    sql: ${opty_revenue}
    links: 
    - label: Campaign Details
      url: /dashboards/c2c_model::campaign?Year=&Quarter=&Parent Campaign=&Campaign=&Campaign Type=&filter_config={"Year":[{"type":"%3D","values":[{"constant":""},{}],"id":0}],"Quarter":[{"type":"%3D","values":[{"constant":""},{}],"id":1}],"Parent Campaign":[{"type":"%3D","values":[{"constant":""},{}],"id":2}],"Campaign":[{"type":"%3D","values":[{"constant":""},{}],"id":3}],"Campaign Type":[{"type":"%3D","values":[{"constant":""},{}],"id":4}]}
      
        
    
   
  - dimension: orders
    hidden: true
    type: number
    sql: ${TABLE}.booked_order
    
    
  - measure: booked_order
    type: sum
    hidden: true
    sql: ${orders}
    
  - measure: Booked_Orders
    type: sum
    label: 'Booked Orders'
    sql: ${orders}  
    
  - measure: campaign_cost
    type: sum
    label: 'Campaign Cost'
    drill_fields: [camp_hdr.Campaign_Type,camp_hdr.parent_campaign,
                  camp_hdr.campaign,campaign_summary.campaign_cost]
    value_format: '$0.##,, " M"'
    sql: ${TABLE}.campaign_cost
    
  - measure: campaign_target
    type: sum
    label: 'Campaign Target Amount'
    value_format: '$0.##,, " M"'
    sql: ${TABLE}.campaign_target
    
  
  - dimension: ordersbookedrevenue
    type: number
    hidden: true
    sql: ${TABLE}.booked_revenue
    
  - measure: booked_revenue
    type: sum
    value_format: '$0.##,, " M"'
    sql: ${ordersbookedrevenue}
    links:
    - label: Order details
      url: /dashboards/c2c_model::orders
      
      
  - measure: booked__revenue
    type: sum
    hidden: true
    value_format: '$#0.00,, " M"'
    sql: ${ordersbookedrevenue}
    drill_fields: [order_summary.opportunity_name, order_summary.order_date, order_summary.order_status,
                    order_summary.state, order_summary.neededby_DATE, order_summary.shipped_date,
                     order_summary.DELIVERY_DATE, order_summary.INVOICE_DATE,order_summary.Booked_Revenue]
    links:
    - label: Order details
      url: /dashboards/c2c_model::orders
      
      
  - measure: booked___revenue
    type: sum
    hidden: true
    value_format: '$0.##,, " M"'
    sql: ${ordersbookedrevenue}
    
  
  - dimension: roi
    hidden: true
    type: number
    sql: ${TABLE}.roi
   
        
  - measure: avg_roi
    label: 'ROI'
    type: avg
    drill_fields: [camp_hdr.Campaign_Type,camp_hdr.parent_campaign,
                  camp_hdr.campaign,campaign_summary.campaign_cost,avg_roi]
    value_format:  '#,##0.00'
    sql:  ${roi}
   
        
  - measure: sal_to_sql
    type: sum
    hidden: true
    sql: ${TABLE}.SAL_TO_SQL

  - measure: sales_accetped_leads
    type: sum
    hidden: true
    sql: ${TABLE}.SALES_ACCETPED_LEADS

  - measure: sales_qualified_leads
    type: sum
    hidden: true
    sql: ${TABLE}.SALES_QUALIFIED_LEADS

  - dimension: segment
    type: string
    label: 'Lead Segment'
    sql: ${TABLE}.SEGMENT

  - measure: sourced_revenue
    type: sum
    hidden: true
    value_format: '$0.##,, " M"'
    sql: ${TABLE}.SOURCED_REVENUE
    links: 
    - label: Campaign Details
      url: /dashboards/c2c_model::campaign?Year=&Quarter=&Parent Campaign=&Campaign=&Campaign Type=&filter_config={"Year":[{"type":"%3D","values":[{"constant":""},{}],"id":0}],"Quarter":[{"type":"%3D","values":[{"constant":""},{}],"id":1}],"Parent Campaign":[{"type":"%3D","values":[{"constant":""},{}],"id":2}],"Campaign":[{"type":"%3D","values":[{"constant":""},{}],"id":3}],"Campaign Type":[{"type":"%3D","values":[{"constant":""},{}],"id":4}]}
      
        
  - measure: sourced_win
    type: sum
    hidden: true
    sql: ${TABLE}.SOURCED_WIN

  - measure: sql_to_closed_optys
    type: sum
    hidden: true
    sql: ${TABLE}.SQL_TO_CLOSED_OPTYS

  - measure: target_mql
    type: sum
    hidden: true
    sql: ${TABLE}.TARGET_MQL
  
  - measure: in_progress
    type: sum
    label: 'Inprogress Leads'
    value_format: '$0.##,, " M"'
    sql: ${TABLE}.SOURCED_REVENUE+${TABLE}.ASSISTED_REVENUE


  - measure: total_inquiries
    type: sum
    drill_fields: [lead_hdr.date_created,lead_hdr.statename]
    label: 'Total Inquiries'
    value_format: '#,###'
    sql: ${TABLE}.TOTAL_INQUIRIES/500

  - measure: total_qualified_leads
    type: sum
    drill_fields: [lead_hdr.lead_NAME,lead_hdr.date_created,lead_hdr.statename]
    label: 'Total Qualified Leads'
    sql: ${TABLE}.TOTAL_QUALIFIED_LEADS
    
  - measure: Leads
    hidden: true
    type: sum
    sql: ${TABLE}.PENDING_LEADS +${TABLE}.REJECTED_LEADS+${TABLE}.IN_PROGRESS_LEADS

  - measure: count
    type: count
    hidden: true
    drill_fields: []

