FROM postgres:15.3 as postgres_build

ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_DB=inventory_service

# Not needed, yet
# COPY init.sql /docker-entrypoint-initdb.d/

EXPOSE 5432

VOLUME inventory_service_data:/var/lib/postgresql/data

COPY ../entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
