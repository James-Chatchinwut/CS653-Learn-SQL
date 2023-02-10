--Answer by KASIDIT INTANOO
 
--1.1 
 CREATE TABLE songs(
     id INT NOT NULL AUTO_INCREMENT,
     name VARCHAR(255) NOT NULL,
     length FLOAT NOT NULL,
     album_id INT NOT NULL,
     PRIMARY KEY (id),
    FOREIGN KEY (album_id) REFERENCES albums(id)
);
--1.2 
  INSERT INTO songs(id,name,length,album_id) 
  VALUES (1,'Arrival',1+(30/60),1); and more...

--2.
SELECT DISTINCT bands.name AS 'Band Name'
FROM bands
JOIN albums ON bands.id = albums.band_id;

--3.
SELECT * FROM albums
WHERE release_year IS NOT NULL
ORDER BY release_year
LIMIT 1;

--4.
SELECT DISTINCT bands.name AS 'Band Name'
FROM bands
JOIN albums ON bands.id = albums.band_id;

--5.

--6.
 SELECT
   albums.name as Name,
   albums.release_year as 'Release Year',
   SUM(songs.length) as 'Duration'
    FROM albums
    JOIN songs on albums.id = songs.album_id
    GROUP BY songs.album_id
    ORDER BY Duration DESC
    LIMIT 1;

--7.
  UPDATE albums 
     SET release_year = 1986
     WHERE id = 4;

--8. 
INSERT INTO bands (name)
 VALUES ('Safeplanet');
     
INSERT INTO albums (name, release_year, band_id)
 VALUES ('Safeboys', 2019, 8);


--9.
DELETE FROM albums    
 WHERE id = 19;    
 DELETE FROM bands
 WHERE id = 8;
