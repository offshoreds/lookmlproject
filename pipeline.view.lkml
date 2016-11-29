view: pipeline {
  sql_table_name: looker.PIPELINE ;;
  # DIMENSIONS #
  dimension: Opportunity_count {
    label: "Opportunity Count"
    type: string
    sql: ${TABLE}.OPTY_COUNT ;;
  }

  dimension: quarter {
    label: "Quarter"
    type: string
    sql: ${TABLE}.QUARTER ;;
  }

  dimension: year {
    label: "Year"
    type: string
    sql: ${TABLE}.YEAR ;;
  }

  dimension: campaign_flg {
    hidden: yes
    type: string
    sql: ${TABLE}.CAMPAIGN_FLG ;;
  }

  dimension: campid {
    hidden: yes
    type: string
    sql: ${TABLE}.CAMPID ;;
  }

  #MEASURES#






  measure: Marketing_Opportunity_Revenue {
    label: "Marketing Opportunity Revenue"
    type: sum
    value_format: "$0.##,, \" M\""
    sql: OPTY_REVENUE ;;

    link: {
      label: "Opportunity Details"
      url: "/dashboards/c2c_model::opportunity"
    }

    filters: {
      field: campaign_flg
      value: "Y"
    }
  }

  measure: Other_Oportunity_Revenue {
    label: "Other Oportunity Revenue"
    type: sum
    value_format: "$0.##,, \" M\""
    sql: OPTY_REVENUE ;;

    link: {
      label: "Opportunity Details"
      url: "/dashboards/c2c_model::opportunity"
    }

    filters: {
      field: campaign_flg
      value: "N"
    }
  }

  measure: Marketing_booked_Revenue {
    label: "Marketing Booked Revenue"
    type: sum
    value_format: "$0.##,, \" M\""
    sql: booked_revenue ;;

    link: {
      label: "Order details"
      url: "/dashboards/c2c_model::orders"
    }

    filters: {
      field: campaign_flg
      value: "Y"
    }
  }

  measure: other_booked_Revenue {
    label: "Other Booked Revenue"
    type: sum
    sql: booked_revenue ;;

    link: {
      label: "Order details"
      url: "/dashboards/c2c_model::orders"
    }

    filters: {
      field: campaign_flg
      value: "N"
    }

    value_format: "$0.##,, \" M\""
  }

  measure: Opportunity_revenue {
    label: "Opportunity Revenue"
    type: sum
    sql: ${TABLE}.OPTY_REVENUE ;;
    value_format: "$0.##,, \" M\""
  }

  measure: booked_order {
    label: "Booked Orders"
    type: sum
    sql: ${TABLE}.BOOKED_ORDER ;;
  }

  measure: booked_revenue {
    label: "Booked Revenue"
    type: sum
    sql: ${TABLE}.BOOKED_REVENUE ;;
    value_format: "$0.##,, \" M\""
  }

  measure: count {
    hidden: yes
    type: count
  }
}
