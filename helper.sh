#!/bin/bash

# Do not use for local, use scripts in fetch-local
# This may change to fit devops needs (e.g kubectl)
# This will also not build on local docker network
build-inventory-db () {
    docker run -d --name inventory-database -p 5432:5432 \
    -v inventory_service_data:/var/lib/postgresql/data \
    inventory-postgres-image
}

# Do not use for local, use scripts in fetch-local
# This may change to fit devops needs (e.g. kubectl)
# This will also not build on local docker network
wipe-inventory-db () {
    docker run -d --name inventory-database -p 5432:5432 \
    -v inventory_service_data:/var/lib/postgresql/data \
    -e WIPE_VOLUME=true \
    inventory-postgres-image
}

"$@"
