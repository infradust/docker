FROM node:7.9
RUN apt-get update \
    && apt-get upgrade -y \
    && npm install -g yo \
    && mkdir -p ${APP_DIR:-/app} \
    && cd ${APP_DIR:-/app} \
WORKDIR ${APP_DIR:-/app} \

