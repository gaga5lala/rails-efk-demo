FROM ruby:2.3-slim

RUN \
  echo "[INSTALL] essential packages" && \
  apt-get update && \
  apt-get install -y build-essential \
                     curl \
                     apt-utils \
                     wget \
                     vim \
                     sudo \
                     git \
                     git-core \
                     cron && \
  echo "[INSTALL] mysql" && \
  apt-get install -y libmysqlclient-dev \
                      libcurl4-openssl-dev \
                      mysql-client && \
  echo "[INSTALL] nodejs" && \
  curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
  apt-get install -y nodejs
