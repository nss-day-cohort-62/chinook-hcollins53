SELECT DISTINCT
t.name as `Track Name`,
a.title as `Album`,
m.name as `Media Type`,
g.name as `Genre`
From Track t 
JOIN Album a ON t.albumId = a.albumId
JOIN MediaType m ON t.MediaTypeId = m.MediaTypeId
JOIN Genre g ON t.GenreId = g.GenreId