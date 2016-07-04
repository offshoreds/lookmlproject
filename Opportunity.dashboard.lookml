- dashboard: opportunity
  title: Opportunity
  layout: grid
  rows:
    - elements: [Pipeline_All_stages,Opportunity_revenue ]
      height: 330
    - elements: [Opportunity_Details]
      height: 380



  elements:

  - name: Pipeline_All_stages
    type: looker_bar
    explore: camp_hdr
    dimensions: [opty_hdr1.pipeline_type]
    measures: [opty_hdr1.Closed_lost, opty_hdr1.Closed_won, opty_hdr1.Plan, opty_hdr1.Qualify,
      opty_hdr1.Create]
    sorts: [opty_hdr1.Closed_lost desc]
    limit: 500
    column_limit: 50
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
    type: looker_column
    explore: camp_hdr
    dimensions: [opty_hdr1.year, opty_hdr1.quarter]
    measures: [opty_hdr1.Opportunity__revenue]
    sorts: [opty_hdr1.year desc]
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
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_labels: false
    
  - name: Opportunity_Details
    type: table
    explore: camp_hdr
    dimensions: [opty_hdr1.year, opty_hdr1.quarter, opty_hdr1.Opportunity_Name, opty_hdr1.state,
      opty_hdr1.pipeline_type, opty_hdr1.pipeline_stage]
    measures: [opty_hdr1.Opportunity__revenue]
    sorts: [opty_hdr1.Opportunity_Name desc]
    limit: 500
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    table_theme: editable
    limit_displayed_rows: false


 
