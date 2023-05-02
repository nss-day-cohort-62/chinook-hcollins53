SELECT 
    SUM(i.Total) AS TotalSales,
    i.BillingCountry
FROM Invoice i 
GROUP BY i.BillingCountry
HAVING SUM(i.Total) = (
    SELECT MAX(total_sales)
    FROM (
        SELECT SUM(Total) AS total_sales
        FROM Invoice
        GROUP BY BillingCountry
    ) AS country_sales
)
ORDER BY TotalSales
