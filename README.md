# Kitodo Dev (Docker)

## About
This repository contains a `docker-compose` configuration and `devcontainer.json` to develop Kitodo Production inside a Docker container with Visual Studio Code.

## Prerequisites

1. You need to have Docker and Docker Compose installed on your system.
2. Make sure that Docker has access to enough RAM to run all the services (>= 4GB).

## Usage instructions
1. Install the [Remote Containers Extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) for Visual Studio Code.
2. Clone the repository and open it with VS Code.
3. Click the blue icon in the lower left corner and select `Reopen in Container`.

The `docker-compose` configuration will build and deploy Kitodo on startup. Unfortunately, VS Code does not show this progress in the terminal. Wait until the address `localhost/kitodo` is available before starting your work. This can take up to 10 minutes.

## Deploying Kitodo manually
When attached to the container, run the following command from inside the `kitodo-production` directory:

```bash
bash ../deploy.sh
```

This will redeploy Kitodo to the tomcat server. Kitodo will be available on your `localhost` at `localhost/kitodo`.

## Note

The Kitodo Production files are only available inside the container, this means when the container gets deleted, your local changes will be gone.
So make sure to commit your changes regularly.
If the container is only stopped, your changes will be kept as long as the container is available.