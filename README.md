/!\ This is no longer maintained, if you want to use a setup that is used in production, please head to [indiehosters/discourse](https://github.com/indiehosters/discourse) /!\

# docker-compose-discourse

Proof of concept, there will be errors, please test! :)

    $ sudo docker-compose build

    $ sudo docker-compose run discourse bash -c "sleep 3 && rake db:migrate assets:precompile"

Provide some configuration via environment variables in `docker-compose.yml`:

    DISCOURSE_HOSTNAME=
    DISCOURSE_SMTP_ADDRESS=
    DISCOURSE_SMTP_PORT=587
    DISCOURSE_SMTP_USER_NAME=
    DISCOURSE_SMTP_PASSWORD=
    DISCOURSE_DEVELOPER_EMAILS=

Start Discourse:

    $ sudo docker-compose up

    $ xdg-open http://localhost:3000/
