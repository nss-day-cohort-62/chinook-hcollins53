
    SELECT MAX(total_sales), fullName
    FROM (
        SELECT SUM(Total) AS total_sales, E.FirstName || ' ' || E.LastName AS `fullName`
        FROM Invoice i 
        JOIN Employee e On c.SupportRepId = e.EmployeeId
        JOIN Customer c ON i.customerId = c.customerId
        GROUP BY e.EmployeeId
    ) 



