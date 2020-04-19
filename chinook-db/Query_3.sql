SELECT 
	mt.name, 
	COUNT(DISTINCT c.customerid) AS Customers
FROM customer AS c
JOIN invoice AS i
	ON c.customerid = i.customerid
JOIN invoiceline AS il
	ON i.invoiceid = il.invoiceid
JOIN Track AS t
	ON il.trackid = t.trackid
JOIN MediaType AS mt
	ON mt.mediatypeid = t.mediatypeid
GROUP BY mt.name
ORDER BY c.customerid DESC;