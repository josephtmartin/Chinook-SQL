SELECT TOP 5 t.[Name], count(il.Quantity) as numOfPurchases
FROM InvoiceLine il
	join Invoice  i
		on i.InvoiceId = il.InvoiceId
	join Track t
		on t.TrackId = il.TrackId
GROUP BY t.[Name]
ORDER BY numOfPurchases DESC