- view: camp_hdr
  sql_table_name: C2CDB.CAMP_HDR
  fields:

  - dimension: campaign
    label: 'Campaign'
    type: string
    sql: ${TABLE}.CAMPAIGN
    

  - dimension: campaign_id
    label: 'Campaign Id'
    type: string
    sql: ${TABLE}.CAMPAIGN_ID
    
    
  - dimension: industry
    type: string
    sql: |
        case when ${program_name} = 'Alexandira Initiative'  THEN 'Radio/TV Stations'
            when ${program_name} = 'Balam Garden' then 'Automotive'
            when ${program_name} = 'Bartz Events' then 'Construction'
            when ${program_name} = 'Impressario'then 'Defense Aerospace'
            when ${program_name}= 'Knock You' then 'Music Production'
            when ${program_name} = 'Make the Goers Goners' then 'Information Technology'
             when ${program_name}= 'Midgard' then 'Transportation'
             when ${program_name} = 'Rosa' then 'Printing & Publishing'
             when ${program_name} = 'TimeKompression' then 'Retail Sales'
            else 'Steel Production'
           
        END
  
  - dimension: objective
    label: 'Campaign Objective'
    type: string
    sql: ${TABLE}.OBJECTIVE
 
  - dimension: parent_campaign
    label: 'Parent Campaign'
    type: string
    sql: ${TABLE}.PARENT_CAMPAIGN

  - dimension: program_name
    label: 'Campaign Program'
    type: string
    sql: ${TABLE}.PROGRAM_NAME
    
  - measure: Spend
    label: 'Amount Spend'
    type: sum
    value_format: '$#,###'
    sql: ${TABLE}.SPEND
    
  - dimension: Campaign_Type
    label: 'Campaign Type'
    type: string
    sql: ${TABLE}.TYPE
    
        
    
    
  - measure: Event
    label: 'RoI By Event'
    type : avg
    value_format: '0.##'
    sql: ${campaign_summary.roi}
    filters:
     Campaign_Type: 'Event'
    links: 
    - label: Campaign Details
      url: /dashboards/c2c_model::campaign?Year=&Quarter=&Parent Campaign=&Campaign=&Campaign Type=&filter_config={"Year":[{"type":"%3D","values":[{"constant":""},{}],"id":0}],"Quarter":[{"type":"%3D","values":[{"constant":""},{}],"id":1}],"Parent Campaign":[{"type":"%3D","values":[{"constant":""},{}],"id":2}],"Campaign":[{"type":"%3D","values":[{"constant":""},{}],"id":3}],"Campaign Type":[{"type":"%3D","values":[{"constant":""},{}],"id":4}]}
      

  
  - measure : Email_Blast
    label: 'RoI By Email blast'
    type : avg
    value_format: '0.##'
    sql: ${campaign_summary.roi}
    filters:
     Campaign_Type: 'Email Blast'
    links: 
    - label: Campaign Details
      url: /dashboards/c2c_model::campaign?Year=&Quarter=&Parent Campaign=&Campaign=&Campaign Type=&filter_config={"Year":[{"type":"%3D","values":[{"constant":""},{}],"id":0}],"Quarter":[{"type":"%3D","values":[{"constant":""},{}],"id":1}],"Parent Campaign":[{"type":"%3D","values":[{"constant":""},{}],"id":2}],"Campaign":[{"type":"%3D","values":[{"constant":""},{}],"id":3}],"Campaign Type":[{"type":"%3D","values":[{"constant":""},{}],"id":4}]}
      

  - measure : Promotion
    label: 'RoI By Promotion'
    type : avg
    value_format: '0.##'
    sql: ${campaign_summary.roi}
    filters:
     Campaign_Type: 'Promotion'
    links: 
    - label: Campaign Details
      url: /dashboards/c2c_model::campaign?Year=&Quarter=&Parent Campaign=&Campaign=&Campaign Type=&filter_config={"Year":[{"type":"%3D","values":[{"constant":""},{}],"id":0}],"Quarter":[{"type":"%3D","values":[{"constant":""},{}],"id":1}],"Parent Campaign":[{"type":"%3D","values":[{"constant":""},{}],"id":2}],"Campaign":[{"type":"%3D","values":[{"constant":""},{}],"id":3}],"Campaign Type":[{"type":"%3D","values":[{"constant":""},{}],"id":4}]}
      
        

  - dimension: year
    label: 'Campaign Year'
    type: string
    sql: ${TABLE}.YEAR
    

  - measure: Campaign_Count
    label: 'Campaign Count'
    type: count
    drill_fields: [camp_hdr.Campaign_Type, camp_hdr.parent_campaign, camp_hdr.campaign
                  ,campaign_summary.campaign_cost, campaign_summary.campaign_target, campaign_summary.Total__Leads,
                    campaign_summary.Opportunities, campaign_summary.Booked_Orders, 
                    campaign_summary.opty__revenue,
                    campaign_summary.booked___revenue]
    
    links: 
    - label: Campaign Details
      url: /dashboards/c2c_model::campaign?Year=&Quarter=&Parent Campaign=&Campaign=&Campaign Type=&filter_config={"Year":[{"type":"%3D","values":[{"constant":""},{}],"id":0}],"Quarter":[{"type":"%3D","values":[{"constant":""},{}],"id":1}],"Parent Campaign":[{"type":"%3D","values":[{"constant":""},{}],"id":2}],"Campaign":[{"type":"%3D","values":[{"constant":""},{}],"id":3}],"Campaign Type":[{"type":"%3D","values":[{"constant":""},{}],"id":4}]}
      
    

    

