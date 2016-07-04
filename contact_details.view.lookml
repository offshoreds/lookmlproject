- view: contact_details
  sql_table_name: C2CDB.CONTACT_DETAILS
  fields:

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.ID

  - dimension: accountid
    type: string
    sql: ${TABLE}.ACCOUNTID

  - dimension: active__c
    type: string
    sql: ${TABLE}.ACTIVE__C

  - dimension: business_unit__c
    type: string
    sql: ${TABLE}.BUSINESS_UNIT__C

  - dimension: cachekey
    type: string
    sql: ${TABLE}.CACHEKEY

  - dimension: contact_status__c
    type: string
    sql: ${TABLE}.CONTACT_STATUS__C

  - dimension: countrycode_region__c
    type: string
    sql: ${TABLE}.COUNTRYCODE_REGION__C

  - dimension: createdbyid
    type: string
    sql: ${TABLE}.CREATEDBYID

  - dimension_group: createddate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATEDDATE

  - dimension: department
    type: string
    sql: ${TABLE}.DEPARTMENT

  - dimension: description
    type: string
    sql: ${TABLE}.DESCRIPTION

  - dimension: do_not_mail__c
    type: string
    sql: ${TABLE}.DO_NOT_MAIL__C

  - dimension: don_t_send_survey__c
    type: string
    sql: ${TABLE}.DON_T_SEND_SURVEY__C

  - dimension: donotcall
    type: string
    sql: ${TABLE}.DONOTCALL

  - dimension: email
    type: string
    sql: ${TABLE}.EMAIL

  - dimension: inactive__c
    type: string
    sql: ${TABLE}.INACTIVE__C

  - dimension: language_preference__c
    type: string
    sql: ${TABLE}.LANGUAGE_PREFERENCE__C

  - dimension_group: lastactivitydate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LASTACTIVITYDATE

  - dimension: lastmodifiedbyid
    type: string
    sql: ${TABLE}.LASTMODIFIEDBYID

  - dimension_group: lastmodifieddate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LASTMODIFIEDDATE

  - dimension: leadsource
    type: string
    sql: ${TABLE}.LEADSOURCE

  - dimension: level__c
    type: string
    sql: ${TABLE}.LEVEL__C

  - dimension: mailingcountry
    type: string
    sql: ${TABLE}.MAILINGCOUNTRY

  - dimension: masterrecordid
    type: string
    sql: ${TABLE}.MASTERRECORDID

  - dimension: name
    type: string
    sql: ${TABLE}.NAME

  - dimension: owner_active__c
    type: string
    sql: ${TABLE}.OWNER_ACTIVE__C

  - dimension: ownerid
    type: string
    sql: ${TABLE}.OWNERID

  - dimension: recordtypeid
    type: string
    sql: ${TABLE}.RECORDTYPEID

  - dimension: reference__c
    type: string
    sql: ${TABLE}.REFERENCE__C

  - dimension: referral_name__c
    type: string
    sql: ${TABLE}.REFERRAL_NAME__C

  - dimension: region__c
    type: string
    sql: ${TABLE}.REGION__C

  - dimension: role__c
    type: string
    sql: ${TABLE}.ROLE__C

  - dimension: sales_accepted_lead__c
    type: string
    sql: ${TABLE}.SALES_ACCEPTED_LEAD__C

  - dimension: target_region__c
    type: string
    sql: ${TABLE}.TARGET_REGION__C

  - dimension: title
    type: string
    sql: ${TABLE}.TITLE

  - dimension: type__c
    type: string
    sql: ${TABLE}.TYPE__C

  - dimension: unauthorized__c
    type: string
    sql: ${TABLE}.UNAUTHORIZED__C

  - measure: count
    type: count
    drill_fields: [id, name]

