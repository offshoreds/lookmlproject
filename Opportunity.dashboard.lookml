- dashboard: opportunity
  title: Opportunity
  layout: grid
  rows:
    - elements: [Total_Opportunities,pipeline_opty,Won_Opty,Closed_lost_opty]
      height: 110
      
    - elements: [Pipeline_All_stages,Opportunity_revenue ]
      height: 330
    
    - elements: [opty_to_orders ]
      height: 330
      
    - elements: [Opportunity_Details]
      height: 380



  elements:

  - name: Pipeline_All_stages
    type: looker_bar
    explore: camp_hdr
    measures: [opty_hdr1.Closed_won, opty_hdr1.Closed_lost,  opty_hdr1.Create,opty_hdr1.Plan,
      opty_hdr1.Qualify]
    sorts: [opty_hdr1.Closed_lost desc]
    limit: 500
    column_limit: 50
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
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_labels: false

    
  - name: Opportunity_revenue
    title: QoQ Opportunities
    type: looker_column
    explore: camp_hdr
    dimensions: [opty_hdr1.year, opty_hdr1.quarter]
    measures: [opty_hdr1.Opportunities, opty_hdr1.Opty_revenue]
    sorts: [opty_hdr1.year]
    limit: 500
    total: true
    stacking: ''
    colors: ['#62bad4', '#a9c574', '#929292', '#9fdee0', '#1f3e5a', '#90c8ae', '#92818d',
      '#c5c6a6', '#82c2ca', '#cee0a0', '#928fb4', '#9fc190']
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    series_types:
      opty_hdr1.Opportunities: line
    limit_displayed_rows: false
    y_axis_combined: false
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_labels: false
    show_dropoff: false

  
    
  - name: Opportunity_Details
    type: table
    explore: camp_hdr
    dimensions: [opty_hdr1.year, opty_hdr1.quarter,camp_hdr.campaign, opty_hdr1.Opportunity_Name, opty_hdr1.state,
      opty_hdr1.pipeline_type, opty_hdr1.pipeline_stage]
    measures: [opty_hdr1.Opportunity__revenue]
    sorts: [opty_hdr1.Opportunity_Name desc]
    limit: 500
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    table_theme: editable
    limit_displayed_rows: false
  
  
  - name: Total_Opportunities
    type: single_value
    explore: camp_hdr
    measures: [opty_hdr1.Opportunity_count]
    sorts: [opty_hdr1.Opportunity_count desc]
    limit: 500
    total: true
    single_value_title: '# Total Opportunities'
    custom_color_enabled: false
    show_single_value_title: true
    show_comparison: false
    
  - name: Closed_lost_opty
    type: single_value
    explore: camp_hdr
    measures: [opty_hdr1.Opportunity_count]
    filters:
      opty_hdr1.pipeline: Closed Lost
    sorts: [opty_hdr1.Opportunity_count desc]
    limit: 500
    single_value_title: '# Closed Lost Opportunities'
    total: true
    custom_color_enabled: false
    show_single_value_title: true
    show_comparison: false

  - name: pipeline_opty
    type: single_value
    explore: camp_hdr
    dimensions: [opty_hdr1.pipeline_stage]
    measures: [opty_hdr1.Opportunity_count]
    dynamic_fields:
    - table_calculation: calculation_1
      label: Calculation 1
      expression: sum(${opty_hdr1.Opportunity_count})
    hidden_fields: [opty_hdr1.pipeline_stage, opty_hdr1.Opportunity_count]
    filters:
      opty_hdr1.pipeline_stage: -Closed Lost,-Closed Won
    sorts: [opty_hdr1.pipeline_stage]
    limit: 500
    total: true
    show_single_value_title: true
    single_value_title: '# Of Open Opportunities'
    show_comparison: false

    
  - name: Won_Opty
    type: single_value
    explore: camp_hdr
    dimensions: [opty_hdr1.pipeline]
    measures: [opty_hdr1.Opportunity_count]
    hidden_fields: [opty_hdr1.pipeline]
    filters:
      opty_hdr1.pipeline: Closed Won
    sorts: [opty_hdr1.Opportunity_count desc]
    limit: 500
    single_value_title: '# Won Opportunities'
    total: true
    custom_color_enabled: false
    show_single_value_title: true
    show_comparison: false
    
  - name: opty_to_orders
    title: Opportunities to Orders Conversion 
    type: looker_line
    explore: camp_hdr
    dimensions: [opty_hdr1.year, opty_hdr1.quarter]
    measures: [opty_hdr1.Booked_Orders, opty_hdr1.Opportunity_count]
    dynamic_fields:
    - table_calculation: opty_to_oder_conversion
      label: Opty to Oder Conversion
      expression: ${opty_hdr1.Booked_Orders}/${opty_hdr1.Opportunity_count}*100
      value_format: 0.##\%
    hidden_fields: [opty_hdr1.Booked_Orders, opty_hdr1.Opportunity_count]
    sorts: [opty_hdr1.year , opty_hdr1.quarter ]
    limit: 500
    stacking: ''
    colors: ['#62bad4', '#1f78b4', '#b2df8a', '#33a02c', '#fb9a99', '#e31a1c', '#fdbf6f',
      '#ff7f00', '#cab2d6', '#6a3d9a', '#edbc0e', '#b15928']
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
    x_axis_scale: auto
    y_axis_scale_mode: linear
    point_style: circle_outline
    interpolation: linear

  
  


 
