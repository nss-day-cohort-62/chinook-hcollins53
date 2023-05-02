SELECT 
E.FirstName || ' ' || E.LastName AS `fullName`,
COUNT(*) AS `Total Sales`
From Employee e 
JOIN Customer c On c.SupportRepId = e.EmployeeId
JOIN Invoice i ON i.customerId = c.customerId
GROUP BY e.employeeId