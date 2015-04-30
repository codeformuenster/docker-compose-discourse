# docker-compose-discourse

Proof of concept, there will be errors, please test! :)

Check out [conman](https://github.com/BlueDragonX/conman)! And maybe [jq](http://stedolan.github.io/jq/).

Edit some configuration in `discourse_conf.json`:

```json
{
  "discourse": {
    "secret": "5up3r53cr37d15c0ur5353cr3770k3n",
    "hostname": "local.discourse",
    "smtp": {
      "address": "smtp.mandrillapp.com",
      "port": "587",
      "user": "smtp_user",
      "password": "apitoken"
    },
    "developer_emails": "mail@local.discourse",
    "database": {
      "password": "d15c0ur53"
    }
  }
}
```

Sidenote: Possible [editor](http://jeremydorn.com/json-editor/?schema=N4IgJAzgxgFgpgWwIYgFwhgF0wB1QenwCsIB7AOwFpp5kA6UgJwHN8ATRpAM00oAYALPhqIkAYhAAaEAEs2aDNjyESFEfXJxMUkJgCeOOAtIAjInCjbpORqUONMMuBDSg2M6KQCujCEdSgcgpYuATEZOTqSHSamOweUN6+RtL6hsZmFlYgNnZwDk4uASB+UIxarrLy6CHK4WqwojFa8Z4+fsIW5dlp/iWYjDLkzDpszmUyOI4UCgDKMN4ANmwABCZwK4sUzCtI5Kul3QCEIAC+0gsQmORICP6B1YqhKhFRzXHubcn4l9e3KboDH0roNhmdpBAELhKkEakowqpIo0NC1Pol2nBhFCcDpehlzJYdLl7I5nJUkGwOM4ig9gvCXg1aNFYq10d9Ibh8BSqRAXKkgQoQUMRtIxtBBlMZDN0AAJUhXG53FZMFaTSjc8q85VcFYcnDUfIAN3ydFGcC4SC8i206GQ+0Gi0W1FId0wMGF4JyTBttLhz3qSKZ71ZSQ6evwOG9uIF6HIXgQ60YZvFk2m5AUAAVvdrddiDYxDTIoHBTecQF4/EnirCnnVEW8WWjQ5jwxX8tH0ughWCyzgkLyAO5Maq+2sI17I5mohLNrGcvuD4cd4EDD2ndeiuDGrb2AD6ohkixpVTp/vrk+DTYx7C3cB3+X3yEPfMBnf6oJFIDFE0l0pAABEZwxFYB0PRZdTgfZVXIGRHCQcC4EoJ9wMwUgVjdDxdkpTUIFLUUkEwJATH7e4Tz9OsJyDRsgO+NgCKIkjl3xLIiVsElCkqBcICHRgRzIscGUDJpqK+Do6MI4iOi4nj5H5N9u0/b8JTTBQAGEFnlDYyCVaThxWLgVTdDZxIYvxS3XMtygARy8GRymqABtEougqC55T+O4dD1M1tzyRhHyQZ9RnoySjAAXQ3EBrNs+y0Ccq9khACKgAAA==&value=N4IgJglgzgxg9gVwE5QKYgFyjTJqAumIIANCABZxT4B2AhgLbobFlQP4AOmodYYeKFCIM6NARAA2kgLRQ4TfOQg0A5qRCc4SQhgAMZBGiRENnOkIDu2sKYC+ZMKgBuqSXE6okAfVSipwiwaYHT4dABGFsyg5lY29nZ2QAA==&theme=bootstrap2&iconlib=fontawesome4&object_layout=normal&show_errors=interaction) to this config attributes.


On firstrun:

    $ ./conman -c discourse_conman_firstrun.yml -j (cat discourse_conf.json | jq -c .)

Then:

    $ ./conman -c discourse_conman.yml -j (cat discourse_conf.json | jq -c .)

    $ xdg-open http://localhost:3000/
