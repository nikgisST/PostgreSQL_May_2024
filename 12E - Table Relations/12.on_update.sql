ALTER TABLE 
	countries_rivers

-- ADD CONSTRAINT
-- 	pk_countries_rivers
-- PRIMARY KEY 
-- 	(river_id, country_code),       composite foreign key
	
ADD CONSTRAINT 
	fk_countries_rivers_rivers
FOREIGN KEY 
	(river_id)
REFERENCES 
	rivers(id)
ON UPDATE CASCADE,   -- if the country_code in the countries table is updated, the corresponding country_code values in the rivers table will also be updated automatically

ADD CONSTRAINT 
	fk_countries_rivers_countries
FOREIGN KEY 
	(country_code)
REFERENCES 
	countries(country_code)
ON UPDATE CASCADE;
