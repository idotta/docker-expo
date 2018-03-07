FROM node:9-alpine

VOLUME ["/data"]
WORKDIR /data

RUN apk -U update && apk -U add \
    git \
    yarn \
    ca-certificates \
    && npm i -g react-native-cli \
    && npm i -g exp \
    && rm -rf /var/cache/apk/*