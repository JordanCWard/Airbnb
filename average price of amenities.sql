--temporary table of neighborhoods, number of listings and the average price
CREATE TABLE IF NOT EXISTS airbnb.neighborhoods
AS

SELECT
  n.neighbourhood_cleansed AS neighborhood,
  COUNT(*) AS number_of_listings,
  AVG(l.price) AS average_price

FROM
  (SELECT DISTINCT neighbourhood_cleansed FROM `airbnb.listings`) n

LEFT JOIN
  `airbnb.listings` l ON n.neighbourhood_cleansed = l.neighbourhood_cleansed

WHERE n.neighbourhood_cleansed IS NOT NULL

GROUP BY
  n.neighbourhood_cleansed

ORDER BY
  n.neighbourhood_cleansed;
 



 --temporary table of the number of listings for each amenity and their average price
CREATE TABLE IF NOT EXISTS airbnb.amenity_prices
AS
SELECT
  neighbourhood_cleansed,
 
  -- count amenities and find avg price
  COUNT(CASE WHEN amenities LIKE '%Washer%' THEN 1 ELSE NULL END) AS washer_count,
  AVG(CASE WHEN amenities LIKE '%Washer%' THEN price ELSE NULL END) AS washer_avg_price,

  COUNT(CASE WHEN amenities LIKE '%Free parking%' THEN 1 ELSE NULL END) AS free_parking_count,
  AVG(CASE WHEN amenities LIKE '%Free parking%' THEN price ELSE NULL END) AS free_parking_avg_price,

  COUNT(CASE WHEN amenities LIKE '%Wifi%' THEN 1 ELSE NULL END) AS wifi_count,
  AVG(CASE WHEN amenities LIKE '%Wifi%' THEN price ELSE NULL END) AS wifi_avg_price,

  COUNT(CASE WHEN amenities LIKE '%TV%' THEN 1 ELSE NULL END) AS tv_count,
  AVG(CASE WHEN amenities LIKE '%TV%' THEN price ELSE NULL END) AS tv_avg_price,

  COUNT(CASE WHEN amenities LIKE '%Kitchen%' THEN 1 ELSE NULL END) AS kitchen_count,
  AVG(CASE WHEN amenities LIKE '%Kitchen%' THEN price ELSE NULL END) AS kitchen_avg_price,

  COUNT(CASE WHEN amenities LIKE '%Air conditioning%' THEN 1 ELSE NULL END) AS ac_count,
  AVG(CASE WHEN amenities LIKE '%Air conditioning%' THEN price ELSE NULL END) AS ac_avg_price,

  COUNT(CASE WHEN amenities LIKE '%Window AC unit%' THEN 1 ELSE NULL END) AS window_ac_count,
  AVG(CASE WHEN amenities LIKE '%Window AC unit%' THEN price ELSE NULL END) AS window_ac_avg_price, 

  COUNT(CASE WHEN amenities LIKE '%Self check-in%' THEN 1 ELSE NULL END) AS self_check_in_count,
  AVG(CASE WHEN amenities LIKE '%Self check-in%' THEN price ELSE NULL END) AS self_check_in_avg_price,

  COUNT(CASE WHEN amenities LIKE '%Oven%' THEN 1 ELSE NULL END) AS oven_count,
  AVG(CASE WHEN amenities LIKE '%Oven%' THEN price ELSE NULL END) AS oven_avg_price,

  COUNT(CASE WHEN amenities LIKE '%Stove%' THEN 1 ELSE NULL END) AS stove_count,
  AVG(CASE WHEN amenities LIKE '%Stove%' THEN price ELSE NULL END) AS stove_avg_price,

  COUNT(CASE WHEN amenities LIKE '%Bathtub%' THEN 1 ELSE NULL END) AS bathtub_count,
  AVG(CASE WHEN amenities LIKE '%Bathtub%' THEN price ELSE NULL END) AS bathtub_avg_price,

  COUNT(CASE WHEN amenities LIKE '%Backyard%' THEN 1 ELSE NULL END) AS backyard_count,
  AVG(CASE WHEN amenities LIKE '%Backyard%' THEN price ELSE NULL END) AS backyard_avg_price,

  COUNT(CASE WHEN amenities LIKE '%BBQ grill%' THEN 1 ELSE NULL END) AS bbq_grill_count,
  AVG(CASE WHEN amenities LIKE '%BBQ grill%' THEN price ELSE NULL END) AS bbq_grill_avg_price,

  COUNT(CASE WHEN amenities LIKE '%Security cameras%' THEN 1 ELSE NULL END) AS security_cameras_count,
  AVG(CASE WHEN amenities LIKE '%Security cameras%' THEN price ELSE NULL END) AS security_cameras_avg_price,

  COUNT(CASE WHEN amenities LIKE '%Pets allowed%' THEN 1 ELSE NULL END) AS pets_count,
  AVG(CASE WHEN amenities LIKE '%Pets allowed%' THEN price ELSE NULL END) AS pets_avg_price,

  COUNT(CASE WHEN amenities LIKE '%Fire pit%' THEN 1 ELSE NULL END) AS fire_pit_count,
  AVG(CASE WHEN amenities LIKE '%Fire pit%' THEN price ELSE NULL END) AS fire_pit_avg_price,

  COUNT(CASE WHEN amenities LIKE '%Single level home%' THEN 1 ELSE NULL END) AS single_level_count,
  AVG(CASE WHEN amenities LIKE '%Single level home%' THEN price ELSE NULL END) AS single_level_avg_price, 

  COUNT(CASE WHEN amenities LIKE '%Gym%' THEN 1 ELSE NULL END) AS gym_count,
  AVG(CASE WHEN amenities LIKE '%Gym%' THEN price ELSE NULL END) AS gym_price,

  COUNT(CASE WHEN amenities LIKE '%Exercise equipment%' THEN 1 ELSE NULL END) AS exercise_equipment_count,
  AVG(CASE WHEN amenities LIKE '%Exercise equipment%' THEN price ELSE NULL END) AS exercise_equipment_price,

  COUNT(CASE WHEN amenities LIKE '%Pool%' THEN 1 ELSE NULL END) AS pool_count,
  AVG(CASE WHEN amenities LIKE '%Pool%' THEN price ELSE NULL END) AS pool_avg_price,

  COUNT(CASE WHEN amenities LIKE '%Hot tub%' THEN 1 ELSE NULL END) AS hot_tub_count,
  AVG(CASE WHEN amenities LIKE '%Hot tub%' THEN price ELSE NULL END) AS hot_tub_price,

  COUNT(CASE WHEN amenities LIKE '%books and toys%' THEN 1 ELSE NULL END) AS childrens_books_n_toys_count,
  AVG(CASE WHEN amenities LIKE '%books and toys%' THEN price ELSE NULL END) AS childrens_books_n_toys_price,

  COUNT(CASE WHEN amenities LIKE '%Crib%' THEN 1 ELSE NULL END) AS crib_count,
  AVG(CASE WHEN amenities LIKE '%Crib%' THEN price ELSE NULL END) AS crib_price,

  COUNT(CASE WHEN amenities LIKE '%Smoking allowed%' THEN 1 ELSE NULL END) AS smoking_count,
  AVG(CASE WHEN amenities LIKE '%Smoking allowed%' THEN price ELSE NULL END) AS smoking_avg_price,

  COUNT(CASE WHEN amenities LIKE '%EV charger%' THEN 1 ELSE NULL END) AS ev_charger_count,
  AVG(CASE WHEN amenities LIKE '%EV charger%' THEN price ELSE NULL END) AS ev_charger_price,

  COUNT(CASE WHEN amenities LIKE '%Game console%' THEN 1 ELSE NULL END) AS game_console_count,
  AVG(CASE WHEN amenities LIKE '%Game console%' THEN price ELSE NULL END) AS game_console_avg_price,

  COUNT(CASE WHEN amenities LIKE '%P Table%' THEN 1 ELSE NULL END) AS pool_table_count,
  AVG(CASE WHEN amenities LIKE '%P Table%' THEN price ELSE NULL END) AS pool_table_avg_price,

  COUNT(CASE WHEN amenities LIKE '%Bidet%' THEN 1 ELSE NULL END) AS bidet_count,
  AVG(CASE WHEN amenities LIKE '%Bidet%' THEN price ELSE NULL END) AS bidet_avg_price,

  COUNT(CASE WHEN amenities LIKE '%Bikes%' THEN 1 ELSE NULL END) AS bikes_count,
  AVG(CASE WHEN amenities LIKE '%Bikes%' THEN price ELSE NULL END) AS bikes_avg_price,

  COUNT(CASE WHEN amenities LIKE '%Ping pong table%' THEN 1 ELSE NULL END) AS ping_pong_count,
  AVG(CASE WHEN amenities LIKE '%Ping pong table%' THEN price ELSE NULL END) AS ping_pong_avg_price,

  COUNT(CASE WHEN amenities LIKE '%Sauna%' THEN 1 ELSE NULL END) AS sauna_count,
  AVG(CASE WHEN amenities LIKE '%Sauna%' THEN price ELSE NULL END) AS sauna_avg_price


FROM `airbnb.listings`

GROUP BY neighbourhood_cleansed

ORDER BY neighbourhood_cleansed;


--change the neighborhood column name because it's already used
ALTER TABLE airbnb.amenity_prices
RENAME COLUMN neighbourhood_cleansed TO neighborhood20;

--summary table of all data
CREATE TABLE IF NOT EXISTS airbnb.average_price

AS
SELECT
  neighborhood,
  number_of_listings,
  average_price,

  washer_count,
  washer_avg_price,

  free_parking_count,
  free_parking_avg_price,

  wifi_count,
  wifi_avg_price,

  tv_count,
  tv_avg_price,

  kitchen_count,
  kitchen_avg_price,

  ac_count,
  ac_avg_price,

  window_ac_count,
  window_ac_avg_price,

  self_check_in_count,
  self_check_in_avg_price,

  oven_count,
  oven_avg_price,

  stove_count,
  stove_avg_price,

  bathtub_count,
  bathtub_avg_price,

  backyard_count,
  backyard_avg_price,

  bbq_grill_count,
  bbq_grill_avg_price,

  security_cameras_count,
  security_cameras_avg_price,

  pets_count,
  pets_avg_price,

  fire_pit_count,
  fire_pit_avg_price,

  single_level_count,
  single_level_avg_price,

  gym_count,
  gym_price,

  exercise_equipment_count,
  exercise_equipment_price,

  pool_count,
  pool_avg_price,

  hot_tub_count,
  hot_tub_price,

  childrens_books_n_toys_count,
  childrens_books_n_toys_price,

  crib_count,
  crib_price,

  smoking_count,
  smoking_avg_price,

  ev_charger_count,
  ev_charger_price,

  game_console_count,
  game_console_avg_price,

  pool_table_count,
  pool_table_avg_price,

  bidet_count,
  bidet_avg_price,

  bikes_count,
  bikes_avg_price,

  ping_pong_count,
  ping_pong_avg_price,

  sauna_count,
  sauna_avg_price


FROM
`airbnb.neighborhoods` AS a

LEFT JOIN
`airbnb.amenity_prices` AS b ON a.neighborhood = b.neighborhood20

ORDER BY neighborhood;

--delete extra tables
DROP TABLE airbnb.amenity_prices;
DROP TABLE airbnb.neighborhoods;