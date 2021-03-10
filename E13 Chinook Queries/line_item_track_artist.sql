SELECT t.Name as TrackName,
	   ar.Name as ArtistName,
	   il.* 
FROM InvoiceLine il
		join Track t
		on il.TrackId = t.TrackId
		join Album A
		on t.AlbumId = a.AlbumId
		join Artist Ar
		on a.ArtistId = ar.ArtistId