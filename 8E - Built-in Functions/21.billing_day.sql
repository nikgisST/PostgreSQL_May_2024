ALTER TABLE
	bookings
ADD COLUMN 
	billing_day TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP;  -- TIMESTAMPTZ is datatype stores date, time, time zone
	                                            -- CURRENT_TIMESTAMP is built-in function returns the current date and time, timezone on system's clock
SELECT 
	TO_CHAR(billing_day, 'DD "Day" MM "Month" YYYY "Year" HH24:MI:SS') AS "Billing Day"  --04 "Day" 08 "Month" 2024 "Year" 14:23:45
FROM                      
	bookings;


-- TO_CHAR converts it to '04 "Day" 08 "Month" 2024 "Year" 14:23:45'