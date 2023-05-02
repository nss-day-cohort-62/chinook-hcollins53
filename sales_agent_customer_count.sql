SELECT
E.FirstName || ' ' || E.LastName AS `fullName`,
COUNT(*) as `Customers assigned`
FROM Employee e 
JOIN Customer c ON c.SupportRepId = e.employeeId
GROUP BY e.EmployeeId