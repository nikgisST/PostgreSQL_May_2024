ALTER TABLE 
	countries
	
ADD CONSTRAINT
	fk_countries_continents
FOREIGN KEY
	(continent_code)
REFERENCES
	continents(continent_code)
ON DELETE CASCADE,        -- if a row in the continents table is deleted, the corresponding rows in the countries table will be deleted automatically

ADD CONSTRAINT 
	fk_countries_currencies
FOREIGN KEY
	(currency_code)
REFERENCES
	currencies(currency_code)
ON DELETE CASCADE;