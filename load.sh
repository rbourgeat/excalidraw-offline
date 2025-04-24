#!/bin/bash

ARCHIVE_NAME="excalidraw-offline.tar.gz"
TMP_DIR="excalidraw-offline-tmp"
IMAGE_TAR="docker-images.tar"

echo "Extracting archive..."
mkdir -p "$TMP_DIR"
tar -xzf "$ARCHIVE_NAME" -C "$TMP_DIR"

echo "Loading Docker images..."
docker load -i "$TMP_DIR/$IMAGE_TAR"

rm -rf "$TMP_DIR"

echo "Images loaded. You're ready to run 'docker compose up -d'"
