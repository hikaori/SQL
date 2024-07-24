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