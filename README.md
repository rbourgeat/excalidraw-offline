# Self-Hosted Excalidraw (Fork from [Someone0nEarth/excalidraw-self-hosted](https://github.com/Someone0nEarth/excalidraw-self-hosted))

This is a **fork** of [Someone0nEarth/excalidraw-self-hosted](https://github.com/Someone0nEarth/excalidraw-self-hosted) with added functionality for easier export and loading of Docker images, as well as a few tweaks and improvements.

The goal of this project is to provide a fully self-hosted version of [Excalidraw](https://github.com/excalidraw/excalidraw) with collaboration support. It uses Docker Compose, Traefik for routing, MongoDB for storage, and Mongo Express for managing MongoDB.

The original version of excalidraw only supporting Firebase for the storage. For achieving a self-hosted storage, a modified version of excalidraw is used:

- <https://github.com/alswl/excalidraw>

In combination with a http-storage:

- <https://github.com/alswl/excalidraw-storage-backend>

## Prerequisites

- Docker

## Deploy

Clone this repository.

```bash
bash export.sh
```

Move the folder of the project where you want, then:

```bash
cp .env.example .env
bash load.sh
docker compose up -d
```
