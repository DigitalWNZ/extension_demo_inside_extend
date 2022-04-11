connection: "demo"

# include all the views
include: "/views/**/*.view"
include: "/dashboards/*.dashboard"

datagroup: demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: demo_default_datagroup

access_grant: view_country_name {
  user_attribute: country
  allowed_values: [ "us"]
}

explore: ip_by_country {
  access_filter: {
    field: ip_by_country.country_iso_code
    user_attribute: country
  }
}

explore: extend_demo {}

explore: ip_by_country_be_extended {
  view_name: ip_by_country
}

explore: ip_by_country_extend {
  extends: [ip_by_country_be_extended]
  fields: [ip_by_country.start_ip,ip_by_country.count]
}
