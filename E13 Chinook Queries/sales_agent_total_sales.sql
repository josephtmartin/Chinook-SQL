SELECT e.FirstName, e.LastName, sum(il.UnitPrice * il.Quantity) as totalSales
FROM InvoiceLine il
	join Invoice  i
		on i.InvoiceId = il.InvoiceId
	join Customer c
		on I.CustomerId = c.CustomerId
	join Employee e
		on c.SupportRepId = e.EmployeeId
GROUP BY e.FirstName, e.LastName