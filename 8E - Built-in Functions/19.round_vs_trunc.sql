SELECT
	latitude,
	ROUND(latitude, 2),    -- ROUND(40.98765, 2) results in 40.99; ROUND(52.45678, 2) results in 52.46
	TRUNC(latitude, 2)     -- TRUNC(40.98765, 2) results in 40.98; TRUNC(52.45678, 2) results in 52.45
FROM
	apartments;