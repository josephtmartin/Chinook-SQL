SELECT c.Country, sum(il.Quantity * il.UnitPrice) as totalSales
FROM InvoiceLine il
	join Invoice  i
		on i.InvoiceId = il.InvoiceId
	join Customer c
		on I.CustomerId = c.CustomerId
GROUP BY c.Country
ORDER BY totalSales DESC