- view: tmp_lkp_bill_to1
  sql_table_name: C2CDB.TMP_LKP_BILL_TO1
  fields:

  - dimension: orig_system_ref_site
    type: string
    sql: ${TABLE}.ORIG_SYSTEM_REF_SITE

  - dimension: site_use_id
    type: string
    sql: ${TABLE}.SITE_USE_ID

  - measure: count
    type: count
    drill_fields: []

