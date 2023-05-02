SELECT MAX(I.Total) AS `TOTAL SALES`,
E.FirstName || ' ' || E.LastName AS `fullName`
From Employee e 
JOIN Customer c On c.SupportRepId = e.EmployeeId
JOIN Invoice i ON i.customerId = c.customerId
WHERE e.title = "Sales Support Agent" and strftime('%Y', InvoiceDate) = '2009'
ORDER BY e.employeeId
