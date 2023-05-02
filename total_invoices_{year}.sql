
SELECT COUNT(*) as Invoices
FROM Invoice i
WHERE strftime('%Y', InvoiceDate) BETWEEN '2009' AND '2011';


