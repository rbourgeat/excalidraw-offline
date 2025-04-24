#!/bin/bash

COMPOSE_FILE="compose.yml"
ARCHIVE_NAME="excalidraw-offline.tar.gz"
TMP_DIR="excalidraw-offline-tmp"
IMAGE_TAR="docker-images.tar"

mkdir -p "$TMP_DIR"

IMAGES=$(grep 'image:' "$COMPOSE_FILE" | awk '{print $2}')

echo "Saving Docker images..."
docker save $IMAGES -o "$TMP_DIR/$IMAGE_TAR"

echo "Creating archive: $ARCHIVE_NAME"
tar -czf "$ARCHIVE_NAME" -C "$TMP_DIR" .

rm -rf "$TMP_DIR"

echo "Offline bundle created: $ARCHIVE_NAME"
