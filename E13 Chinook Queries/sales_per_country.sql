SELECT c.Country, count(il.InvoiceId) as numOfSales
FROM InvoiceLine il
	join Invoice  i
		on i.InvoiceId = il.InvoiceId
	join Customer c
		on I.CustomerId = c.CustomerId
GROUP BY c.Country