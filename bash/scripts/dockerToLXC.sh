#!/bin/bash

# Script to convert a Docker container to a Proxmox LXC container
# Inspired by: https://github.com/onemarcfifty/cheat-sheets/blob/main/Proxmox/Containers.md

# Usage:
# ./convert_docker_to_lxc.sh <docker_container_name> <template_name>

# Variables
DOCKER_CONTAINER_NAME=$1
TEMPLATE_NAME=$2

# Check if the required arguments are provided
if [ -z "$DOCKER_CONTAINER_NAME" ] || [ -z "$TEMPLATE_NAME" ]; then
    echo "Usage: $0 <docker_container_name> <template_name>"
    exit 1
fi

# Export the Docker container and compress it
echo "Exporting Docker container '$DOCKER_CONTAINER_NAME'..."
docker export $DOCKER_CONTAINER_NAME | gzip > ${TEMPLATE_NAME}.tar.gz

# Check if the export was successful
if [ $? -ne 0 ]; then
    echo "Error: Failed to export Docker container '$DOCKER_CONTAINER_NAME'."
    exit 1
fi

# Inform the user about the next steps
echo "Container exported successfully as ${TEMPLATE_NAME}.tar.gz"
echo "Next steps:"
echo "1. Copy the template to the Proxmox template directory (usually /var/lib/vz/template/cache/)."
echo "2. Create an LXC container from the template in the Proxmox web UI or using the pct command."

# To be addressed:
# - Volumes: Ensure that the volume mounts in Docker are appropriately handled in the LXC container.
# - Network: Configure the network settings for the LXC container to match the Docker container.
# - Entrypoint: Set the appropriate entrypoint for the LXC container if needed.

# Example commands for the next steps:
# scp ${TEMPLATE_NAME}.tar.gz root@proxmox_host:/var/lib/vz/template/cache/
# pct create <vmid> /var/lib/vz/template/cache/${TEMPLATE_NAME}.tar.gz --storage <storage> --rootfs <rootfs> --hostname <hostname>

echo "Refer to the Proxmox documentation for more details on creating and configuring LXC containers."
