SELECT 
i.InvoiceId,
COUNT(*) as LineItems
FROM Invoice i 
Join InvoiceLine l ON i.InvoiceId = l.InvoiceId
GROUP BY i.InvoiceId