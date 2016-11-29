view: state_names {
  sql_table_name: C2CDB.STATE_NAMES ;;

  dimension: state {
    type: string
    sql: ${TABLE}.STATE ;;
  }

  dimension: user_orders_count {
    type: string
    sql: ${TABLE}.longitude ;;
  }

  measure: ORDERS {
    type: sum
    sql: ${TABLE}.ORDERS ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
