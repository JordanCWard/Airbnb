CREATE TABLE IF NOT EXISTS airbnb.amenities AS

--all amenities for a listing are in a single cell, split the amenities into their own cells
WITH SplitStrings AS (
  SELECT
    amenities AS collection_column,
    SPLIT(amenities, ',') AS split_values

  FROM
    `totemic-cursor-395218.airbnb.listings`
  )

--count the number of listings for each amenity
SELECT
  TRIM(split_value) AS extracted_string,
  COUNT(*) AS count

FROM
  SplitStrings

CROSS JOIN
  UNNEST(split_values) AS split_value

GROUP BY
  extracted_string

HAVING
  COUNT(*) >= 1
  
ORDER BY
  count DESC;