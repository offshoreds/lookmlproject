- dashboard: Executive Summary
  title: Executive Summary
  layout: grid
  

  rows:
    - elements: [Campaign_Count, Lead_Count, Opportunity_Count, Opportunity_Revenue, Booked_revenue ]
      height: 110
    - elements: [Pipeline,Booked_Revenue]
      height: 80
      padding: 10
    - elements: [Total Pipeline  ,Total Booked Revenue]
      height: 120
    - elements: [Opportunity_Revenue_,Booked_Revenue_]
      height: 330
    
    - elements: [Campaign_Performance, ROI_By_Campaign_Type]
      height: 330
    - elements: [Sourced_And_Assisted_Revenue,Top_5_Campaigns_By_Booked_Revenue]
      height: 330
   
    - elements: [MarketingGeneratedCaption]
      height: 80
    - elements: [By_Campaign_Type,By_Segment,By_Objective]
      height: 300
  
  filters:
  - name: year
    title: 'Year'
    type: field_filter
    explore: camp_hdr 
    field: camp_hdr.year
    
  - name: quarter
    title: 'Quarter'
    type: field_filter
    explore: camp_hdr 
    field: campaign_summary.quarter
    
  - name: parent campaign
    title: 'Parent campaign'
    type: field_filter
    explore: camp_hdr 
    field: camp_hdr.parent_campaign
    
  - name: campaign
    title: 'Campaign'
    type: field_filter
    explore: camp_hdr 
    field: camp_hdr.campaign
    


  elements:
  
  - name: MarketingGeneratedCaption 
    type: single_value
    explore: camp_hdr
    embed_style:
      background_color: "#7F889B"
    dynamic_fields:
    - table_calculation: calculation_1
      label: Calculation 1
      expression: 'concat("Opportunity Revenue: $",round(${opty_hdr1.Opportunity__revenue}/1000000,2),"M")'
    custom_color_enabled: true
    custom_color: '#7d7676'
    hidden_fields: [opty_hdr1.Opportunity__revenue]
    measures: [opty_hdr1.Opportunity__revenue]
    sorts: [opty_hdr1.Opportunity__revenue]
    limit: 500
    
    show_single_value_title: true
    show_comparison: false
    single_value_title: (Marketing Generated)
    note:
      text: 'Opportunity Revenue'
      state:  collapsed
      display: Above
    listen:
      year: camp_hdr.year
      quarter:  campaign_summary.quarter
      parent campaign: camp_hdr.parent_campaign
      campaign: camp_hdr.campaign
      
    
  - name: Campaign_Count
    type: single_value
    explore: camp_hdr
    measures: [camp_hdr.Campaign_Count]
    sorts: [camp_hdr.Campaign_Count]
    limit: 500
    show_single_value_title: true
    single_value_title: '# Campaigns'
    show_comparison: false
    
    listen:
      year: camp_hdr.year
      quarter:  campaign_summary.quarter
      parent campaign: camp_hdr.parent_campaign
      campaign: camp_hdr.campaign
    
    
  - name: Lead_Count
    type: single_value
    explore: camp_hdr
    measures: [campaign_summary.Total_Leads]
    sorts: [camp_hdr.Leads desc, campaign_summary.Total_Leads desc]
    limit: 500
    show_single_value_title: true
    single_value_title: '# Leads'
    show_comparison: false
    listen:
      year: camp_hdr.year
      quarter:  campaign_summary.quarter
      parent campaign: camp_hdr.parent_campaign
      campaign: camp_hdr.campaign
    
    
    
  - name: Opportunity_Count
    type: single_value
    explore: camp_hdr
    measures: [campaign_summary.opportunities_count]
    sorts: [campaign_summary.opportunities_count desc]
    limit: 500
    show_single_value_title: true
    single_value_title: '# Opportunties'
    show_comparison: false
    listen:
      year: camp_hdr.year
      quarter:  campaign_summary.quarter
      parent campaign: camp_hdr.parent_campaign
      campaign: camp_hdr.campaign
    
    
  - name: Opportunity_Revenue
    type: single_value
    explore: camp_hdr
    measures: [opty_hdr1.revenue_____]
    sorts: [opty_hdr1.revenue_____ desc]
    limit: 500
    show_single_value_title: true
    single_value_title: Opportunity Revenue
   
    show_comparison: false
    listen:
      year: camp_hdr.year
      quarter:  campaign_summary.quarter
      parent campaign: camp_hdr.parent_campaign
      campaign: camp_hdr.campaign
    
    
  - name: Booked_revenue
    type: single_value
    explore: camp_hdr
    measures: [campaign_summary.booked__revenue]
    sorts: [campaign_summary.booked__revenue desc]
    limit: 500
    show_single_value_title: true
    single_value_title: Booked Revenue
    show_comparison: false
    listen:
      year: camp_hdr.year
      quarter:  campaign_summary.quarter
      parent campaign: camp_hdr.parent_campaign
      campaign: camp_hdr.campaign
      
  

  - name: Opportunity_Revenue_
    type: looker_geo_choropleth
    explore: camp_hdr
    dimensions: [opty_hdr1.state]
    measures: [opty_hdr1.Opportunity_Revenue]
    sorts: [opty_hdr1.amount desc, opty_hdr1.state]
    limit: 500
    map: usa
    show_view_names: false
    colors: ['#556b2f']
    quantize_colors: false
    note:
      text: '(Marketing Generated)'
      state:  collapsed
      display: above 
    listen:
      year: camp_hdr.year
      quarter:  campaign_summary.quarter
      parent campaign: camp_hdr.parent_campaign
      campaign: camp_hdr.campaign
    
    
  - name: Booked_Revenue_
    type: looker_geo_choropleth
    explore: camp_hdr
    dimensions: [opty_hdr1.State_]
    measures: [opty_hdr1.Booked_Revenue]
    sorts: [opty_hdr1.revenue desc, opty_hdr1.State_]
    limit: 500
    map: usa
    show_view_names: false
    quantize_colors: false
    note:
      text: '(Marketing Generated)'
      state:  collapsed
      display: above 
    listen:
      year: camp_hdr.year
      quarter:  campaign_summary.quarter
      parent campaign: camp_hdr.parent_campaign
      campaign: camp_hdr.campaign
      
  - name: Total Pipeline  
    title: ''
    type: looker_bar
    explore: pipeline
    measures: [pipeline.Marketing_Opportunity_Revenue, pipeline.Other_Oportunity_Revenue]
    sorts: [pipeline.Marketing_opty_Revenue desc, pipeline.Marketing_Opportunity_Revenue desc]
    limit: 500
    stacking: normal
    colors: ['#7A8A5E', '#dedcdc', '#929292', '#9fdee0', '#1f3e5a', '#90c8ae', '#92818d',
      '#c5c6a6', '#82c2ca', '#cee0a0', '#928fb4', '#9fc190']
    show_value_labels: false
    label_density: 25
    font_size: '12'
    hide_legend: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: false
    show_y_axis_ticks: false
    y_axis_tick_density: default
    show_x_axis_label: false
    show_x_axis_ticks: false
    x_axis_scale: ordinal
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    x_padding_left: 112
    x_padding_right: 77
    note:
      text: 'Marketing Generated: 77%'
      state:  collapsed
      display: below 
      

  - name: Total Booked Revenue
    title: ''
    type: looker_bar
    explore: pipeline
    measures: [pipeline.Marketing_booked_Revenue, pipeline.other_booked_Revenue]
    sorts: [pipeline.Marketing_booked_Revenue desc]
    limit: 500
    stacking: normal
    colors: ['#50677C', '#dedcdc', '#929292', '#9fdee0', '#1f3e5a', '#90c8ae', '#92818d',
      '#c5c6a6', '#82c2ca', '#cee0a0', '#928fb4', '#9fc190']
    show_value_labels: false
    label_density: 25
    font_size: '12'
    hide_legend: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: false
    show_y_axis_ticks: false
    y_axis_tick_density: default
    show_x_axis_label: false
    show_x_axis_ticks: false
    x_axis_scale: ordinal
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    x_padding_left: 112
    x_padding_right: 77
    note:
      text: 'Marketing Generated: 81%'
      state:  collapsed
      display: below

    
    
  - name: Campaign_Performance
    type: looker_bar
    explore: camp_hdr
    dimensions: [camp_hdr.Campaign_Type]
    measures: [campaign_summary.campaign_cost, campaign_summary.campaign_target, campaign_summary.opty__revenue,campaign_summary.booked___revenue]
    sorts: [camp_hdr.Campaign_Type]
    limit: 500
    column_limit: 50
    stacking: ''
    colors: ['#62bad4', '#a9c574', '#929292', '#9fdee0', '#1f3e5a', '#90c8ae', '#92818d','#c5c6a6', '#82c2ca', '#cee0a0', '#928fb4', '#9fc190']
    show_value_labels: true
    label_density: 25
    font_size: '12'
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
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
      year: camp_hdr.year
      quarter:  campaign_summary.quarter
      parent campaign: camp_hdr.parent_campaign
      campaign: camp_hdr.campaign
    
    
  - name: ROI_By_Campaign_Type
    title: 'RoI By Campaign Type'
    type: looker_line
    explore: camp_hdr
    dimensions: [camp_hdr.year, campaign_summary.quarter]
    measures: [camp_hdr.Email_Blast, camp_hdr.Event, camp_hdr.Promotion]
    sorts: [camp_hdr.year , campaign_summary.quarter ]
    limit: 500
    column_limit: 50
    stacking: ''
    colors: ['#5245ed', '#ed6168', '#1ea8df', '#353b49', '#49cec1', '#b3a0dd', '#db7f2a',
      '#706080', '#a2dcf3', '#776fdf', '#e9b404', '#635189']
    show_value_labels: false
    label_density: 25
    font_size: '14'
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: custom
    y_axis_tick_density_custom: 7
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: ordinal
    y_axis_scale_mode: linear
    reference_lines: [{reference_type: line, range_start: max, range_end: min, margin_top: deviation,
    margin_value: mean, margin_bottom: deviation, line_value: '3.2'}]
    show_null_points: false
    point_style: circle_outline
    interpolation: monotone
    discontinuous_nulls: false
    listen:
      year: camp_hdr.year
      quarter:  campaign_summary.quarter
      parent campaign: camp_hdr.parent_campaign
      campaign: camp_hdr.campaign
    
    
  - name: Sourced_And_Assisted_Revenue
    type: looker_bar
    explore: camp_hdr
    dimensions: [camp_hdr.year, campaign_summary.quarter]
    measures: [campaign_summary.assisted_revenue, campaign_summary.sourced_revenue]
    sorts: [camp_hdr.year desc, campaign_summary.quarter desc]
    limit: 500
    stacking: normal
    colors: ['#62bad4', '#a9c574', '#929292', '#9fdee0', '#1f3e5a', '#90c8ae', '#92818d',
      '#c5c6a6', '#82c2ca', '#cee0a0', '#928fb4', '#9fc190']
    show_value_labels: false
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
    ordering: none
    show_null_labels: false
    column_group_spacing_ratio: 0.5
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    listen:
      year: camp_hdr.year
      quarter:  campaign_summary.quarter
      parent campaign: camp_hdr.parent_campaign
      campaign: camp_hdr.campaign
    
    
  - name: Top_5_Campaigns_By_Booked_Revenue
    type: looker_bar
    explore: camp_hdr
    dimensions: [camp_hdr.campaign]
    measures: [campaign_summary.booked___revenue]
    sorts: [campaign_summary.booked___revenue desc]
    limit: 5
    stacking: ''
    colors: ['#86b867', '#a9c574', '#929292', '#9fdee0', '#1f3e5a', '#90c8ae', '#92818d',
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
    x_axis_scale: ordinal
    y_axis_scale_mode: linear
    show_null_labels: false 
    listen:
      year: camp_hdr.year
      quarter:  campaign_summary.quarter
      parent campaign: camp_hdr.parent_campaign
      campaign: camp_hdr.campaign
      
      
  
    
    
  - name: By_Campaign_Type
    type: looker_pie
    explore: camp_hdr
    dimensions: [camp_hdr.Campaign_Type]
    measures: [campaign_summary.opportunity_revenue]
    sorts: [campaign_summary.revenue desc, camp_hdr.type, campaign_summary.opportunity_revenue desc]
    limit: 500
    value_labels: legend
    inner_radius: 20
    show_view_names: false
    listen:
      year: camp_hdr.year
      quarter:  campaign_summary.quarter
      parent campaign: camp_hdr.parent_campaign
      campaign: camp_hdr.campaign
      
    
  - name: By_Segment  
    type: looker_pie
    explore: camp_hdr
    dimensions: [campaign_summary.segment]
    measures: [campaign_summary.opportunity_revenue]
    filters:
      campaign_summary.segment: -NULL
    sorts: [campaign_summary.revenue, campaign_summary.segment]
    limit: 500
    value_labels: legend
    colors: ['#307D7E','#CCCD7F', '#8BDBA1']
    inner_radius: 20
    show_view_names: false
    listen:
      year: camp_hdr.year
      quarter:  campaign_summary.quarter
      parent campaign: camp_hdr.parent_campaign
      campaign: camp_hdr.campaign
      
 

    
    
  - name: By_Objective
    type: looker_pie
    explore: camp_hdr
    dimensions: [camp_hdr.objective]
    measures: [campaign_summary.opportunity_revenue]
    sorts: [campaign_summary.revenue, camp_hdr.objective]
    limit: 500
    value_labels: legend
    colors: ['#2f8eaa','#8BDBA1', '#307D7E', '#CCCD7F']
    inner_radius: 20
    show_view_names: false
    listen:
      year: camp_hdr.year
      quarter:  campaign_summary.quarter
      parent campaign: camp_hdr.parent_campaign
      campaign: camp_hdr.campaign
      

      
  - name: Booked_Revenue
    title: ''
    type: single_value
    measures: [pipeline.booked_revenue]
    explore: pipeline
    dynamic_fields:
    - table_calculation: calculation_1
      label: Calculation 1
      expression: 'concat("Total Booked Revenue: $",round(${pipeline.booked_revenue}/1000000,2),"M")'
    sorts: [pipeline.booked_revenue desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    custom_color: '#7d7676'
    font-size: 12px
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    hidden_fields: [pipeline.booked_revenue]
    
    
  - name: Pipeline
    title: ''
    type: single_value
    measures: [pipeline.Opportunity_revenue]
    explore: pipeline
    dynamic_fields:
    - table_calculation: calculation_1
      label: Calculation 1
      expression: 'concat("Total Pipeline: $",round(${pipeline.Opportunity_revenue}/1000000,2),"M")'
    sorts: [pipeline.Opportunity_revenue desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    custom_color: '#7d7676'
    font-size: 36px
    padding: 10 10 10 10
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    hidden_fields: [pipeline.Opportunity_revenue]
    
