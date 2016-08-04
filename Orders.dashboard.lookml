- dashboard: orders
  title: Orders
  layout: grid
  rows:
    - elements: [Inprogress_Orders,Pending_orders,closed_orders,Ontime_delivery_ratio]
      height: 110
    - elements: [Orders_By_Month]
      height: 300
    - elements: [Order_details]
      height: 380

  elements:
  
  - name: Inprogress_Orders
    type: single_value
    explore: camp_hdr
    dimensions: [order_summary.order_status]
    measures: [order_summary.Booked_Orders]
    filters:
      order_summary.order_status: Inprogress
    sorts: [order_summary.Booked_Orders desc]
    limit: 500
    show_single_value_title: true
    single_value_title: '# Inprogress Orders'
    show_comparison: false
  
  
  - name: Pending_orders
    type: single_value
    explore: camp_hdr
    dimensions: [order_summary.order_status]
    measures: [order_summary.Booked_Orders]
    filters:
      order_summary.order_status: Pending
    sorts: [order_summary.Booked_Orders desc]
    limit: 500
    show_single_value_title: true
    single_value_title: '# Pending Orders'
    show_comparison: false


  - name: closed_orders
    type: single_value
    explore: camp_hdr
    dimensions: [order_summary.order_status]
    measures: [order_summary.Booked_Orders]
    filters:
      order_summary.order_status: Closed
    sorts: [order_summary.Booked_Orders desc]
    limit: 500
    show_single_value_title: true
    single_value_title: '# Closed Orders'
    show_comparison: false
    
  - name: Ontime_delivery_ratio
    type: single_value
    explore: camp_hdr
    measures: [order_summary.Booked_Orders, order_summary.ONTIME_DELIVERY_ratio]
    dynamic_fields:
    - table_calculation: calculation_1
      label: Calculation 1
      expression: ${order_summary.ONTIME_DELIVERY_ratio}/${order_summary.Booked_Orders}*100
      value_format: 0.00\%
    hidden_fields: [order_summary.Booked_Orders, order_summary.ONTIME_DELIVERY_ratio]
    sorts: [calculation_1 desc]
    limit: 500
    show_single_value_title: true
    single_value_title: 'Ontime Delivery Ratio'
    show_comparison: false
    
  - name: Orders_By_Month
    title: 'Booked Orders By Month'
    type: looker_line
    explore: camp_hdr
    dimensions: [order_summary.order_month]
    measures: [order_summary.Booked_Orders]
    sorts: [order_summary.order_month desc]
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
    show_null_points: false
    point_style: circle
    interpolation: linear



    
  - name: Order_details
    type: table
    explore: camp_hdr
    dimensions: [order_summary.opportunity_name, order_summary.order_date, order_summary.order_status,
      order_summary.state, order_summary.neededby_DATE, order_summary.shipped_date,
      order_summary.DELIVERY_DATE, order_summary.INVOICE_DATE]
    measures: [order_summary.Booked_Revenue]
    filters:
      order_summary.order_status: Closed
    sorts: [order_summary.opportunity_name desc]
    limit: 600
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    table_theme: transparent
    limit_displayed_rows: false

