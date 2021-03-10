SELECT p.Name, count(pt.TrackId) as NumberOfTracks
FROM PlaylistTrack pt
	join Track t
		on t.TrackId = pt.TrackId
	join Playlist p
		on p.PlaylistId = pt.PlaylistId
GROUP BY p.Name