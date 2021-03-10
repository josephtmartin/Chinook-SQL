SELECT c.FirstName, c.LastName, i.InvoiceId, InvoiceDate, BillingCountry
FROM Invoice i
	join customer c
		on i.customerId = c.customerid
WHERE BillingCountry = 'Brazil'