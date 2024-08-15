SELECT
	magic_wand_creator,
	MAX(deposit_amount) AS "Max Deposit Amount"
FROM 
	wizard_deposits
GROUP BY 
	magic_wand_creator
HAVING
	MAX(deposit_amount) < 20000 
		OR 
	MAX(deposit_amount) > 40000
ORDER BY
	"Max Deposit Amount" DESC
LIMIT 3;


--HAVING Clause
--Purpose: Filters groups after aggregation has been applied.
--Usage: Used to specify conditions on aggregated data (e.g., results of SUM(), MAX(), COUNT(), etc.).
--Scope: Applied after aggregation (e.g., after GROUP BY is processed).
--Example: HAVING MAX(deposit_amount) < 20000