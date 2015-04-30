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

On firstrun:

    $ ./conman -c discourse_conman_firstrun.yml -j (cat discourse_conf.json | jq -c .)

Then:
    $ ./conman -c discourse_conman.yml -j (cat discourse_conf.json | jq -c .)

    $ xdg-open http://localhost:3000/
