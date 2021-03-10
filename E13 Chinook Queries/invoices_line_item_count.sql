SELECT *
FROM Invoice i
	join (
	SELECT invoiceId, count(*) as numberoflineitems
	FROM InvoiceLine
	GROUP BY InvoiceId
	) linecount
	  on linecount.InvoiceId= i.InvoiceId