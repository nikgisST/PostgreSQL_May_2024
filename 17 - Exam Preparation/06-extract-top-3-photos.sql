SELECT p.id AS photo_id, p.capture_date, p.description, COUNT(c.id) AS comments_count
	FROM photos p
	JOIN comments c 
		ON p.id = c.photo_id
WHERE p.description IS NOT NULL
GROUP BY p.id, p.capture_date, p.description
ORDER BY comments_count DESC, p.id ASC
LIMIT 3;