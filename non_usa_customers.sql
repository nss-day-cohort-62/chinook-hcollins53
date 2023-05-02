SELECT 
    c.FirstName || ' ' || c.LastName AS `fullName`,
    c.customerId,
    c.country
FROM Customer c 
WHERE c.country != "USA"