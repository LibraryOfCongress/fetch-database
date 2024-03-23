#!/bin/bash
set -e

# Perform any pre-initialization tasks here
# Example: echo "Performing pre-initialization tasks..."

# Check if the WIPE_VOLUME environment variable is set
if [ "${WIPE_VOLUME}" = "true" ]; then
  echo "Wiping PostgreSQL volume..."
  rm -rf /var/lib/postgresql/data/*
fi

# Call the original PostgreSQL entrypoint script with any arguments
exec /usr/local/bin/docker-entrypoint.sh "$@"
