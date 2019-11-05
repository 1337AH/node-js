FROM node:alpine

LABEL maintainer="ahoxha.01@gmail.com"

WORKDIR /usr/src/app

ARG NODE_ENV
ENV NODE_ENV $NODE_ENV
COPY package.json /usr/src/app/
RUN npm install
#RUN curl -sSL https://sdk.cloud.google.com | bash
COPY . /usr/src/app
COPY commit.sh /usr/bin/
##CMD ["commit.sh"]
EXPOSE 8080

CMD [ "npm", "run", "start"]
