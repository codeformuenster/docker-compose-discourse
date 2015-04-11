FROM rails

WORKDIR /var/www/discourse
RUN cd /var/www \
  && git clone https://github.com/discourse/discourse.git \
  && cd discourse \
  && bundle install \
    --deployment \
    --without test \
    --without development

RUN apt-get update && apt-get -y install build-essential git curl wget \
  libxslt-dev libcurl4-openssl-dev \
  libssl-dev libyaml-dev libtool \
  libxml2-dev gawk \
  postgresql-9.4 postgresql-client-9.4 \
  postgresql-contrib-9.4 libpq-dev libreadline-dev \
  nginx  sudo cron anacron \
  psmisc rsyslog vim whois
