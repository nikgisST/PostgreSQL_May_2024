CREATE TABLE 
	bookings_calculation
AS 
SELECT
	booked_for,
	CAST(booked_for * 50 AS NUMERIC) AS multiplication,   -- converts the result to a NUMERIC data type
	CAST(booked_for % 50 AS NUMERIC) AS modulo            -- converts the result to a NUMERIC data type
FROM 
	bookings
WHERE
	apartment_id = 93;
