SELECT  g.[Name], Count(il.InvoiceId) as numOfPurchases
FROM InvoiceLine il
	join Invoice  i
		on i.InvoiceId = il.InvoiceId
	join Track t
		on t.TrackId = il.TrackId
	join Genre G
		on g.GenreId = t.TrackId
GROUP BY g.[Name]
ORDER BY numOfPurchases DESC