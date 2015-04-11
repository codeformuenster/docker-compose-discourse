FROM rails

WORKDIR /usr/src/app

RUN git clone https://github.com/discourse/discourse.git . \
  && bundle install --deployment --without test --without development

RUN apt-get update && apt-get install -y --no-install-recommends imagemagick libxml2 \
  && rm -rf /var/lib/apt/lists/*

EXPOSE 3000
CMD ["rails", "server"]

# docker-compose run discourse rake db:migrate assets:precompile
