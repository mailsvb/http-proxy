FROM docker.io/library/node:16-alpine

ENV NODE_ENV=production
ENV HOME=/data
ENV TZ=Europe/Berlin
ENV NODE_PATH=/usr/local/lib/node_modules
RUN apk update && apk upgrade && mkdir -p /data && npm install -g proxy-chain

ADD main.js /data/main.js
WORKDIR /data

CMD node main.js
