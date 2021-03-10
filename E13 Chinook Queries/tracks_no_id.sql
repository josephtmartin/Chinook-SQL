SELECT t.Name, a.Title as Album, mt.MediaTypeId as MediaType, g.Name as Genre
FROM Track t
	join Genre g
		on g.GenreId = t.GenreId
	join MediaType mt
		on mt.MediaTypeId = t.MediaTypeId
	join Album a
		on a.AlbumId = t.AlbumId