SELECT SUM(L.quantity) AS TOTAL, M.name
FROM MediaType M 
JOIN Track T ON M.MediaTypeId = T.MediaTypeId
JOIN InvoiceLine L ON T.trackId = L.trackId
GROUP BY M.MediaTypeId, M.name
HAVING SUM(L.quantity) = (
    SELECT MAX(total_sales)
    FROM (
        SELECT SUM(IL.quantity) AS total_sales
        FROM InvoiceLine IL
        JOIN Track T ON IL.trackId = T.trackId
        JOIN MediaType M ON T.MediaTypeId = M.MediaTypeId
        GROUP BY M.MediaTypeId
    ) AS mediatype_sales
)
ORDER BY TOTAL DESC
LIMIT 1;




