FROM chickenzord/alpine-gradle

MAINTAINER Timoteo Ponce <timo.slack@gmail.com>

RUN apk add --update --no-progress nodejs unrar bash git mercurial && \ 
  npm install -g bower gulp && \
  rm /var/cache/apk/*

WORKDIR /app
ENTRYPOINT gradle
