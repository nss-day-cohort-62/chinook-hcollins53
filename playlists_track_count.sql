SELECT COUNT(*) AS `Total number of tracks`,
p.name
FROM PlaylistTrack pt 
JOIN Playlist p ON pt.PlaylistId = p.PlaylistId
GROUP BY pt.PlaylistId