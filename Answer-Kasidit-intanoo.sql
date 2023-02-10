
 SELECT
   albums.name as Name,
   albums.release_year as 'Release Year',
   SUM(songs.length) as 'Duration'
    FROM albums
    JOIN songs on albums.id = songs.album_id
    GROUP BY songs.album_id
    ORDER BY Duration DESC
    LIMIT 1;

UPDATE albums 
  SET release_year = 1986
  WHERE id = 4;
     
INSERT INTO bands (name)
 VALUES ('Safeplanet');
     
INSERT INTO albums (name, release_year, band_id)
 VALUES ('Safeboys', 2019, 8);

DELETE FROM albums    
 WHERE id = 19;    
 DELETE FROM bands
 WHERE id = 8;
