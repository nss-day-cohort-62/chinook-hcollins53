SELECT SUM(l.quantity) AS TOTAL,
a.name 
From Track t 
Join InvoiceLine l ON t.trackId = l.trackId
Join Artist a on a.artistId = al.artistId
Join Album al on al.AlbumId = t.AlbumId
GROUP BY a.name
ORDER BY Total DESC
LIMIT 3
