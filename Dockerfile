FROM ruby:2.2

RUN bundle config --global frozen 1
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN bundle install

# install some dependencies
RUN apt-get update && apt-get install -y nodejs postgresql-client imagemagick libxml2 libpq-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
