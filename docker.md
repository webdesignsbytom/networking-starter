# Docker

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
4. `docker run -p 8888:4000 -d c41020bcb2c6686b63a4db1d8d572d261aac21b6bad47d064c00f8cb8903bb70` expose a localhost port to the docker `-d` to prevent log from running  
5. User `docker push` to push image to docker hub the cloud