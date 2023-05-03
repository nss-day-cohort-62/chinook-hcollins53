SELECT SUM(l.Quantity) AS TOTAL,
t.name
From Track t 
Join InvoiceLine l ON t.trackId = l.trackId
JOIN Invoice i on i.InvoiceId = l.InvoiceId
GROUP BY t.Name
ORDER BY Total DESC
LIMIT 5