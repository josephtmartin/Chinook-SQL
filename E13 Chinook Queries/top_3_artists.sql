SELECT TOP 3 Ar.[Name], count(il.TrackId) as numOfPurchases
FROM InvoiceLine il
	join Invoice  i
		on i.InvoiceId = il.InvoiceId
	join Track t
		on t.TrackId = il.TrackId
	join Album a
		on t.TrackId = a.AlbumId
	join Artist ar
		on ar.ArtistId = a.AlbumId
GROUP BY ar.[Name]
ORDER BY numOfPurchases DESC