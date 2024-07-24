# SQL

This SQL repo is sumally of query.

[Setup](https://github.com/hikaori/SQL/README.md#set-up) : Before run query.

# Technology

- Postgres : DB
- Docker : Build DB with docker.
- DBever : Run query.

# Set up

1. Create DB.

   `$docker run --name my_postgres -p 5432:5432 -e POSTGRES_PASSWORD=mysecretpassword -d postgres`

   Above Command Description🔽

   docker run --name {DockerContainerName} -p {LocalportTO}:{Containerport.PostgreSQL database defaults 5432} -e POSTGRES_PASSWORD={DB_Passowrd} -d {DockerImageName}

2. Connect step1's DB in DBeaver.
   <img width="954" alt="Screen Shot 2024-05-20 at 6 38 36 PM" src="https://github.com/hikaori/SQL/assets/23109342/d906cc38-67dd-42ac-8f05-319c8fc31767">

3. Now ready to run query in DBeaver.

<img width="676" alt="Screen Shot 2024-05-20 at 6 50 07 PM" src="https://github.com/hikaori/SQL/assets/23109342/25e11cf4-e5fc-4d14-bbe6-6c7522e745e3">

# SQL

## Create Table / Alter Columns

Create Table

```
CREATE TABLE bands (
id INT NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
name VARCHAR(225) NOT NULL
);

CREATE TABLE album (
id INT NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
name VARCHAR(225) NOT NULL,
band_id INT NOT NULL REFERENCES bands(id) ON DELETE CASCADE
);
```

Alter Columns

```
ALTER TABLE album
ADD release_year INT;
```

Primary key / Foreign key / Not null / Result check below commit.
[branch1:Create bands and albums table](https://github.com/hikaori/SQL/pull/1)

## Add/Update Data in Table / Query(select/Aliace/order) from the table

Add data into table

```
INSERT INTO TableName (ColumnName)
VALUES ('Value1'), ('Value2'), .... ,('Value5');
```

e.g 1)

```
INSERT INTO bands (name)
VALUES ('Iron Maiden'), ('Deuce'),('Avenged Sevenfold'),('Ankor');
```

e.g 2)

```
INSERT INTO album (name, release_year, band_id)
VALUES ('The number of the Beasts', 1985, 1),
		('Power Slave', 1984, 1),
		('Nightmare', 2018, 2),
		('Nightmare', 2010, 3),
		('Test Album', NULL , 3);
```

Update existed data.

```
UPDATE tableName
SET upDateColumnName = upDateValue
WHERE targetDataColumnName = targetDataColumnValue;
```

e.g)

```
UPDATE album
SET release_year = 1982
WHERE id = 1;
```

Query from table.
Select all data from table.

```
SELECT * FROM tableName;
```

Select specific number of data.

```
SELECT * FROM tableName LIMIT 2;;
```

Aliace column.

```
SELECT id AS "ID", name AS "Band Name" FROM tableName;
```

Order by.

```
SELECT * FROM tableName ORDER BY columnName;
SELECT * FROM tableName ORDER BY columnName ASC; // default is ascending order

SELECT * FROM tableName ORDER BY columnName; DESC // descending order
```

Select condition data.

```
SELECT * FROM album
WHERE name LIKE '%er%' OR band_id = 2 ;
```

```
SELECT * FROM album
WHERE release_year IS NULL;
```

Details check below commit. [branch2:](https://github.com/hikaori/SQL/pull/2)
