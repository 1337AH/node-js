FROM node:7.9

WORKDIR /usr/src/app

ARG NODE_ENV
ENV NODE_ENV $NODE_ENV
COPY package.json /usr/src/app/
RUN npm install
RUN ["chmod", "777" , "usr/src/app/commit.sh"]
COPY . /usr/src/app
EXPOSE 8080

