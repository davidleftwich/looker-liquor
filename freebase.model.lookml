- connection: sentry

- include: "*.view.lookml"       # include all views in this project
- include: "*.dashboard.lookml"  # include all dashboards in this project

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# - explore: order_items
#   joins:
#     - join: orders
#       sql_on: ${orders.id} = ${order_items.order_id}
#     - join: users
#       sql_on: ${users.id} = ${orders.user_id}
- explore: compute_ages
- explore: coords_aux
- explore: count_gender_prof_birthplace_mat
- explore: country_isos
- explore: famous_women_by_country
- explore: gender_names
- explore: people_date_of_birth
- explore: people_gender
- explore: people_names
- explore: people_place_of_birth
- explore: people_profession
- explore: place_of_birth_names
- explore: place_of_birth_to_country
- explore: place_to_country
- explore: profession_names
- explore: triples
- explore: triples_lang
- explore: triples_lang_en
