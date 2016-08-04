- dashboard: campaign
  title: Campaign
  layout: grid
  rows:
    - elements: [Campaign_Cost,Cost_Per_Lead,Customer_Acquisition_Cost,ROI ]
      height: 110
    - elements: [Campaign_Effectiveness,Top_5_Campaigns ]
      height: 330
    - elements: [Campaign_Details ]
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
    
    
  - name: Campaign Type
    title: 'Campaign Type'
    type: field_filter
    explore: camp_hdr 
    field: camp_hdr.Campaign_Type


  elements:

  - name: Campaign_Cost
    type: single_value
    explore: camp_hdr
    measures: [campaign_summary.campaign_cost]
    sorts: [campaign_summary.campaign_cost desc]
    limit: 500
    show_single_value_title: true
    show_comparison: false
    listen:
      Year: camp_hdr.year
      Quarter:  campaign_summary.quarter
      Parent Campaign: camp_hdr.parent_campaign
      Campaign: camp_hdr.campaign
      Campaign Type: camp_hdr.Campaign_Type
    
    
    
  - name: Cost_Per_Lead
    type: single_value
    explore: camp_hdr
    measures: [campaign_summary.cost_per_lead]
    sorts: [campaign_summary.cost_per_lead desc]
    limit: 500
    show_single_value_title: true
    show_comparison: false
    listen:
      Year: camp_hdr.year
      Quarter:  campaign_summary.quarter
      Parent Campaign: camp_hdr.parent_campaign
      Campaign: camp_hdr.campaign
      Campaign Type: camp_hdr.Campaign_Type
    
    
  - name: Customer_Acquisition_Cost
    type: single_value
    explore: camp_hdr
    measures: [campaign_summary.customer_acquisition_cost]
    sorts: [campaign_summary.customer_acquisition_costs desc, campaign_summary.customer_acquisition_cost desc]
    limit: 500
    show_single_value_title: true
    show_comparison: false
    listen:
      Year: camp_hdr.year
      Quarter:  campaign_summary.quarter
      Parent Campaign: camp_hdr.parent_campaign
      Campaign: camp_hdr.campaign
      Campaign Type: camp_hdr.Campaign_Type
    
    
  - name: ROI
    title: 'RoI'
    type: single_value
    explore: camp_hdr
    measures: [campaign_summary.avg_roi]
    sorts: [campaign_summary.customer_acquisition_costs desc, campaign_summary.avg_roi desc]
    limit: 500
    show_single_value_title: true
    show_comparison: false
    single_value_title: 'ROI'
    listen:
      Year: camp_hdr.year
      Quarter:  campaign_summary.quarter
      Parent Campaign: camp_hdr.parent_campaign
      Campaign: camp_hdr.campaign
      Campaign Type: camp_hdr.Campaign_Type
    
    
  - name: Top_5_Campaigns
    title: 'Top 5 Campaigns By Opportunity Revenue'
    type: looker_bar
    explore: camp_hdr
    dimensions: [camp_hdr.campaign]
    measures: [opty_hdr1.revenue__]
    filters:
      camp_hdr.campaign: Garland Email blast 2015,Ronfaure Event 2016,Tantalus Event 2015,Tellah Redwing Blitz,Faris Cruise 2015
    sorts: [opty_hdr1.revenue__ desc]
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
    label_value_format: ''
    show_null_labels: false
    listen:
      Year: camp_hdr.year
      Quarter:  campaign_summary.quarter
      Parent Campaign: camp_hdr.parent_campaign
      Campaign Type: camp_hdr.Campaign_Type
    
    
    
 
    
 
    
    

  - name: Campaign_Details
    type: table
    explore: camp_hdr
    dimensions: [camp_hdr.Campaign_Type, camp_hdr.parent_campaign, camp_hdr.campaign]
    measures: [campaign_summary.campaign_cost, campaign_summary.campaign_target, campaign_summary.Total__Leads,
      campaign_summary.Opportunities, campaign_summary.Booked_Orders, campaign_summary.opty__revenue,
     campaign_summary.booked___revenue]
    sorts: [campaign_summary.campaign_cost desc]
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
      Campaign Type: camp_hdr.Campaign_Type
      
      
  - name: Campaign_Effectiveness
    type: looker_column
    explore: camp_hdr
    dimensions: [camp_hdr.year, campaign_summary.quarter]
    measures: [campaign_summary.total_inquiries, campaign_summary.Total__Leads, campaign_summary.opportunities_count,
      campaign_summary.Booked_Orders]
    dynamic_fields:
    - table_calculation: response_rate
      label: Response Rate
      expression: ${campaign_summary.Total__Leads}/${campaign_summary.total_inquiries}*100
      value_format: 0.##\%
    - table_calculation: lead_to_opty_conversion
      label: Lead to Opty Conversion
      expression: ${campaign_summary.opportunities_count}/${campaign_summary.Total__Leads}*100
      value_format: 0.##\%
    - table_calculation: leads_to_orders_conversion
      label: Leads to Orders Conversion
      expression: ${campaign_summary.Booked_Orders}/${campaign_summary.Total__Leads}*100
      value_format: 0.##\%
    hidden_fields: [campaign_summary.total_inquiries, campaign_summary.Total__Leads,
      campaign_summary.opportunities_count, campaign_summary.Booked_Orders]
    sorts: [camp_hdr.year , campaign_summary.quarter ]
    limit: 500
    stacking: ''
    colors: ['#62bad4', '#a9c574', '#929292', '#9fdee0', '#1f3e5a', '#90c8ae', '#92818d',
      '#c5c6a6', '#82c2ca', '#cee0a0', '#928fb4', '#9fc190']
    show_value_labels: true
    label_density: 25
    font_size: '12'
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
    label_rotation: 300
    show_null_labels: false
    listen:
      Year: camp_hdr.year
      Quarter:  campaign_summary.quarter
      Parent Campaign: camp_hdr.parent_campaign
      Campaign: camp_hdr.campaign
      Campaign Type: camp_hdr.Campaign_Type
    

