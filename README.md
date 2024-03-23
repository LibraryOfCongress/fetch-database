# Database

## About

This repository contains images and basic scripts for managing containerized PostgresSQL deployments.  

### Inventory Service Database
The application schema and data-seeding for local, dev, or test environments ARE NOT managed here. Those are managed by the Inventory Service itself. If a data volume is wiped (supported here), the Inventory Service will rebuild the schema when it is built and deployed, provided the database is running.

### Keycloak Database
Information coming soon...

## Build

### Inventory Service Local Development
The `fetch-local` build makes use of the images in this repository via a compose file. Simply running the build from `fetch-local` will be sufficient for day to day use.

Rebuilding the database container and refreshing (wiping) the database can be achieved with the helper scripts also in `fetch-local`, or from Inventory or Vue apps which also use scripts in `fetch-local`. Using the scripts in Inventory or Vue apps is the best choice, as those will also take care of rebuilding the schema.

<!-- * `./heper.sh build-inventory-db` - Will rebuild the database container.
* `./helper.sh wipe-inventory-db` - Will rebuild the db container and wipe the data volume. -->

### Inventory Service Deployed Builds
Information coming soon...

### Keycloak Deployed Builds
Information coming soon...

## Volume Disaster Recovery
Information coming soon...