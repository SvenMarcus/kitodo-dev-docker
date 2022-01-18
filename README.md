# Kitodo Dev (Docker)

## About
This repository contains the `Dockerfile` and `devcontainer.json` to develop Kitodo Production inside a Docker container with Visual Studio Code.

## Usage instructions
1. Install the [Remote Containers Extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) for Visual Studio Code.
2. Clone the repository and open it with VS Code.
3. Click the blue icon in the lower left corner and select `Reopen in Container`.

## Note

The Kitodo Production files are only available inside the container, this means when the container gets deleted, your local changes will be gone.
So make sure to commit your changes regularly.
If the container is only stopped, your changes will be kept as long as the container is available.