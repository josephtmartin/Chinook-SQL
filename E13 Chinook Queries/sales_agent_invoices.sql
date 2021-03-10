SELECT e.FirstName, e.LastName, i.*
FROM employee e
	join Invoice i
		on i.InvoiceId = e.EmployeeId
WHERE e.Title = 'Sales Support Agent'