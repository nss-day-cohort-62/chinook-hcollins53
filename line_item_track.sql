SELECT
i.InvoiceLineId,
i.InvoiceId,
t.name,
i.UnitPrice
FROM InvoiceLine i 
JOIN Track t ON i.trackId = t.TrackId