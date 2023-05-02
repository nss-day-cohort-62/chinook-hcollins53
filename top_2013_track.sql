SELECT SUM(Quantity) AS TOTAL, 
       t.Name 
FROM Track t 
JOIN InvoiceLine l ON t.TrackId = l.TrackId 
JOIN Invoice i ON i.InvoiceId = l.InvoiceId 
WHERE strftime('%Y', InvoiceDate) = '2013' 
GROUP BY t.Name
ORDER BY TOTAL DESC
