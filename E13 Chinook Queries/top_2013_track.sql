SELECT t.[Name], count(il.TrackId) as numOfPurchases
FROM InvoiceLine il
	join Invoice  i
		on i.InvoiceId = il.InvoiceId
	join Track t
		on t.TrackId = il.TrackId
WHERE i.InvoiceDate > '2013-01-01 00:00:00'
AND i.InvoiceDate < '2014-01-01 00:00:00'
GROUP BY t.[Name]
ORDER BY numOfPurchases DESC