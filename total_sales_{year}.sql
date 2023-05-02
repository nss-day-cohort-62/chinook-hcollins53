SELECT 
    CASE 
        WHEN InvoiceDate >= '2009-01-01' AND InvoiceDate < '2010-01-01' THEN '2009'
        WHEN InvoiceDate >= '2010-01-01' AND InvoiceDate < '2011-01-01' THEN '2010'
        WHEN InvoiceDate >= '2011-01-01' AND InvoiceDate < '2012-01-01' THEN '2011'
    END as Year,
    SUM(Total) as TotalSales
FROM Invoice
WHERE InvoiceDate >= '2009-01-01' AND InvoiceDate < '2012-01-01'
GROUP BY Year;




SELECT 
    strftime('%Y', InvoiceDate) as Year,
    SUM(Total) as TotalSales
FROM Invoice
WHERE strftime('%Y', InvoiceDate) BETWEEN '2009' AND '2011'
GROUP BY strftime('%Y', InvoiceDate);
