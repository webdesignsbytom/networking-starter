# version of ubuntu set up with node
# FROM ubuntu
FROM node:22

## Like cd to a main directory
## All instrctions will come from this directory
WORKDIR /app

## Cashe and store the build info
COPY package*.json ./

## Install info
RUN npm install

## COPY source code
COPY . .

## Environment variables
ENV PORT=4000

EXPOSE 4000

## Start commands in 'exec form' 
CMD [ "npm", "start" ]