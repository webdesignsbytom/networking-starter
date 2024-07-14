# Docker

## What is Docker?

Docker is a platform for developing and sharing and running applications. 
By creating a docker 'Container' users can share the code and the environment it runs in easily.

The container is a unit for distribution.

It is used for testings, sharing, and hosting.

## Architecture

Docker uses Client - Server architecture.
The client talks to the docker daemon which does all the heavy lifting  such as building, running and distributing. 
They commmunicate using REST API and UNIX sockets or network interface. 

![image](https://github.com/webdesignsbytom/networking-starter/assets/95193376/3554c556-c0db-44f5-8168-d62c459a8197)

## Commands

- `docker pull`
- `docker run`
- `docker push`
- `docker build -t fileName .`

The -d flag (short for --detach) runs the container in the background. This means that Docker starts your container and returns you to the terminal prompt. You can verify that a container is running by viewing it in Docker Dashboard under Containers, or by running docker ps in the terminal.

The -p flag (short for --publish) creates a port mapping between the host and the container. The -p flag takes a string value in the format of HOST:CONTAINER, where HOST is the address on the host, and CONTAINER is the port on the container. The command publishes the container's port 3000 to 127.0.0.1:3000 (localhost:3000) on the host. Without the port mapping, you wouldn't be able to access the application from the host.

ok

### The Docker daemon
The Docker daemon (dockerd) listens for Docker API requests and manages Docker objects such as images, containers, networks, and volumes. A daemon can also communicate with other daemons to manage Docker services.

### Docker Desktop
Docker Desktop is an easy-to-install application for your Mac, Windows or Linux environment that enables you to build and share containerized applications and microservices. Docker Desktop includes the Docker daemon (dockerd), the Docker client (docker), Docker Compose, Docker Content Trust, Kubernetes, and Credential Helper. For more information, see Docker Desktop.

### Docker registries
A Docker registry stores Docker images. Docker Hub is a public registry that anyone can use, and Docker looks for images on Docker Hub by default. You can even run your own private registry.
When you use the docker pull or docker run commands, Docker pulls the required images from your configured registry. When you use the docker push command, Docker pushes your image to your configured registry.

### Images
An image is a read-only template with instructions for creating a Docker container. Often, an image is based on another image, with some additional customization. For example, you may build an image which is based on the ubuntu image, but installs the Apache web server and your application, as well as the configuration details needed to make your application run.

### Containers
A container is a runnable instance of an image. You can create, start, stop, move, or delete a container using the Docker API or CLI. You can connect a container to one or more networks, attach storage to it, or even create a new image based on its current state.

By default, a container is relatively well isolated from other containers and its host machine. You can control how isolated a container's network, storage, or other underlying subsystems are from other containers or from the host machine.

A container is defined by its image as well as any configuration options you provide to it when you create or start it. When a container is removed, any changes to its state that aren't stored in persistent storage disappear.


## What is Docker

A way to manage software to run on any hardware.

Docker file: A blueprint for creating a Docker iamge
A dev can define the environment for the service to run on. For examples version of node js

Docker image: A template for run a Docker container
A file is saved as in immutable snapshot called an image.
They can be uploaded to the cloud for use anywhere.

Docker container: A running process i.e node application

## How to install dockers

### Windows

1. Download windows Docker app.

### Linux

## Commands

`docker ps` get a list of running containers
`-t` tag - give docker a name

## Create a docker project

Start with a simple project

```js
import express from 'express';

const app = express();

app.get('/', (req, res) => {
  res.status(200).json({ message: 'Docker is easy' });
});

app.listen(4000, () => {
  console.log('\nListening on port 4000 and there is no such thing as ghosts!');
})``;
```

1. In the root directory create `Dockerfile`
2. In the root directory create a `.dockerignore` file and add node_modules or similar items
3. Build a docker image with the build command and connect to your username and then add a path or `.` for current working directory.
   - `docker build -t techdesigntavistock/filename:verisonnumber .`
4. `docker run -p 8888:4000 c41020bcb2c6686b63a4db1d8d572d261aac21b6bad47d064c00f8cb8903bb70` expose a localhost port to the docker 
5. User `docker push` to push image to docker hub the cloud