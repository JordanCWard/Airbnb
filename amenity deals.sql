--find the difference between amenity prices and the average price of each neighborhood
--export the data to a csv file for tableau purposes

EXPORT DATA
OPTIONS(
  uri = 'gs://airbnb_data_analysis/data/amenity_differences-*.csv',
  format = 'CSV',
  overwrite = TRUE
)
AS
SELECT

  neighborhood,
  number_of_listings,
  average_price,

  washer_count,
  washer_avg_price,
  washer_avg_price - average_price AS washer_difference,

  free_parking_count,
  free_parking_avg_price,
  free_parking_avg_price - average_price AS free_parking_difference,

  wifi_count,
  wifi_avg_price,
  wifi_avg_price - average_price AS wifi_difference,

  tv_count,
  tv_avg_price,
  tv_avg_price - average_price AS tv_difference,

  kitchen_count,
  kitchen_avg_price,
  kitchen_avg_price - average_price AS kitchen_difference,

  ac_count,
  ac_avg_price,
  ac_avg_price - average_price AS ac_difference,

  window_ac_count,
  window_ac_avg_price,
  window_ac_avg_price - average_price AS window_ac_difference,

  self_check_in_count,
  self_check_in_avg_price,
  self_check_in_avg_price - average_price AS self_check_in_difference,

  oven_count,
  oven_avg_price,
  oven_avg_price - average_price AS oven_difference,

  stove_count,
  stove_avg_price,
  stove_avg_price - average_price AS stove_difference,

  bathtub_count,
  bathtub_avg_price,
  bathtub_avg_price - average_price AS bathtub_difference,

  backyard_count,
  backyard_avg_price,
  backyard_avg_price - average_price AS backyard_difference,

  bbq_grill_count,
  bbq_grill_avg_price,
  bbq_grill_avg_price - average_price AS bbq_grill_difference,

  security_cameras_count,
  security_cameras_avg_price,
  security_cameras_avg_price - average_price AS security_cameras_difference,

  pets_count,
  pets_avg_price,
  pets_avg_price - average_price AS pets_difference,

  fire_pit_count,
  fire_pit_avg_price,
  fire_pit_avg_price - average_price AS fire_pit_difference,

  single_level_count,
  single_level_avg_price,
  single_level_avg_price - average_price AS single_level_difference,

  gym_count,
  gym_price,
  gym_price - average_price AS gym_difference,

  exercise_equipment_count,
  exercise_equipment_price,
  exercise_equipment_price - average_price AS exercise_equipment_difference,

  pool_count,
  pool_avg_price,
  pool_avg_price - average_price AS pool_difference,

  hot_tub_count,
  hot_tub_price,
  hot_tub_price - average_price AS hot_tub_difference,

  childrens_books_n_toys_count,
  childrens_books_n_toys_price,
  childrens_books_n_toys_price - average_price AS childrens_books_n_toys_difference,

  crib_count,
  crib_price,
  crib_price - average_price AS crib_difference,

  smoking_count,
  smoking_avg_price,
  smoking_avg_price - average_price AS smoking_difference,

  ev_charger_count,
  ev_charger_price,
  ev_charger_price - average_price AS ev_charger_difference,

  game_console_count,
  game_console_avg_price,
  game_console_avg_price - average_price AS game_console_difference,

  pool_table_count,
  pool_table_avg_price,
  pool_table_avg_price - average_price AS pool_table_difference,

  bidet_count,
  bidet_avg_price,
  bidet_avg_price - average_price AS bidet_difference,

  bikes_count,
  bikes_avg_price,
  bikes_avg_price - average_price AS bikes_difference,

  ping_pong_count,
  ping_pong_avg_price,
  ping_pong_avg_price - average_price AS ping_pong_difference,

  sauna_count,
  sauna_avg_price,
  sauna_avg_price - average_price AS sauna_difference

FROM
  `airbnb.amenity_differences`;
