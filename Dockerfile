FROM gradle:jdk8

USER root

RUN curl -sL https://deb.nodesource.com/setup_13.x | bash - \
  && apt-get install -y nodejs \
  && rm -rf /var/lib/apt/lists/*

RUN npm install -g gulp bower

USER gradle
