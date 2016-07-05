- dashboard: campaign
  title: Campaign
  layout: grid
  rows:
    - elements: [Campaign_Cost,Cost_Per_Lead,Customer_Acquisition_Cost,ROI ]
      height: 110
    - elements: [Top_5_states_By_Opportunity_Revenue,Top_5_states_By_Booked_Revenue ]
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
    font_size: medium
    
    
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
    font_size: medium
    
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
    font_size: medium
    
  - name: ROI
    type: single_value
    explore: camp_hdr
    measures: [campaign_summary.ROI]
    sorts: [campaign_summary.customer_acquisition_costs desc, campaign_summary.ROI desc]
    limit: 500
    show_single_value_title: true
    show_comparison: false
    listen:
      Year: camp_hdr.year
      Quarter:  campaign_summary.quarter
      Parent Campaign: camp_hdr.parent_campaign
      Campaign: camp_hdr.campaign
      Campaign Type: camp_hdr.Campaign_Type
    font_size: medium
    
  - name: Top_5_states_By_Opportunity_Revenue
    type: looker_bar
    explore: camp_hdr
    dimensions: [opty_hdr1.state]
    measures: [opty_hdr1.Opportunity_Revenue]
    sorts: [opty_hdr1.amount desc, opty_hdr1.state]
    limit: 5
    stacking: ''
    colors: ['#78aab9', '#a9c574', '#929292', '#9fdee0', '#1f3e5a', '#90c8ae', '#92818d',
    '#c5c6a6', '#802929', '#cee0a0', '#928fb4', '#9fc190']
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: false
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: ordinal
    y_axis_scale_mode: linear
    show_null_labels: false
    listen:
      Year: camp_hdr.year
      Quarter:  campaign_summary.quarter
      Parent Campaign: camp_hdr.parent_campaign
      Campaign: camp_hdr.campaign
      Campaign Type: camp_hdr.Campaign_Type
    font_size: medium
    
  - name: Top_5_states_By_Booked_Revenue
    type: looker_bar
    explore: camp_hdr
    dimensions: [opty_hdr1.state]
    measures: [opty_hdr1.Booked_Revenue]
    sorts: [opty_hdr1.revenue desc, opty_hdr1.state]
    limit: 5
    stacking: ''
    colors: ['#a7b978', '#a9c574', '#929292', '#9fdee0', '#1f3e5a', '#90c8ae', '#92818d',
    '#c5c6a6', '#802929', '#cee0a0', '#928fb4', '#9fc190']
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
    x_axis_scale: ordinal
    y_axis_scale_mode: linear
    show_null_labels: false
    listen:
      Year: camp_hdr.year
      Quarter:  campaign_summary.quarter
      Parent Campaign: camp_hdr.parent_campaign
      Campaign: camp_hdr.campaign
      Campaign Type: camp_hdr.Campaign_Type
    font_size: medium
    

  - name: Campaign_Details
    type: table
    explore: camp_hdr
    dimensions: [camp_hdr.Campaign__type, camp_hdr.parent__campaign, camp_hdr.Campaign_Name]
    measures: [campaign_summary.campaign_cost, campaign_summary.campaign_target, campaign_summary.Total__Leads,
      campaign_summary.Opportunities, campaign_summary.Booked_Orders, campaign_summary.opportunity_revenue,
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
    font_size: medium

