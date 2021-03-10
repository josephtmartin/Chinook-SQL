SELECT count(*) as NumberOfInvoices, i.BillingCountry
FROM Invoice i
GROUP BY i.BillingCountry