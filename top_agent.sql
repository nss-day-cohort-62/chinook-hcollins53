SELECT Sum(I.Total) AS `TOTALSALES`,
E.FirstName || ' ' || E.LastName AS `fullName`
From Employee e 
JOIN Customer c On c.SupportRepId = e.EmployeeId
JOIN Invoice i ON i.customerId = c.customerId
GROUP BY e.employeeId
HAVING SUM(i.Total) = (
    SELECT MAX(total_sales)
    FROM (
        SELECT SUM(Total) AS total_sales
        FROM Invoice i 
        JOIN Employee e On c.SupportRepId = e.EmployeeId
        JOIN Customer c ON i.customerId = c.customerId
        GROUP BY e.EmployeeId
    ) AS employee_sales
)
ORDER BY TOTALSALES

