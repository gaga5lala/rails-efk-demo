FROM gaga/rails-efk/rails-os:latest

# ARG rails_env=$rails_env
ARG rails_env=production
ARG deploy_to="/var/www/demo"

# setup SELinux
COPY files/etc/selinux/config /etc/selinux/config

COPY run.sh /tmp/run.sh

RUN mkdir -p $deploy_to
COPY demo $deploy_to

WORKDIR $deploy_to

RUN /bin/bash -l -c "bundle install -j4 --path --without development test"
RUN /bin/bash -l -c "bundle exec rake assets:precompile RAILS_ENV=$rails_env"

CMD bash /tmp/run.sh
