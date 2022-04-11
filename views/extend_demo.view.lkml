include: "ip_by_country.view"
view: extend_demo {
  extends: [ip_by_country]

  measure: count_distinct_startup {
    type: count_distinct
    sql: ${start_ip} ;;
  }
}
