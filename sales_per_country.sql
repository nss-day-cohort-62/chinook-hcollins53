
SELECT 
    SUM(i.Total) as TotalSales,
    i.BillingCountry
FROM Invoice i 
GROUP BY i.BillingCountry