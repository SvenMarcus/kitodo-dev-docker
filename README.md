# Kitodo Dev (Docker)

## About
This repository contains a `docker-compose` configuration and `devcontainer.json` to develop Kitodo Production inside a Docker container.

## Prerequisites

1. You need to have Docker and Docker Compose installed on your system.
2. Make sure that Docker has access to enough RAM to run all the services (>= 4GB).


## Usage instructions (terminal)

Use these instructions if you don't want to develop with Visual Studio Code.
1. If you haven't already clone the [Kitodo Production repository](https://github.com/kitodo/kitodo-production) to your local machine.
2. Clone this repository to your local machine.
3. Inside this repository's main folder create a `.env` file with the following content:

    ```bash
    KITODO_PATH=path/to/kitodo-production
    ```

4. Open a terminal inside this repository's main folder and run

    ```bash
    docker-compose up
    ```

    Your Kitodo Production repository will be mounted to `/root/kitodo-production` inside the container. It will be built immediately and deployed to the tomcat webserver.
    You can access it at `localhost/kitodo`.

5. Open a terminal inside the Kitodo container with:

    ```bash
    docker exec -it -w /root/kitodo-production CONTAINERNAME /bin/bash
    ```

6. Now you can build Kitodo from inside the container. 

## Usage instructions (Visual Studio Code)
1. If you haven't already clone the [Kitodo Production repository](https://github.com/kitodo/kitodo-production) to your local machine.
2. Clone this repository to your local machine.
3. Inside this repository's main folder create a `.env` file with the following content:

    ```bash
    KITODO_PATH=path/to/kitodo-production
    ```

4. Install the [Remote Containers Extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) for Visual Studio Code.
5. Open this repository with VS Code.
6. Click the blue icon in the lower left corner and select `Reopen in Container`.

The `docker-compose` configuration will build and deploy Kitodo on startup. Unfortunately, VS Code does not show this progress in the terminal. Wait until the address `localhost/kitodo` is available before starting your work. This can take up to 10 minutes.

## Deploying Kitodo manually
When attached to the container, run the following command from inside the `kitodo-production` directory:

```bash
bash ../deploy.sh
```

This will redeploy Kitodo to the tomcat server. Kitodo will be available on your `localhost` at `localhost/kitodo`.
