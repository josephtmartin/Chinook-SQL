SELECT count(*) as NumberOfInvoicesIn2009
FROM Invoice i
WHERE i.InvoiceDate > '2009-01-01 00:00:00'
AND i.InvoiceDate < '2010-01-01 00:00:00'

SELECT count(*) as NumberOfInvoicesIn2011
FROM Invoice i
WHERE i.InvoiceDate > '2011-01-01 00:00:00'
AND i.InvoiceDate < '2012-01-01 00:00:00'