CREATE VIEW continent_currency_usage
AS
SELECT
	ru.continent_code,
	ru.currency_code,
	ru.currency_usage
FROM (
	SELECT 
		ct.continent_code,
		ct.currency_code,
		ct.currency_usage,
		DENSE_RANK() OVER (PARTITION BY ct.continent_code ORDER BY ct.currency_usage DESC) AS ranked_usage
	FROM (
		SELECT 
			continent_code,
			currency_code,
			COUNT(currency_code) AS currency_usage
		FROM
			countries
		GROUP BY
			continent_code,
			currency_code
		HAVING
			COUNT(*) > 1  -- условието филтрира валути, които се използват само от една държава на континента.
		ORDER BY
			continent_code
	) AS ct
) AS ru
WHERE 
	ru.ranked_usage = 1
ORDER BY
	ru.currency_usage DESC,
	ru.continent_code ASC,
	ru.currency_code ASC;



--continent_code	currency_code	currency_usage	ranked_usage
--NA	            USD	            2	            1
--EU	            EUR	            3	            1
--EU	            GBP	            1               1



--| Value | DENSE_RANK() |
--|-------|--------------|
--|   10  |      1       |
--|   10  |      1       |
--|    9  |      2       |
--|    8  |      3       |