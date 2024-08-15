SELECT
	user_id,
	AGE(starts_at, booked_at) AS early_birds   -- AGE function calculates the interval between two timestamps, returns INTERVAL type
FROM
	bookings
WHERE
	starts_at - booked_at >= '10 MONTHS'