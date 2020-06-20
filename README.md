# Handy local Cassandra environment using Docker Compose

## Dependencies

* Docker
* Docker Compose ver. 3

## How to use

1. Modify config scripts (if you want)

```bash
vim initdb/schema.sql # DB schema init script

vim conf/cassandra/cassandra.yaml # Cassandra config script
```


2. Boot up the container

```bash
docker-compose up -d --build
```

Wait around 90 sec so that Cassnadra starts up and the initial data is inserted.

3. Run CQL Shell

```bash
CONTAINER_ID=$(docker ps --filter "name=cassandra-docker_cassandra" --format "{{.ID}}") # Cassandra Container ID which is running

docker exec -it ${CONTAINER_ID} cqlsh

# If you already set up CQL shell in your local, you could do
cqlsh localhost 9042
```

4. Run nodetool

```bash
docker exec -it ${CONTAINER_ID} nodetool help

# If you already set up CQL shell in your local, you could do
nodetool help
```
