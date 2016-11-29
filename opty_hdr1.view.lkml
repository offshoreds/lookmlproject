view: opty_hdr1 {
  sql_table_name: looker.OPTY_HDR1 ;;
  # DIMENSIONS #

  dimension: opportunity_amount {
    hidden: yes
    type: number
    sql: ${TABLE}.AMOUNT ;;
  }

  dimension: camp_id {
    type: string
    hidden: yes
    sql: ${TABLE}.CAMP_ID ;;
  }

  dimension: isclosed {
    type: string
    hidden: yes
    label: "Closed Opportunities"
    sql: ${TABLE}.ISCLOSED ;;
  }

  dimension: iswon {
    type: string
    hidden: yes
    label: "Won Opportunities"
    sql: ${TABLE}.ISWON ;;
  }

  dimension: name {
    type: string
    hidden: yes
    sql: ${TABLE}.NAME ;;
  }

  dimension: Opportunity_Name {
    label: "Opportunity Name"
    type: string
    sql: ${name} ;;
  }

  dimension: opty_revenue {
    type: number
    hidden: yes
    sql: ${TABLE}.REVENUE ;;
  }

  dimension: state {
    label: "State Name"
    type: string
    sql: ${TABLE}.STATE ;;
  }

  dimension: State_ {
    type: string
    hidden: yes
    sql: ${state} ;;
  }

  dimension: row_wid {
    type: string
    hidden: yes
    sql: ${TABLE}.ROW_WID ;;
  }

  dimension: year {
    type: string
    label: "Year"
    sql: ${TABLE}.year ;;
  }

  dimension: quarter {
    type: string
    label: "Quarter"
    sql: ${TABLE}.quarter ;;
  }

  dimension: pipeline {
    type: string
    hidden: yes
    sql: ${TABLE}.pipeline ;;
  }

  dimension: pipeline_stage {
    type: string
    label: "Pipeline Stage"
    sql: ${pipeline} ;;
  }

  dimension: pipeline_type {
    type: string
    hidden: yes
    label: "Pipeline Type"
    sql: ${TABLE}.pipeline_type ;;
  }

  # MEASURES #

  measure: Opportunity__revenue {
    type: sum
    label: "Opportunity Amount"
    hidden: yes
    value_format: "$#,###"
    sql: ${opty_revenue} ;;
  }

  measure: Opty_revenue {
    type: sum
    label: "Revenue"
    hidden: yes
    value_format: "$0.##,, \" M\""
    sql: ${opty_revenue} ;;
  }

  measure: revenue__ {
    type: sum
    label: "Opportunity revenue"
    value_format: "$0.##,, \" M\""
    sql: ${opty_revenue} ;;

    link: {
      label: "Opportunity Details"
      url: "/dashboards/c2c_model::opportunity"
    }
  }

  measure: revenue_____ {
    label: "Opportunity revenue"
    # opty revenue for executive dashboard
    type: sum
    hidden: yes
    value_format: "$#0.00,,\"M\""
    sql: ${opty_revenue} ;;
    drill_fields: [details1*]

    link: {
      label: "Opportunity Details"
      url: "/dashboards/c2c_model::opportunity"
    }
  }

  measure: Booked_Revenue {
    type: sum
    hidden: yes
    value_format: "$0.##,, \" M\""
    sql: ${opty_revenue} ;;

    link: {
      label: "Order details"
      url: "/dashboards/c2c_model::orders"
    }
  }

  measure: Booked_Orders {
    type: count_distinct
    sql: ${row_wid} ;;

    filters: {
      field: iswon
      value: "1"
    }
  }

  measure: Closed_won {
    hidden: yes
    type: sum
    value_format: "$0.##,, \" M\""
    sql: ${opty_revenue} ;;

    filters: {
      field: pipeline
      value: "Closed Won"
    }
  }

  measure: Closed_lost {
    type: sum
    hidden: yes
    value_format: "$0.##,, \" M\""
    sql: ${opty_revenue} ;;

    filters: {
      field: pipeline
      value: "Closed Lost"
    }
  }

  measure: Plan {
    hidden: yes
    type: sum
    value_format: "$0.##,, \" M\""
    sql: ${opty_revenue} ;;

    filters: {
      field: pipeline
      value: "Plan"
    }
  }

  measure: Create {
    type: sum
    hidden: yes
    value_format: "$0.##,, \" M\""
    sql: ${opty_revenue} ;;

    filters: {
      field: pipeline
      value: "Create"
    }
  }

  measure: Qualify {
    type: sum
    hidden: yes
    value_format: "$0.##,, \" M\""
    sql: ${opty_revenue} ;;

    filters: {
      field: pipeline
      value: "Qualify"
    }
  }

  measure: Amount {
    type: sum
    hidden: yes
    value_format: "$0.##,, \" M\""
    sql: ${opportunity_amount} ;;
    drill_fields: []
  }

  measure: Opportunity_Revenue {
    type: sum
    hidden: yes
    value_format: "$0.##,, \" M\""
    sql: ${opportunity_amount} ;;

    link: {
      label: "Opportunity Details"
      url: "/dashboards/c2c_model::opportunity"
    }
  }

  measure: Opportunity_count {
    label: "Opportunity Count"
    type: count
    drill_fields: [details2*]
  }

  measure: Opportunities {
    label: "# of Opportunities"
    hidden: yes
    type: count
  }

  set: details1 {
    fields: [opty_hdr1.year, opty_hdr1.quarter, camp_hdr.campaign, opty_hdr1.Opportunity_Name, opty_hdr1.state, opty_hdr1.pipeline_type, opty_hdr1.pipeline_stage, opty_hdr1.Opportunity__revenue]
  }

  set: details2 {
    fields: [opty_hdr1.Opportunity_Name, pipeline, opty_hdr1.year, quarter, opty_hdr1.state]
  }
}
