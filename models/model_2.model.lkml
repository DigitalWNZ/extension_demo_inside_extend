connection: "demo"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
include: "/views/*.explore.lkml"
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#

access_grant: view_country_name {
  user_attribute: country
  allowed_values: [ "us"]
}

explore: base_explore_extend_2 {
  extends: [ip_by_country_base]
}
