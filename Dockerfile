FROM node:9-alpine

VOLUME ["/data"]
WORKDIR /data

RUN apk -U update && apk -U add \
    git \
    yarn \
    bash \
    ca-certificates \
    && rm -rf /var/cache/apk/*

RUN npm i -g react-native-cli \
    #&& npm i -g exp
    && yarn global add exp