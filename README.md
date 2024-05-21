# SQL

This SLQ repo is sumally of query.

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
