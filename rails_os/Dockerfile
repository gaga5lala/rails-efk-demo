FROM ruby:2.3-slim

RUN \
  echo "[INSTALL] essential packages" && \
  apt-get update && \
  apt-get install -y curl \
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
                      mysql-client
