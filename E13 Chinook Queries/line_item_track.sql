SELECT t.Name, il.Quantity
FROM InvoiceLine il
		join Track t
		on il.TrackId = t.TrackId