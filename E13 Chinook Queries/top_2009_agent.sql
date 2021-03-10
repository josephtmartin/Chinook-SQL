SELECT TOP 1 e.FirstName, e.LastName, sum(il.UnitPrice * il.Quantity) as totalSales
FROM InvoiceLine il
	join Invoice  i
		on i.InvoiceId = il.InvoiceId
	join Customer c
		on I.CustomerId = c.CustomerId
	join Employee e
		on c.SupportRepId = e.EmployeeId
WHERE i.InvoiceDate > '2009-01-01 00:00:00'
AND i.InvoiceDate < '2010-01-01 00:00:00'
GROUP BY e.FirstName, e.LastName
ORDER BY totalSales DESC