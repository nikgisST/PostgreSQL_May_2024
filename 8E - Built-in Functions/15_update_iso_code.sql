UPDATE 
	countries
SET 
	iso_code = UPPER(LEFT(country_name, 3))   -- FRA; GER, SPA
WHERE 
	iso_code IS NULL;
