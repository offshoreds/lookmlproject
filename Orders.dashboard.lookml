- dashboard: orders
  title: Orders
  layout: grid
  rows:
    - elements: [Inprogress_Orders,Pending_orders,closed_orders,Ontime_delivery_ratio]
      height: 110
    - elements: [Order_details]
      height: 380

  elements:
  
  - name: Inprogress_Orders
    type: single_value
    explore: camp_hdr
    dimensions: [order_summary.order_status]
    measures: [order_summary.count]
    filters:
      order_summary.order_status: Inprogress
    sorts: [order_summary.count desc]
    limit: 500
    show_single_value_title: true
    single_value_title: '# Inprogress Orders'
    show_comparison: false
  
  
  - name: Pending_orders
    type: single_value
    explore: camp_hdr
    dimensions: [order_summary.order_status]
    measures: [order_summary.count]
    filters:
      order_summary.order_status: Pending
    sorts: [order_summary.count desc]
    limit: 500
    show_single_value_title: true
    single_value_title: '# Pending Orders'
    show_comparison: false


  - name: closed_orders
    type: single_value
    explore: camp_hdr
    dimensions: [order_summary.order_status]
    measures: [order_summary.count]
    filters:
      order_summary.order_status: Closed
    sorts: [order_summary.count desc]
    limit: 500
    show_single_value_title: true
    single_value_title: '# Closed Orders'
    show_comparison: false
    
  - name: Ontime_delivery_ratio
    type: single_value
    explore: camp_hdr
    measures: [order_summary.count, order_summary.ONTIME_DELIVERY_ratio]
    dynamic_fields:
    - table_calculation: calculation_1
      label: Calculation 1
      expression: ${order_summary.ONTIME_DELIVERY_ratio}/${order_summary.count}*100
      value_format: 0.00\%
    hidden_fields: [order_summary.count, order_summary.ONTIME_DELIVERY_ratio]
    sorts: [calculation_1 desc]
    limit: 500
    show_single_value_title: true
    single_value_title: 'Ontime Delivery Ratio'
    show_comparison: false


  - name: Order_details
    type: table
    explore: camp_hdr
    dimensions: [order_summary.opportunity_name, order_summary.order_date, order_summary.order_status,
      order_summary.state, order_summary.neededby_DATE, order_summary.shipped_date,
      order_summary.DELIVERY_DATE, order_summary.INVOICE_DATE]
    measures: [order_summary.Booked_Revenue]
    sorts: [order_summary.order_status]
    limit: 600
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    table_theme: transparent
    limit_displayed_rows: false

