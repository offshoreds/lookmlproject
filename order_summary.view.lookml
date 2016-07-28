- view: order_summary
  sql_table_name: C2CDB.ORDER_SUMMARY
  fields:

  
  - measure: Booked_Revenue
    label: 'Booked Revenue'
    type: sum
    sql: ${ordersrevenue}
    value_format: '$#,###'
    
  - dimension: ordersrevenue
    hidden: true
    sql: ${TABLE}.revenue
    
  - measure: Amount
    hidden: true
    type: sum
    sql: ${ordersrevenue}
    value_format: '$#,###'
    
    
  - dimension: camp_id
    hidden: true
    type: string
    sql: ${TABLE}.CAMP_ID
    
  - dimension: order_date
    label: 'Order Date'
    type: date
    sql: ${TABLE}.order_date
    
  - dimension: shipped_date
    label: 'Shipped Date'
    type: date
    sql: ${TABLE}.shipped_date
    
  - dimension: neededby_DATE
    label: 'Needed By Date'
    type: date
    sql: ${TABLE}.REQUESETED_DATE
    
  - dimension: DELIVERY_DATE
    label: 'Delivery date'
    type: date
    sql: ${TABLE}.DELIVERY_DATE
    
  - dimension: INVOICE_DATE
    label: 'Invoice Date'
    type: date
    sql: ${TABLE}.INVOICE_DATE
    
  - dimension: ORDER_CYCLE
    hidden: true
    type: number
    sql: ${TABLE}.ORDER_CYCLE_DAYS
  
  - measure: ORDER_CYCLE_DAYS
    label: 'Average Order Cycle Days'
    type: avg
    sql: ${ORDER_CYCLE}
  
  - dimension: ONTIME_DELIVERY
    type: string
    hidden: true
    sql: ${TABLE}.ONTIME_DELIVERY 
    
  - measure: ONTIME_DELIVERY_ratio
    label: 'Ontime Delivery Ratio'
    type: count_distinct
    sql: ${row_wid}
    filters:
       ONTIME_DELIVERY: 'Y'
  
  - dimension: opportunity_name
    type: string
    label: 'Opportunity'
    sql: ${TABLE}.opportunityname

  - dimension: order_status
    type: string
    label: 'Order Status'
    sql: ${TABLE}.ORDER_STATUS

  - dimension: row_wid
    type: string
    hidden: true
    sql: ${TABLE}.ROW_WID

  - dimension: state
    label: 'State'
    type: string
    sql: ${TABLE}.STATE

  - dimension: year
    label: 'Year'
    type: string
    sql: ${TABLE}.YEAR

  - measure: Booked_Orders
    type: count
    
  
