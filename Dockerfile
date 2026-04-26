#Dockerfile behaves like a build instructions for the container and it is used to create the image of the app that we want to run in the container

#alpine is the light weight images
FROM node:22-alpine

#creating working dir
WORKDIR /app

#copying all fills from package.json to current working directory
COPY package*.json ./  

RUN npm install

COPY . .

EXPOSE 8080 
#this port is used for the app that is inside the running container and must be same as .env port 
CMD ["node","index.js"]