# Running with docker-compose

## Prerequisites
- Docker
- docker-compose

# Steps
- clone this repository
- `docker-compose build discourse`
- `docker-compose run discourse rake db:create db:migrate db:seed_fu assets:precompile`
- `docker-compose up` (with `-d` for daemonizing)
