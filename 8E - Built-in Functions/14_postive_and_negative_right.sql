SELECT 
	peak_name,     -- Everest
	RIGHT(peak_name, 4) AS positive_right, -- Get the last 4: 'rest'
	RIGHT(peak_name, -4) AS negative_right -- Get everything but the first 4: 'est'
FROM 
	peaks;