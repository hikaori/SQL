# SQL

This SLQ repo is sumally of query.

# Technology

- Postgres : DB
- Docker : Build DB with docker.
- DBever : Run query.

# Set up

1. create DB.

   `docker run --name my_postgres -p 5432:5432 -e POSTGRES_PASSWORD=mysecretpassword -d postgres`

   docker run --name {DockerContainerName} -p {portNum}:{portNum} -e POSTGRES_PASSWORD={DB_Passowrd} -d {DockerImageName}
