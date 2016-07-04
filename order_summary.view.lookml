- view: order_summary
  sql_table_name: C2CDB.ORDER_SUMMARY
  fields:

  
  
  - measure: Booked_Revenue
    type: sum
    sql: ${TABLE}.revenue
    value_format: '$#,###'
    
  - measure: Amount
    type: sum
    sql: ${TABLE}.revenue
    value_format: '$#,###'


  - dimension: camp_id
    type: string
    sql: ${TABLE}.CAMP_ID
    
  - dimension: order_date
    type: date
    sql: ${TABLE}.order_date
    
  - dimension: shipped_date
    type: date
    sql: ${TABLE}.shipped_date
    
  - dimension: neededby_DATE
    type: date
    sql: ${TABLE}.REQUESETED_DATE
    

    
  - dimension: DELIVERY_DATE
    type: date
    sql: ${TABLE}.DELIVERY_DATE
    
  - dimension: INVOICE_DATE
    type: date
    sql: ${TABLE}.INVOICE_DATE
    
  - measure: ORDER_CYCLE_DAYS
    type: avg
    sql: ${TABLE}.ORDER_CYCLE_DAYS
  
  - dimension: ONTIME_DELIVERY
    type: string
    sql: ${TABLE}.ONTIME_DELIVERY 
    
  - measure: ONTIME_DELIVERY_ratio
    type: count_distinct
    sql: |
       case when ${TABLE}.ONTIME_DELIVERY ='Y' then ${TABLE}.ROW_WID end
  
  
  - dimension: opportunity_name
    type: string
    sql: ${TABLE}.opportunityname

  - dimension: order_status
    type: string
    sql: ${TABLE}.ORDER_STATUS

  - dimension: row_wid
    type: string
    sql: ${TABLE}.ROW_WID

  - dimension: state
    type: string
    sql: ${TABLE}.STATE

  - dimension: year
    type: string
    sql: ${TABLE}.YEAR

  - measure: Booked_Orders
    type: count
    
  - measure: count
    type: count
    sql: ${TABLE}.revenue

