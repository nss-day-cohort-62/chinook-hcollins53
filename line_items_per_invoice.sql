SELECT DISTINCT COUNT() as LineItems
FROM InvoiceLine i
GROUP by i.InvoiceId