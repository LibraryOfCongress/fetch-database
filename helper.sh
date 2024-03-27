#!/bin/bash

# Do not use. Use scripts in fetch-local
# This may change to fit devops needs (e.g kubectl)
# This will also not build on local docker network
build-inventory-db () {
    docker stop inventory-database;

    docker container rm -f inventory-database;

    (cd inventory && docker build --file images/inventory.db.local.Containerfile --tag inventory-postgres-image .);

    docker run -d --name inventory-database -p 5432:5432 \
    -v inventory_service_data:/var/lib/postgresql/data \
    inventory-postgres-image
}

# Do not use. Use scripts in fetch-local
# This may change to fit devops needs (e.g. kubectl)
# This will also not build on local docker network
wipe-inventory-db () {
    docker stop inventory-database;

    # docker container rm -f inventory-database;
    # removes both container and volume
    docker rm -v [inventory-database];

    (cd inventory && docker build --file images/inventory.db.local.Containerfile --tag inventory-postgres-image .);

    docker run -d --name inventory-database -p 5432:5432 \
    -v inventory_service_data:/var/lib/postgresql/data \
    inventory-postgres-image
}

"$@"
