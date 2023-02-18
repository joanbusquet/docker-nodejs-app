# What is this repo?

This repo is created to install a dummy nodejs application with express and nodemon.
The application runs inside a Docker container and you can debug the application from the vscode debugger.

# Docker instructions

1. To build and run docker container:

```
docker-compose -f './docker-compose.yml' up -d --build
```

2. To view nodemon logs inside the container:

```
docker logs -f nodejs-app
```

2. To stop and remove container:

```
docker-compose -f './docker-compose.yml' down
```

# Debug appplication running inside the Docker container on vscode debugger

1. Make sure that you have the Docker vscode extension installed (https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker).

2. You need to create a launch.json file with the following code:

```
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "Docker: Attach to Node",
      "type": "node",
      "request": "attach",
      "restart": true,
      "port": 9229,
      "address": "localhost",
      "localRoot": "${workspaceFolder}",
      "remoteRoot": "/usr/src/app",
      "protocol": "inspector"
    }
  ]
}
```
