FROM node:13.8.0-alpine3.10

RUN apk add --progress npm

WORKDIR /app

COPY ./package*.json /app

RUN npm install

COPY . /app

#EXPOSE 8001