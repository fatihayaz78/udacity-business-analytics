SELECT 
	ar.Name, 
	COUNT(al.Title) as Total_Album
FROM Artist AS ar
JOIN Album AS al
	ON ar.ArtistId=al.ArtistId
GROUP by ar.Name
ORDER by 2 DESC
LIMIT 5;