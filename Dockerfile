FROM node:7.9

WORKDIR /usr/src/app

ARG NODE_ENV
ENV NODE_ENV $NODE_ENV
COPY package.json /usr/src/app/
RUN npm install
COPY . /usr/src/app
RUN ["chmod", "+x", "/usr/src/app/commit.sh"]
#CMD [ "npm", "run", "start-server" ]
#CICD
# replace this with your application's default port
EXPOSE 8080

