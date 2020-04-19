SELECT  
	c.country, 
	sum(i.total) AS Sales
FROM Customer c
JOIN Invoice i
	ON c.CustomerId = i.CustomerId
GROUP BY 1
HAVING STRFTIME('%Y', i.invoicedate) = '2009'
ORDER BY 2 DESC
LIMIT 5;