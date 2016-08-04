- dashboard: leads
  title: Leads
  layout: grid
  rows:
    - elements: [Total_Inquiries,Pending_Leads,Total_Qualified_Leads,Rejected_leads]
      height: 110
  
    - elements: [Top_5_Leads_By_campaign,Top_5_Leads_By_Objective]
      height: 330
    
    - elements: [Leads_By_industry,Inquiries_To_Leads_By_Year]
      height: 330
      
      
    - elements: [Lead_Details]
      height: 380
      

  filters:
  - name: Year
    title: 'Year'
    type: field_filter
    explore: camp_hdr 
    field: camp_hdr.year
    
  - name: Quarter
    title: 'Quarter'
    type: field_filter
    explore: camp_hdr 
    field: campaign_summary.quarter
    
  - name: Parent Campaign
    title: 'Parent campaign'
    type: field_filter
    explore: camp_hdr 
    field: camp_hdr.parent_campaign
    
  - name: Campaign
    title: 'Campaign'
    type: field_filter
    explore: camp_hdr 
    field: camp_hdr.campaign

  elements:
  - name: Total_Inquiries
    type: single_value
    explore: camp_hdr
    measures: [campaign_summary.total_inquiries]
    sorts: [campaign_summary.total_inquiries]
    limit: 500
    show_single_value_title: true
    value_format: '#,###'
    show_comparison: false
    listen:
      Year: camp_hdr.year
      Quarter:  campaign_summary.quarter
      Parent Campaign: camp_hdr.parent_campaign
      Campaign: camp_hdr.campaign
      
    
  
  - name: Pending_Leads
    type: single_value
    explore: camp_hdr
    measures: [campaign_summary.pending_leads]
    sorts: [campaign_summary.pending_leads desc]
    limit: 500
    show_single_value_title: true
    show_comparison: false
    listen:
      Year: camp_hdr.year
      Quarter:  campaign_summary.quarter
      Parent Campaign: camp_hdr.parent_campaign
      Campaign: camp_hdr.campaign
      
    

  - name: Total_Qualified_Leads
    type: single_value
    explore: camp_hdr
    measures: [campaign_summary.total_qualified_leads]
    sorts: [campaign_summary.total_qualified_leads desc]
    limit: 500
    show_single_value_title: true
    show_comparison: false
    listen:
      Year: camp_hdr.year
      Quarter:  campaign_summary.quarter
      Parent Campaign: camp_hdr.parent_campaign
      Campaign: camp_hdr.campaign
      
    
    
  - name: Rejected_leads
    type: single_value
    explore: camp_hdr
    measures: [campaign_summary.rejected_leads]
    sorts: [campaign_summary.rejected_leads desc]
    limit: 500
    show_single_value_title: true
    show_comparison: false
    listen:
      Year: camp_hdr.year
      Quarter:  campaign_summary.quarter
      Parent Campaign: camp_hdr.parent_campaign
      Campaign: camp_hdr.campaign
      
    
    
  - name: Top_5_Leads_By_campaign
    title: 'Top  Campaigns'
    type: looker_bar
    explore: camp_hdr
    dimensions: [camp_hdr.campaign]
    measures: [campaign_summary.Total__Leads]
    sorts: [campaign_summary.Total__Leads desc]
    limit: 5
    stacking: ''
    colors: ['#90c8ae', '#99ca3d', '#929292', '#9fdee0', '#1f3e5a', '#90c8ae', '#92818d',
      '#c5c6a6', '#82c2ca', '#cee0a0', '#928fb4', '#9fc190']
    show_value_labels: true
    label_density: 25
    hide_legend: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_labels: false
    listen:
      Year: camp_hdr.year
      Quarter:  campaign_summary.quarter
      Parent Campaign: camp_hdr.parent_campaign
      Campaign: camp_hdr.campaign
      
    
    
  - name: Top_5_Leads_By_Objective
    title: 'Campaign Objective' 
    type: looker_bar
    explore: camp_hdr
    dimensions: [camp_hdr.objective]
    measures: [campaign_summary.Total__Leads]
    sorts: [campaign_summary.Total__Leads desc]
    limit: 5
    total: true
    stacking: ''
    colors: ['#80b1d3', '#ffed6f', '#bebada', '#fb8072', '#80b1d3', '#fdb462', '#b3de69',
      '#fccde5', '#d9d9d9', '#bc80bd', '#ccebc5', '#a3a3ff']
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_labels: false
    listen:
      Year: camp_hdr.year
      Quarter:  campaign_summary.quarter
      Parent Campaign: camp_hdr.parent_campaign
      Campaign: camp_hdr.campaign
      
    
    
  

    
    
  
  - name: Lead_Details
    type: table
    explore: camp_hdr
    dimensions: [lead_hdr.lead_NAME, lead_hdr.status, lead_hdr.aging, lead_hdr.statename,
      lead_hdr.marketing_status, lead_hdr.date_created]
    filters:
      lead_hdr.aging: -NULL
      lead_hdr.marketing_status: -NULL
    sorts: [lead_hdr.status]
    limit: 500
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    table_theme: editable
    limit_displayed_rows: false
    listen:
      Year: camp_hdr.year
      Quarter:  campaign_summary.quarter
      Parent Campaign: camp_hdr.parent_campaign
      Campaign: camp_hdr.campaign
  
  
  - name: Inquiries_To_Leads_By_Year
    title: 'Inquiries To Leads Conversion'
    type: looker_column
    explore: camp_hdr
    dimensions: [camp_hdr.year, campaign_summary.quarter]
    measures: [campaign_summary.total_inquiries, campaign_summary.Total__Leads, campaign_summary.total_qualified_leads]
    sorts: [camp_hdr.year , campaign_summary.quarter ]
    limit: 500
    total: true
    stacking: ''
    colors: ['#62bad4', '#a9c574', '#929292', '#9fdee0', '#1f3e5a', '#90c8ae', '#92818d',
      '#c5c6a6', '#82c2ca', '#cee0a0', '#928fb4', '#9fc190']
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    label_rotation: 360
    show_null_labels: false
    listen:
      Year: camp_hdr.year
      Quarter:  campaign_summary.quarter
      Parent Campaign: camp_hdr.parent_campaign
      Campaign: camp_hdr.campaign
      
      
  - name: Leads_By_industry
    title: 'Leads By Industry'
    type: looker_bar
    explore: camp_hdr
    dimensions: [camp_hdr.industry]
    measures: [campaign_summary.Total__Leads]
    sorts: [camp_hdr.industry]
    limit: 500
    stacking: ''
    colors: ['#62bad4', '#a9c574', '#929292', '#9fdee0', '#1f3e5a', '#90c8ae', '#92818d',
      '#c5c6a6', '#82c2ca', '#cee0a0', '#928fb4', '#9fc190']
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_labels: false
    listen:
        Year: camp_hdr.year
        Quarter:  campaign_summary.quarter
        Parent Campaign: camp_hdr.parent_campaign
        Campaign: camp_hdr.campaign
   
       