FROM alpine:latest

WORKDIR /usr/src/app

ARG NODE_ENV
ENV NODE_ENV $NODE_ENV
COPY package.json /usr/src/app/
RUN npm install
RUN apk add --no-cache \
  bash \
  curl \
  grep \
  jq

COPY . /usr/src/app
COPY commit.sh /usr/bin/
##CMD ["commit.sh"]
EXPOSE 8080

