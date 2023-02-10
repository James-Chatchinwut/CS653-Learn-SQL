
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
SELECT * FROM albums ; -- to check year in albums id No.4
     
INSERT INTO bands (name)
 VALUES ('Safeplanet');
-- SELECT * FROM bands ; to check band_id before add albums
     
INSERT INTO albums (name, release_year, band_id)
 VALUES ('Safeboys', 2019, 8);

SELECT * FROM albums;
-- SELECT * FROM albums ; to check albums id before delete albums.
DELETE FROM albums    
 WHERE id = 19;
 -- SELECT * FROM bands ; to check albums id before delete bands.
 DELETE FROM bands
 WHERE id = 8;
 
SELECT * FROM albums;
