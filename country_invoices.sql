SELECT DISTINCT COUNT(*) AS `Number of Invoices`
FROM Invoice i 
GROUP BY i.BillingCountry
