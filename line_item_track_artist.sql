SELECT
i.InvoiceLineId,
t.name as `Track Name`,
a.name as `Artist Name`
FROM InvoiceLine i 
JOIN Track t ON i.trackId = t.TrackId
JOIN Album al ON t.AlbumId = al.AlbumId
JOIN Artist a ON al.ArtistId = a.ArtistId