UPDATE 
	projects
SET 
	end_date = start_date + INTERVAL '5 months'   -- In PostgreSQL, the INTERVAL keyword is used to specify a time period. 
WHERE 
	end_date IS NULL;



--INTERVAL 'value unit':  
  --value is the number of units.
  --unit is the time unit (e.g., day, month, year).