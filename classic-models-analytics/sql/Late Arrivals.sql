/* Shipping is delayed due to inclement weather. They could take up to 3 days to arrive.
Give a list of affected orders. */

SELECT *,
date_add(shippedDate, INTERVAL 3 DAY) AS latest_arrival,
CASE WHEN date_add(shippedDate, INTERVAL 3 DAY) > requiredDate THEN 1 ELSE 0 END AS late_flag
FROM orders
WHERE (CASE WHEN date_add(shippedDate, INTERVAL 3 DAY) > requiredDate THEN 1 ELSE 0 END) = 1