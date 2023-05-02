SELECT
i.total,
c.FirstName || ' ' || c.LastName AS `Customer name`,
c.country,
e.FirstName || ' ' || e.LastName AS `Employee FullName`
FROM Invoice i 
JOIN Customer c ON i.customerId = c.customerId
JOIN Employee e ON e.employeeId = c.supportRepId