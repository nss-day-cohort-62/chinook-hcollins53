SELECT 
    c.FirstName || ' ' || c.LastName AS `fullName`, 
    i.InvoiceId,
    i.InvoiceDate,
    i.BillingCountry
FROM Invoice i 
JOIN Customer c ON i.CustomerId = c.CustomerId
WHERE c.Country = "Brazil"

