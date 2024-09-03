CREATE TABLE bands (
id INT NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY, 
name VARCHAR(225) NOT NULL 
);

CREATE TABLE album (
id INT NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
name VARCHAR(225) NOT NULL,
band_id INT NOT NULL REFERENCES bands(id) ON DELETE CASCADE
);

ALTER TABLE album 
ADD release_year INT;

-- branch2 start.

INSERT INTO bands (name)
VALUES ('Iron Maiden'), ('Deuce'),('Avenged Sevenfold'),('Ankor');

SELECT * FROM bands;

SELECT * FROM bands LIMIT 2;

SELECT id AS "ID", name AS "Band Name" FROM bands; 

SELECT * FROM bands ORDER BY name DESC;

INSERT INTO album (name, release_year, band_id)
VALUES ('The number of the Beasts', 1985, 1),
		('Power Slave', 1984, 1),
		('Nightmare', 2018, 2),
		('Nightmare', 2010, 3),
		('Test Album', NULL , 3);
SELECT * FROM album;

SELECT * FROM album;
SELECT DISTINCT name FROM album;

UPDATE album 
SET release_year = 1982
WHERE id = 1;

SELECT * FROM album
WHERE name LIKE '%er%';

SELECT * FROM album
WHERE name LIKE '%er%' OR band_id = 2 ;

SELECT * FROM album
WHERE release_year = 1984 AND band_id = 1;

SELECT * FROM album
WHERE release_year IS NULL;

SELECT * FROM bands;
SELECT * FROM albums;
SELECT * FROM bands
JOIN albums ON bands.id  = albums.band_id;

SELECT * FROM bands
INNER JOIN albums ON bands.id  = albums.band_id;

SELECT * FROM bands
LEFT JOIN albums ON bands.id = albums.band_id;

SELECT * FROM bands
RIGHT JOIN albums ON bands.id = albums.band_id;

SELECT AVG(release_year) FROM albums;

SELECT SUM(release_year) FROM albums;

SELECT * FROM albums ;
SELECT band_id, COUNT(band_id) FROM albums
GROUP BY band_id;

SELECT b.name AS band_name, COUNT(a.id) AS num_albums
FROM bands AS b
LEFT JOIN albums AS a ON b.id  = a.band_id 
GROUP BY b.id;

SELECT b.name AS band_name, COUNT(a.id) AS num_albums
FROM bands AS b
LEFT JOIN albums AS a ON b.id  = a.band_id 
GROUP BY b.id
-- if you want to use value that created by aggregate(COUNT) need to use "HAVING" instead of "WHERE" + NOT before "GROUP BY" 
HAVING COUNT(a.id) = 1; 


SELECT b.name AS band_name, COUNT(a.id) AS n_albums
FROM bands AS b
LEFT JOIN albums AS a ON b.id  = a.band_id 
WHERE b."name" = 'Deuce'
GROUP BY b.id
HAVING COUNT(a.id) = 1;

