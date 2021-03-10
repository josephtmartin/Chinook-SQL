SELECT i.Total, 
	   c.FirstName as CustomerFirstName,
	   c.LastName as CustomerLastName,
	   c.Country,
	   e.FirstName as EmployeeFirstName, 
	   e.LastName as EmployeeLastName
FROM Invoice i
	join Customer c
		on i.CustomerId = c.CustomerId
	join Employee e
		on e.EmployeeId = c.SupportRepId