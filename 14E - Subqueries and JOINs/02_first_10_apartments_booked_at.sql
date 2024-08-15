SELECT 
	a.name,
	a.country,
	b.booked_at::DATE   --  truncates any time portion of TIMESTAMP or DATETIME value, returning only the date part
FROM
	apartments AS a
LEFT JOIN
	bookings AS b
USING
	(booking_id)
LIMIT 10;
