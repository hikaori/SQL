# SQL

This SQL repo is sumally of query.

[Setup](https://github.com/hikaori/SQL/edit/main/README.md#set-up) : Before run query.

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

- Create a table called `bands` which has `id` and `name` inside.
- Create a table called `albums` which has `id`, `name`, and `band_id` inside.

- Foreign key(\*1) will be bands table's id and albums table's band_id.
- Add `release_year` in `albums` table.

`bands` Table

`name`: Type string that can store 225 character.Not null(\*2)

`id` : Type integer. automaticaly inclease. Primary key(\*3).

`albums` Table

`name`: Type string that can store 225 character. Not null(\*2)

`id` : Type integer. automaticaly inclease the number. Primary key(\*3).
`release_year`: Type integer. Nullable since it's possible the the album has not release yet.
`band_id`:Type integer. Not null(\*2) since all albums need to be has at least one band. This will be reference between two table (bands and albums table).

\*1:Foreign key

Refference different tables. Eg.) bands table's id and albums table's band_id.
Error will happen if try to create a recode that doesn't have foreign key.
Eg.) Error will happen when try to create an album that doesn't have band_id already exist in bands table.
Error will happen if try to delete a recode that linking to the foreign key.
Eg.) Error will happen if try to delete a band that linking to an album. So if you want to delete band you need to delete the linked album first.

\*2: Not null

Not null column mast allways has defined. so that it will returns an error if try to add a recode does not have name.

\*3:Primary key

Unique key
