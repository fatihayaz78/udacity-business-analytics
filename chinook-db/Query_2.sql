SELECT 
	InvoiceDate, 
	min(country) as mc
FROM Invoice AS i
JOIN Customer AS c
	ON c.CustomerId = i.CustomerId
GROUP BY InvoiceDate
LIMIT 10;