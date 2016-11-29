view: order_summary {
  sql_table_name: looker.ORDER_SUMMARY ;;
  # DIMENSIONS #

  dimension: ordersrevenue {
    hidden: yes
    sql: ${TABLE}.revenue ;;
  }

  dimension: camp_id {
    hidden: yes
    type: string
    sql: ${TABLE}.CAMP_ID ;;
  }

  dimension: order_date {
    label: "Order Date"
    type: date
    sql: ${TABLE}.order_date ;;
  }

  dimension: order_month {
    label: "Order month"
    type: date_month
    sql: ${TABLE}.order_date ;;
  }

  dimension: shipped_date {
    label: "Shipped Date"
    type: date
    sql: ${TABLE}.shipped_date ;;
  }

  dimension: neededby_DATE {
    label: "Needed By Date"
    type: date
    sql: ${TABLE}.REQUESETED_DATE ;;
  }

  dimension: DELIVERY_DATE {
    label: "Delivery date"
    type: date
    sql: ${TABLE}.DELIVERY_DATE ;;
  }

  dimension: INVOICE_DATE {
    label: "Invoice Date"
    type: date
    sql: ${TABLE}.INVOICE_DATE ;;
  }

  dimension: ORDER_CYCLE {
    hidden: yes
    type: number
    sql: ${TABLE}.ORDER_CYCLE_DAYS ;;
  }

  dimension: ONTIME_DELIVERY {
    type: string
    hidden: yes
    sql: ${TABLE}.ONTIME_DELIVERY ;;
  }

  dimension: opportunity_name {
    type: string
    label: "Opportunity"
    sql: ${TABLE}.opportunityname ;;
  }

  dimension: order_status {
    type: string
    label: "Order Status"
    sql: ${TABLE}.ORDER_STATUS ;;
  }

  dimension: row_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.ROW_WID ;;
  }

  dimension: state {
    label: "State"
    type: string
    sql: ${TABLE}.STATE ;;
  }

  dimension: year {
    label: "Year"
    type: string
    sql: ${TABLE}.YEAR ;;
  }

  measure: ORDER_CYCLE_DAYS {
    label: "Average Order Cycle Days"
    type: average
    sql: ${ORDER_CYCLE} ;;
  }

  measure: Booked_Revenue {
    label: "Booked Revenue"
    type: sum
    sql: ${ordersrevenue} ;;
    value_format: "$#,###"
  }

  measure: Amount {
    hidden: yes
    type: sum
    sql: ${ordersrevenue} ;;
    value_format: "$#,###"
  }

  measure: ONTIME_DELIVERY_ratio {
    label: "Ontime Delivery Ratio"
    type: count_distinct
    sql: ${row_wid} ;;

    filters: {
      field: ONTIME_DELIVERY
      value: "Y"
    }
  }

  measure: Booked_Orders {
    type: count
    drill_fields: [details*]
  }

  set: details {
    fields: [order_summary.opportunity_name, order_summary.order_date, order_summary.order_status]
  }
}
