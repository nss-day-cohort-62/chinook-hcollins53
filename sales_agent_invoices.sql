SELECT DISTINCT
    e.FirstName,
    e.LastName,
    (
        SELECT GROUP_CONCAT(i.InvoiceId)
        FROM Customer c 
        JOIN Invoice i ON i.customerId = c.customerId
        WHERE c.supportRepId = e.employeeId
    ) as InvoiceId
FROM Employee e 
WHERE e.title = "Sales Support Agent"

SELECT
e.FirstName,
e.LastName,
i.InvoiceId
FROM Employee e 
JOIN Customer c ON c.SupportRepId = e.EmployeeId
JOIN Invoice i ON i.CustomerId = c.CustomerId
WHERE e.title = "Sales Support Agent"

