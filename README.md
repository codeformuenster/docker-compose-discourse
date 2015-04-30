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

Sidenote: Possible [editor](http://jeremydorn.com/json-editor/?schema=N4IgJAzgxgFgpgWwIYgFwhgF0wB1QenwCsIB7AOwFpp5kA6UgJwHN8ATRpAM00oAYALPhqIkAYhAAaEAEs2aDNjyESFEfXJxMUkJgCeOOAtIAjInCjbpORqUONMMuBDSg2M6KQCujCEdSgcgpYuATEZOTqSHSamOweUN6+RtL6hsZmFlYgNnZwDk4uASB+UIxarrLy6CHK4WqwojFa8Z4+fsIW5dlp/iWYjDLkzCAAvtIwpBCY5EgI/oHViqEqEVHNce5tyfiT07PzOr0K04PDY9IQCLiVQTVKYaqRjRotW4ntcMLXOEcGfaZzJYdLl7I5nJUkGwOM4iotgg9Vg1aNFYq0Pjsrrh8FCYRAXKl/icBkMRuMckxtMU7ss6k91mj3kkOlicPgcJS/ul0KdSRcQF4/Ixbktao81i9UW8Esyvqz8IL8ly+rzzuScEh8QB3JjVeH3Fb1Z4ojbo2XfbEa7W65XEs5k0bkthwABucAANnlGAB9UQyd1wqoIw30yWmpmfdiuj1e33If0E3REnkktXSNhITBIEyahZBg10iUmxkyyMZrM5vy29CArIg2xgwqVK0QHWMPX52ni5FNEvbDrl7O59ma1s2wnc/r2saO8nlACOXhk5WqAG0Sl0KhMpjM5ikSj8dM63Z77HGkAmj5mh1WALqO6QLpcrtDriPJED3oAA&value=N4IgJglgzgxg9gVwE5QKYgFyjTJqAumIIANCABZxT4B2AhgLbobFlQP4AOmodYYeKFCKkQnOEkItRCNEhFlOdIQHcJYEQF8yYVADdUAGzidUSAPqoGdCIeHSddfHQBGy5qCWr1WzZqAAAA==&theme=bootstrap2&iconlib=fontawesome4&object_layout=normal&show_errors=interaction) to this config attributes.


On firstrun:

    $ ./conman -c discourse_conman_firstrun.yml -j (cat discourse_conf.json | jq -c .)

Then:

    $ ./conman -c discourse_conman.yml -j (cat discourse_conf.json | jq -c .)

    $ xdg-open http://localhost:3000/
