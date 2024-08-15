SELECT 
	peak_name,  -- Everest
	LEFT(peak_name, 4) AS positive_left, -- retrieves the first 4 characters of peak_name: 'Ever'
	LEFT(peak_name, -4) AS negative_left -- Get everything but the last 4: 'Eve'
FROM 
	peaks;